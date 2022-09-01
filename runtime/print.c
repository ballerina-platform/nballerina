#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "third-party/dtoa/emyg_dtoa.h"
#include "third-party/decNumber/decQuad.h"

#define STYLE_DIRECT 0
#define STYLE_INFORMAL 1

struct PrintStack {
    TaggedPtr p;
    struct PrintStack *next;
};

static int stackContains(struct PrintStack *stackPtr, TaggedPtr p);

static void printStringLiteralChar(FILE *fp, int c) {
    int escape;
    switch (c) {
    case '"':
    case '\\':
        escape = c;
        break;
    case '\n':
        escape = 'n';
        break;
    case '\r':
        escape = 'r';
        break;
    case '\t':
        escape = 't';
        break;
    default:
        fputc(c, fp);
        return;
    }
    fputc('\\', fp);
    fputc(escape, fp);
}

static void printTaggedInner(FILE *fp, TaggedPtr p, int style, struct PrintStack *stackPtr) {
    double d;
    int tag = getTag(p);
    switch (tag & UT_MASK) {
        case 0:
            if (p != 0) {
                fprintf(stderr, "zero tag with non-zero payload %p\n", p);
                abort();
            }
            if (style == STYLE_INFORMAL) {
                fputs("null", fp);
            }
            break;
        case TAG_BOOLEAN:
            fprintf(fp, "%s", taggedToBoolean(p) ? "true" : "false");
            break;
        case TAG_INT:
            fprintf(fp, "%" PRId64, taggedToInt(p));
            break;
        case TAG_FLOAT:
            d = taggedToFloat(p);
            if (isnan(d)) {
                fprintf(fp, "NaN");
                break;
            }
            if (isinf(d)) {
                fprintf(fp, d < 0.0l ? "-Infinity" : "Infinity");
                break;
            }
            if (d == 0.0) {
                fprintf(fp, signbit(d) ? "-0.0" : "0.0");
                break;
            }
            char buf[EMYG_DTOA_BUFFER_LEN];
            emyg_dtoa_non_special(d, buf);
            fprintf(fp, "%s", buf);
            break;
        case TAG_ERROR:
            {
                fputs("error(", fp);
                ErrorPtr ep = taggedToPtr(p);
                printTaggedInner(fp, ep->message, STYLE_INFORMAL, NULL);
                fputs(")", fp);
            }
            break;
        case TAG_LIST:
            if (stackContains(stackPtr, p)) {
                fputs("...", fp);
            }
            else {
                ListPtr lp = taggedToPtr(p);
                struct PrintStack stack;
                int i;
                fputs("[", fp);
                stack.next = stackPtr;
                stack.p = p;
                for (i = 0; i < lp->tpArray.length; i++) {
                    if (i > 0) {
                        fputs(",", fp);
                    }
                    printTaggedInner(fp, lp->desc->get(p, i), STYLE_INFORMAL, &stack);
                }
                fputs("]", fp);
            }
            break;
        case TAG_MAPPING:
            if (stackContains(stackPtr, p)) {
                fputs("...", fp);
            }
            else {
                MappingPtr mp = taggedToPtr(p);
                struct PrintStack stack;
                int i;
                fputs("{", fp);
                stack.next = stackPtr;
                stack.p = p;
                for (i = 0; i < mp->fArray.length; i++) {
                    if (i > 0) {
                        fputs(",", fp);
                    }
                    printTaggedInner(fp, mp->fArray.members[i].key, STYLE_INFORMAL, 0);
                    fputs(":", fp);
                    printTaggedInner(fp, mp->fArray.members[i].value, STYLE_INFORMAL, &stack);
                }
                fputs("}", fp);
            }
            break; 
        case TAG_STRING:
            {
                StringLength len = taggedStringLength(p);
                int64_t nBytes = len.nBytes;
                char *bytes = taggedStringBytes(&p);
                if (style == STYLE_INFORMAL) {
                    fputc('"', fp);
                    for (int64_t i = 0; i < nBytes; i++) {
                        printStringLiteralChar(fp, bytes[i]);
                    }
                    fputc('"', fp);
                }
                else {
                    fwrite(bytes, 1, nBytes, fp);
                }
            }
            break;
        case TAG_DECIMAL:
            {
                char decStr[DECQUAD_String];
                decQuadToString((decQuad *)taggedToPtr(p), decStr);
                fprintf(fp, "%s", decStr);
            }
            break;
        default:
            fprintf(stderr, "unknown tag %d\n", tag);
            abort();
    }
}

static void printTagged(FILE *fp, TaggedPtr p, int style, struct PrintStack *stackPtr) {
    ListPtr lp = taggedToPtr(p);
    struct PrintStack stack;
    int i;
    stack.next = stackPtr;
    stack.p = p;
    for (i = 0; i < lp->tpArray.length; i++) {
        printTaggedInner(fp, lp->desc->get(p, i), style, &stack);
    }
}

static int stackContains(struct PrintStack *stackPtr, TaggedPtr p) {
    while (stackPtr) {
        if (p == stackPtr->p) {
            return 1;
        }
        stackPtr = stackPtr->next;
    }
    return 0;
}

void BAL_LIB_IO_NAME(println)(TaggedPtr p) {
#ifdef STACK_DEBUG
    fprintf(stderr, "Used stack %ld bytes\n", (long)((_bal_stack_guard + STACK_SIZE) - (char *)__builtin_frame_address(0)));
#endif
    printTagged(stdout, p, STYLE_DIRECT, NULL);
    putchar('\n');
}

