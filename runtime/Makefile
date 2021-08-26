LLVM_SUFFIX?=-11
export CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
LLC ?= llc$(LLVM_SUFFIX)
OPT ?= opt$(LLVM_SUFFIX)
export LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
RT_SRC=alloc list main mapping panic print string int third-party/dtoa/emyg_dtoa
OBJS=$(addsuffix .o, $(RT_SRC)) tagged_ptr.o
OPTIMIZED_BCS=$(addsuffix _opt.bc, $(RT_SRC))
BCS=eq_inline.bc int_inline.bc list_inline.bc mapping_inline.bc string_inline.bc float_ir_inline.bc float_inline.bc
INCLUDES=tag.h balrt.h balrt_inline.h
AR=ar
# Need bash for -o pipefail
SHELL=/bin/bash
export LIB=balrt.a
export BCLIB=balrt_inline.bc

all: $(OPTIMIZED_BCS) $(LIB) $(BCLIB)
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

%.o: %_opt.bc
	$(CLANG) -O2 -c -o $@ $<

%_opt.bc: %.c
	set -o pipefail; \
	$(CLANG) -c -O2 -emit-llvm -o - $< | \
	$(LLVM_LINK) tagged_ptr.ll - -o - -S | \
	$(OPT) -O2 - -o - -S | \
	sed -e '/define .*@taggedToPtr/s/^define /define linkonce_odr /' | $(LLVM_AS) >$@

%.o: %.ll
	$(CLANG) -O2 -c -o $@ $<

# we have to use -O2 here, otherwise the function will get a noinline attribute
%.bc: %.c
	$(CLANG) $(CFLAGS) -c -O2 -emit-llvm -o $@ $<

%.bc: %.ll
	set -o pipefail; \
	$(LLVM_AS) --data-layout=$(shell $(CLANG) -x c /dev/null -emit-llvm -S -o - | \
	sed -n 's/target datalayout = \(".*"\)/\1/p') -o=$@ $<

$(OBJS) $(BCS): $(INCLUDES)

clean:
	-rm -f $(OBJS) $(BCS) $(LIB) $(BCLIB) $(OPTIMIZED_BCS)
	$(MAKE) -C tests clean

.PHONY: test all
# Ensure bogus files get deleted when there's an error
.DELETE_ON_ERROR:

