#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define INITIAL_PC_COUNT 1
#define MAX_PC_COUNT 256
#define THREAD 0
#define SUCCESS 0
#define FAIL 1

#define NO_DEBUG_INFO -1
// The reason to pick these negative numbers is that 
// the libstacktrace already has error codes starting from -1
#define NO_ERROR -2
#define EXCEEDS_MAX_PC_COUNT -3
#define OUT_OF_MEMORY -4

enum DemangleResult {
    PUBLIC_BALLERINA_NAME,
    NON_PUBLIC_BALLERINA_NAME,
    NON_BALLERINA_NAME,
    BAD_BALLERINA_NAME
};

struct backtrace_state *state = NULL;

typedef struct {
    int code;
    char *message;
    FILE *fp;
} BacktraceError;

// The lineNumber of the first backtrace entry is passed
// via _bal_panic. This lineNumber should be passed to the
// callback function
typedef struct {
    BacktraceError error;
    int64_t lineNumber;
} BacktraceStartLine;

typedef struct {
    // This must be first so we can use same error callback
    BacktraceError error;
    uint32_t nPCs;
    uint32_t szPCs;
    PC *pcs;
} SimpleBacktrace;

static void storeBacktraceErrorCB(void *data, const char *msg, int errnum);
static int printBacktraceLineCB(void *data, PC pc, const char *filename, int lineno, const char *function);
static void printMissingSymbolsCB(void *data, uintptr_t pc, const char *symname, uintptr_t symval, uintptr_t symsize);
static int storePCCB(void *data, PC pc);
static void printBacktraceLine(const char *filename, int64_t lineNumber, const char *function, FILE *fp);
static void getSimpleBacktrace(SimpleBacktrace *p);
static char *saveMessage(const char *msg);
static void processPCs(GC PC* pcs, uint32_t nPCs, uint32_t start, int64_t lineNumber, BacktraceError *error);
static void processInitialPC(PC pc, int64_t lineNumber, BacktraceStartLine *backtraceStartLine);
static enum DemangleResult demangle(const char *mangledName, const char **localName, FILE *fp);
static bool demangleModules(const char **mangledModules, FILE *fp);
static bool demangleCountedName(const char **pp, const char **name);

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    SimpleBacktrace simpleBacktrace;
    getSimpleBacktrace(&simpleBacktrace);
    uint32_t nPCs = simpleBacktrace.nPCs;
    size_t errorSize = sizeof(struct Error) + sizeof(PC)*nPCs;
    if (simpleBacktrace.error.message != NULL) {
        // store the error message after the PCs
        errorSize += strlen(simpleBacktrace.error.message) + 1;
    }
    ErrorPtr ep = _bal_alloc(errorSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->nPCs = nPCs;
    PC *pcs = simpleBacktrace.pcs;
    if (pcs != NULL) {
        memcpy(ep->pcs, pcs, sizeof(PC) * nPCs);
        free(pcs);
    }
    ep->backtraceErrorCode = simpleBacktrace.error.code;
    char *errorMessage = simpleBacktrace.error.message;
    if (errorMessage != NULL) {
        // we allocated extra space for the string above
        char *str = (char *)(ep->pcs + nPCs);
        strcpy(str, errorMessage);
        ep->backtraceErrorMessage = str;
        free(errorMessage);
    }
    else {
        ep->backtraceErrorMessage = NULL;
    }
    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

// p is uninitialized on entry and will be fully initialized on return
static void getSimpleBacktrace(SimpleBacktrace *p) {
    p->error.message = NULL;
    p->nPCs = 0;
    p->pcs = malloc(sizeof(PC) * INITIAL_PC_COUNT);
    if (p->pcs == NULL) {
        p->szPCs = 0;
        p->error.code = OUT_OF_MEMORY;
        return;
    }
    p->szPCs = INITIAL_PC_COUNT;
    p->error.code = NO_ERROR;
    if (state == NULL) {
        state = backtrace_create_state(NULL, THREAD, storeBacktraceErrorCB, p);
        if (state == NULL) {
            return;
        }
    }
    backtrace_simple(state, 0, storePCCB, storeBacktraceErrorCB, p);
}

// Implementation of backtrace_simple_callback
static int storePCCB(void *data, PC pc) {
    SimpleBacktrace *simpleBacktrace = data;
    uint32_t nPCs = simpleBacktrace->nPCs;
    uint32_t szPCs = simpleBacktrace->szPCs;
    if (nPCs == szPCs) {
        if (szPCs == MAX_PC_COUNT) {
            simpleBacktrace->error.code = EXCEEDS_MAX_PC_COUNT;
            return FAIL;
        }
        szPCs *= 2;
        void *p = realloc(simpleBacktrace->pcs, sizeof(PC) * szPCs);
        if (p == NULL) {
            simpleBacktrace->error.code = OUT_OF_MEMORY;
            return FAIL;
        }
        simpleBacktrace->szPCs = szPCs;
        simpleBacktrace->pcs = p;
    }
    simpleBacktrace->pcs[nPCs] = pc;
    simpleBacktrace->nPCs = nPCs + 1;
    return SUCCESS;
}

void _bal_error_backtrace_print(ErrorPtr ep, uint32_t start, FILE *fp) {
    uint32_t nPCs = ep->nPCs;
    BacktraceError err = { ep->backtraceErrorCode, ep->backtraceErrorMessage, fp };
    if (start < nPCs) {
        processPCs(ep->pcs, nPCs, start, ep->lineNumber, &err);
    }

    if (err.code == NO_ERROR) {
        return;
    }
    if (err.code == EXCEEDS_MAX_PC_COUNT) {
        fputs("...\n", fp);       
    }
    else if (err.code == OUT_OF_MEMORY) {
        fputs("out of memory to store backtrace\n", fp);
    }
    else {
        fputs("libbacktrace", fp);
        if (err.message != NULL) {
            fprintf(fp, ": %s", err.message);
            if (err.message != ep->backtraceErrorMessage) {
                free(err.message);
            }
        }
        if (err.code > 0) {
            fprintf (fp, ": %s", strerror(err.code));
        }
        fputc('\n', fp);
    }
    fflush(fp);
}

static void processPCs(GC PC* pcs, uint32_t nPCs, uint32_t start, int64_t lineNumber, BacktraceError *error) {
    // Handle the starting pc seperately
    BacktraceStartLine backtraceStartLine = { { error->code, error->message, error->fp }, lineNumber };
    processInitialPC(pcs[start], lineNumber, &backtraceStartLine);
    backtraceStartLine.lineNumber = 0;
    if (backtraceStartLine.error.code == NO_DEBUG_INFO) {
        for (uint32_t i = start + 1; i < nPCs; i++) {
            // We do not need to pass error_callback because, already we have an error.
            backtrace_syminfo(state, pcs[i], printMissingSymbolsCB, NULL, &backtraceStartLine);
        }
    }
    else {
        for (uint32_t i = start + 1; i < nPCs; i++) {
            backtrace_pcinfo(state, pcs[i], printBacktraceLineCB, storeBacktraceErrorCB, &backtraceStartLine);
        }
    }
    error->code = backtraceStartLine.error.code;
    error->message = backtraceStartLine.error.message;
}

static void processInitialPC(PC pc, int64_t lineNumber, BacktraceStartLine *backtraceStartLine) {
    backtrace_pcinfo(state, pc, printBacktraceLineCB, storeBacktraceErrorCB, backtraceStartLine);
    if (backtraceStartLine->error.code == NO_DEBUG_INFO) {
        // We do not need to pass error_callback because, already we have an error
        backtrace_syminfo(state, pc, printMissingSymbolsCB, NULL, backtraceStartLine);
    }
}

// Implementation of backtrace_full_callback
static int printBacktraceLineCB(void *data, PC pc, const char *filename, int lineno, const char *function) {
    BacktraceStartLine *backtraceStartLine = data;
    if (backtraceStartLine->lineNumber != 0) {
        lineno = backtraceStartLine->lineNumber;
    }
    printBacktraceLine(filename, lineno, function, backtraceStartLine->error.fp);
    return SUCCESS;
}

// Implementation of backtrace_syminfo_callback
static void printMissingSymbolsCB(void *data, uintptr_t pc, const char *symname, uintptr_t symval, uintptr_t symsize) {
    BacktraceStartLine *backtraceStartLine = data;
    printBacktraceLine(NULL, backtraceStartLine->lineNumber, symname, backtraceStartLine->error.fp);
}

static void printBacktraceLine(const char *filename, int64_t lineNumber, const char *function, FILE *fp) {
    // API docs say any of filename, lineno and function may be 0 meaning unavailable
    const char *sep = "    ";
    if (function != NULL) {
        fputs(sep, fp);
        _bal_print_mangled_name(function, fp);
        sep = " ";
    }
    if (filename != NULL) {
        fprintf(fp, "%s%s", sep, filename);
        sep = ":";
    }
    if (lineNumber != 0) {
        fprintf(fp, "%s%" PRId64 "\n", sep, lineNumber);
    } 
    else if (function != NULL || filename != NULL) {
        putc('\n', fp);
    }
    fflush(fp);
}

// Implementation of backtrace_error_callback
static void storeBacktraceErrorCB(void *data, const char *msg, int errnum) {
    BacktraceError *err = data;
    // the error that is created first is tracked
    if (err->code != NO_ERROR) {
        return;
    }
    err->code = errnum;
    err->message = saveMessage(msg);
}

static char *saveMessage(const char *msg) {
    char *str = malloc(strlen(msg) + 1);
    if (str == NULL) {
        return NULL;
    }
    strcpy(str, msg);
    return str;
}

TaggedPtr BAL_LANG_ERROR_NAME(message)(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}

void _bal_print_mangled_name(const char *mangledName, FILE *fp) {
    const char *localName;
    enum DemangleResult res = demangle(mangledName, &localName, NULL);

    if (res == NON_PUBLIC_BALLERINA_NAME) {
        fprintf(fp, "%s", localName);
    }
    else if (res == PUBLIC_BALLERINA_NAME) {
        fprintf(fp, "%s (", localName);
        demangle(mangledName, &localName, fp);
        fputs(")", fp);
    }
    else if (res == NON_BALLERINA_NAME || res == BAD_BALLERINA_NAME) {
        fprintf(fp, "%s", mangledName);
    }
}

static enum DemangleResult demangle(const char *mangledName, const char **localName, FILE *fp) {
    if (mangledName[0] != '_' || mangledName[1] != 'B') {
        return NON_BALLERINA_NAME;
    }
    mangledName += 2;
    if (mangledName[0] == '_') {
        *localName = mangledName + 1;
        return NON_PUBLIC_BALLERINA_NAME;
    }

    bool ballerinaOrg = false; 
    if (mangledName[0] == 'b') {
        ballerinaOrg = true;
        mangledName++;
    }

    const char *org;
    if (mangledName[0] == '0') {
        mangledName++;
        org = NULL;
    }
    else {
        if (!demangleCountedName(&mangledName, &org)) {
            return BAD_BALLERINA_NAME;
        }
    }
    if (fp != NULL) {
        bool haveOrg = false;
        if (ballerinaOrg) {
            fputs("ballerina", fp);
            haveOrg = true;
        }
        if (org != NULL) {
            fwrite(org, 1, mangledName - org, fp);
            haveOrg = true;
        }
        if (haveOrg) {
            putc('/', fp);
        }
    }

    if (!demangleModules(&mangledName, fp)) {
        return NON_BALLERINA_NAME;
    }
    const char *lastModule;
    if (!demangleCountedName(&mangledName, &lastModule)) {
        return NON_BALLERINA_NAME;
    } 
    *localName = mangledName;
    if (fp != NULL) {
        fwrite(lastModule, 1, mangledName - lastModule, fp);
    }
    return PUBLIC_BALLERINA_NAME;
}

static bool demangleModules(const char **mangledModules, FILE *fp) {
    if (*mangledModules[0] != 'm') {
        return true;
    }
    *mangledModules = *mangledModules + 1;
    const char *module;
    if (!demangleCountedName(mangledModules, &module)) {
        return false;
    }
    if (fp != NULL) {
        fwrite(module, 1, *mangledModules - module, fp);
        fputs(".", fp);
    }
    return demangleModules(mangledModules, fp);
}

static bool demangleCountedName(const char **pp, const char **name) {
    long nChars;
    int nRead;
    if (sscanf(*pp, "%ld%n", &nChars, &nRead) <= 0) {
        return false;
    }
    *name = *pp + nRead;
    if (*name[0] == '_') {
        *name = *name + 1;
    }
    const char *p = *name;
    long tem = nChars;
    while (nChars > 0) {
        if (*p == '\0') {
            return false;
        }
        if (*p == '_') {
            if (nChars == tem || nChars == 1) {
                return false;
            }
            if (nChars > 1 && *(p + 1) != '\0' && *(p + 1) == '_') {
                return false;
            }
        }  
        p++;
        nChars--;
    }
    *pp = p;
    return true;
}
