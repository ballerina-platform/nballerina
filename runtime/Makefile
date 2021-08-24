LLVM_SUFFIX?=-11
export CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
LLC ?= llc$(LLVM_SUFFIX)
OPT ?= opt$(LLVM_SUFFIX)
export LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
OBJS=alloc.o list.o main.o mapping.o panic.o print.o string.o int.o third-party/dtoa/emyg_dtoa.o
RT_OPT_BCS=alloc_opt.bc list_opt.bc main_opt.bc mapping_opt.bc panic_opt.bc print_opt.bc string_opt.bc int_opt.bc third-party/dtoa/emyg_dtoa_opt.bc
BCS=eq_inline.bc int_inline.bc list_inline.bc mapping_inline.bc string_inline.bc float_ir_inline.bc float_inline.bc
INCLUDES=tag.h balrt.h balrt_inline.h
TAGGED_PTR_BC=tagged_ptr.bc
TAGGED_PTR_OBJ=tagged_ptr.o
AR=ar
export LIB=balrt.a
export BCLIB=balrt_inline.bc

all: $(TAGGED_PTR_BC) $(RT_OPT_BCS) $(LIB) $(BCLIB)
	$(MAKE) -C tests all

test: all
	$(MAKE) -C tests test

testCoverage: $(LIB) $(BCLIB)
	$(MAKE) -C tests testCoverage

$(LIB): $(TAGGED_PTR_OBJ) $(OBJS)
	$(AR) r $@ $^

$(TAGGED_PTR_OBJ):
	$(CLANG) -c -o $@ $(TAGGED_PTR_BC)

$(BCLIB): $(BCS)
	$(LLVM_LINK) -o - -S $^ | sed -e '/define .*@_[Bb][a-zA-Z]/s/^define /define linkonce_odr /' -e '/target datalayout/ s/"$$/-ni:1"/' | $(LLVM_AS) >$@

%.o: %_opt.bc
	$(LLC) -O2 --filetype=obj -o $@ $<

%_opt.bc: %_linked.bc
	$(OPT) -O2 -o $@ $<

%_linked.bc: %.bc
	$(LLVM_LINK) $(TAGGED_PTR_BC) $< -o - -S | sed -e '/define .*@taggedToPtr/s/^define /define linkonce_odr /' | $(LLVM_AS) >$@

# we have to use -O2 here, otherwise the function will get a noinline attribute
%.bc: %.c
	$(CLANG) $(CFLAGS) -c -O2 -emit-llvm -o $@ $<

%.bc: %.ll
	$(LLVM_AS) --data-layout=$(shell $(CLANG) -x c /dev/null -emit-llvm -S -o - | sed -n 's/target datalayout = \(".*"\)/\1/p') -o=$@ $<

$(OBJS) $(BCS): $(INCLUDES)

clean:
	-rm -f $(OBJS) $(BCS) $(LIB) $(BCLIB) $(RT_OPT_BCS) $(TAGGED_PTR_OBJ) *.bc
	$(MAKE) -C tests clean

.PHONY: test all
