LLVM_SUFFIX?=-11
export CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
LLC ?= llc$(LLVM_SUFFIX)
export LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
OBJS=alloc.o list.o main.o mapping.o panic.o print.o string.o int.o third-party/dtoa/emyg_dtoa.o
RT_BCS=alloc.bc list.bc main.bc mapping.bc panic.bc print.bc string.bc int.bc third-party/dtoa/emyg_dtoa.bc
RT_LINKED_BCS=alloc_linked.bc list_linked.bc main_linked.bc mapping_linked.bc panic_linked.bc print_linked.bc string_linked.bc int_linked.bc third-party/dtoa/emyg_dtoa_linked.bc
BCS=eq_inline.bc int_inline.bc list_inline.bc mapping_inline.bc string_inline.bc float_ir_inline.bc float_inline.bc
TAGGED_PTR_BC=tagged_ptr.bc
INCLUDES=tag.h balrt.h balrt_inline.h
AR=ar
export LIB=balrt.a
export BCLIB=balrt_inline.bc

all: $(TAGGED_PTR_BC) $(RT_BCS) $(RT_LINKED_BCS) $(LIB) $(BCLIB)
	$(MAKE) -C tests all

test: all
	$(MAKE) -C tests test

testCoverage: $(LIB) $(BCLIB)
	$(MAKE) -C tests testCoverage

$(LIB): $(OBJS)
	$(AR) r $@ $^

$(BCLIB): $(BCS)
	$(LLVM_LINK) -o - -S $^ | sed -e '/define .*@_[Bb][a-zA-Z]/s/^define /define linkonce_odr /' -e '/target datalayout/ s/"$$/-ni:1"/' | $(LLVM_AS) >$@

%.o: %_linked.bc
	$(LLC) -O2 --filetype=obj -o $@ $<

%_linked.bc: %.bc
	$(LLVM_LINK) tagged_ptr.bc $< -o $@

# we have to use -O2 here, otherwise the function will get a noinline attribute
%.bc: %.c
	$(CLANG) $(CFLAGS) -c -O2 -emit-llvm -o $@ $<

%.bc: %.ll
	$(LLVM_AS) --data-layout=$(shell $(CLANG) -x c /dev/null -emit-llvm -S -o - | sed -n 's/target datalayout = \(".*"\)/\1/p') -o=$@ $<

$(OBJS) $(BCS): $(INCLUDES)

clean:
	-rm -f $(OBJS) $(BCS) $(LIB) $(BCLIB) $(RT_BCS) $(TAGGED_PTR_BC) $(RT_LINKED_BCS)
	$(MAKE) -C tests clean

.PHONY: test all
