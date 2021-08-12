LLVM_SUFFIX?=-11
export CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
LLC ?= llc$(LLVM_SUFFIX)
OPT ?= opt$(LLVM_SUFFIX)
CFLAGS ?= -O2
export LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
BT_WARN_FLAGS=-W -Wall -Wwrite-strings -Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition -Wmissing-format-attribute -Wcast-qual
BT_OBJS=$(addprefix third-party/libbacktrace/, atomic.o dwarf.o fileline.o posix.o sort.o state.o backtrace.o simple.o obj.o mmapio.o mmap.o)
OBJS=gc_cheney.o gc_none.o error.o list.o main.o mapping.o panic.o print.o string.o int.o third-party/dtoa/emyg_dtoa.o tagged_inline.o $(BT_OBJS)
C_BCS=eq_inline.bc int_inline.bc list_inline.bc mapping_inline.bc string_inline.bc float_inline.bc
LL_BCS=float_ir_inline.bc tagged_inline.bc
BCS=$(C_BCS) $(LL_BCS)
INCLUDES=tag.h balrt.h balrt_inline.h
AR=ar
# Need bash for -o pipefail
SHELL=/bin/bash
export LIB=balrt.a
export BCLIB=balrt_inline.bc

all: $(LIB) $(BCLIB)
	$(MAKE) -C tests all

test: all
	$(MAKE) -C tests test

testCoverage: $(LIB) $(BCLIB)
	$(MAKE) -C tests testCoverage

$(LIB): $(OBJS)
	$(AR) r $@ $^

$(BCLIB): $(BCS)
	set -o pipefail; \
	$(LLVM_LINK) -o - -S $^ | \
	sed -e '/define .*@_[Bb][a-zA-Z]/s/^define /define linkonce_odr /' -e '/target datalayout/ s/"$$/-ni:1"/' | \
	$(LLVM_AS) >$@ 

$(BT_OBJS): %.o: %.c
	$(CLANG) -DHAVE_CONFIG_H -funwind-tables -frandom-seed=$< $(BT_WARN_FLAGS) $(CFLAGS) -c -o $@ $<

%.o: %.bc
	$(CLANG) -O2 -c -o $@ $<

%.bc: %.c $(LL_BCS)
	set -o pipefail; \
	$(CLANG) -c $(CFLAGS) -emit-llvm -o - $< | \
	$(LLVM_LINK) $(LL_BCS) - -o - -S | \
	sed -e '/define .*@_bal_tagged_to_ptr/s/^define /define linkonce_odr /' -e '/define .*@_bal_float_/s/^define /define linkonce_odr /' | \
	$(OPT) -O2 - -o - -S | \
	$(LLVM_AS) >$@

# Remove existing pattern rule
%.o: %.c

%.o: %.ll
	$(CLANG) -O2 -c -o $@ $<

# we have to use -O2 here, otherwise the function will get a noinline attribute
$(C_BCS): %.bc: %.c
	$(CLANG) $(CFLAGS) -c -O2 -emit-llvm -o $@ $<

$(LL_BCS): %.bc: %.ll
	set -o pipefail; \
	$(CLANG) -x c /dev/null -emit-llvm -S -o - | grep "^target" | cat - $< | $(LLVM_AS) - -o=$@

$(OBJS) $(BCS): $(INCLUDES)

clean:
	-rm -f $(OBJS) $(BCS) $(LIB) $(BCLIB)
	$(MAKE) -C tests clean

.PHONY: test all
# Ensure bogus files get deleted when there's an error
.DELETE_ON_ERROR:

