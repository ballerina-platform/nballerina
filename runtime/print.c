#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>

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

static void printTagged(FILE *fp, TaggedPtr p, int style, struct PrintStack *stackPtr) {
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
            fprintf(fp, "%ld", (long)_bal_tagged_to_int(p));
            break;
        case TAG_LIST_RW:
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
                    printTagged(fp, lp->tpArray.members[i], STYLE_INFORMAL, &stack);
                }
                fputs("]", fp);
            }
            break;
        case TAG_MAPPING_RW:
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
                    printTagged(fp, mp->fArray.members[i].key, STYLE_INFORMAL, 0);
                    fputs(":", fp);
                    printTagged(fp, mp->fArray.members[i].value, STYLE_INFORMAL, &stack);
                }
                fputs("}", fp);
            }
            break;
        case TAG_STRING:
            {
                StringData data = _bal_tagged_to_string(p);
                int64_t len = data.lengthInBytes;
                GC char *bytes = data.bytes;
                if (style == STYLE_INFORMAL) {
                    fputc('"', fp);
                    for (int64_t i = 0; i < len; i++) {
                        printStringLiteralChar(fp, bytes[i]);
                    }
                    fputc('"', fp);
                }
                else {
                    fwrite((char *)data.bytes, 1, data.lengthInBytes, fp);
                }
            }
            break;
        default:
            fprintf(stderr, "unknown tag %d\n", tag);
            abort();
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

void _Bio__println(TaggedPtr p) {
#ifdef STACK_DEBUG
    fprintf(stderr, "Used stack %ld bytes\n", (long)((_bal_stack_guard + STACK_SIZE) - (char *)__builtin_frame_address(0)));
#endif
    printTagged(stdout, p, STYLE_DIRECT, NULL);
    putchar('\n');
}

