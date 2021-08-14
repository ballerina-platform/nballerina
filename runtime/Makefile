LLVM_SUFFIX?=-11
export CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
export LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
OBJS=gc_cheney.o list.o main.o mapping.o panic.o print.o string.o int.o
BCS=eq_inline.bc int_inline.bc list_inline.bc mapping_inline.bc string_inline.bc float_ir_inline.bc float_inline.bc

INCLUDES=tag.h balrt.h
AR=ar
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
	$(LLVM_LINK) -o - -S $^ | sed -e '/define .*@_[Bb][a-zA-Z]/s/^define /define linkonce_odr /' -e '/target datalayout/ s/"$$/-ni:1"/' | $(LLVM_AS) >$@

%.o: %.c
	$(CLANG) $(CFLAGS) -c -o $@ $<

# we have to use -O2 here, otherwise the function will get a noinline attribute
%.bc: %.c
	$(CLANG) $(CFLAGS) -c -O2 -emit-llvm -o $@ $<

%.bc: %.ll
	$(LLVM_AS) --data-layout=$(shell clang -x c /dev/null -emit-llvm -S -o - | sed -n 's/target datalayout = \(".*"\)/\1/p') -o=$@ $<

$(OBJS) $(BCS): $(INCLUDES)

clean:
	-rm -f $(OBJS) $(BCS) $(LIB) $(BCLIB)
	$(MAKE) -C tests clean

.PHONY: test all
