LLVM_SUFFIX?=-12
export CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
OPT ?= opt$(LLVM_SUFFIX)
export CFLAGS ?= -O2
export LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
WARN_FLAGS=-Wextra -Wall
BT_WARN_FLAGS=-W -Wall -Wwrite-strings -Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition -Wmissing-format-attribute -Wcast-qual
BT_OBJS=$(addprefix third-party/libbacktrace/, atomic.o dwarf.o fileline.o posix.o sort.o state.o backtrace.o simple.o obj.o mmapio.o mmap.o)
DN_OBJS=$(addprefix third-party/decNumber/, decQuad.o decContext.o)
# Required defines for using decNumber
DN_DEFINES=-DHAVE_STDBOOL_H -DHAVE_STDINT_H -DDECPRINT=0
DTOA_OBJS=third-party/dtoa/emyg_dtoa.o
THIRD_PARTY_OBJS=$(DTOA_OBJS) $(BT_OBJS) $(DN_OBJS)
RT_OBJS=alloc.o error.o list.o main.o mapping.o structure.o panic.o print.o string.o int.o decimal.o float.o boolean.o convert.o
OBJS=$(RT_OBJS) $(THIRD_PARTY_OBJS)
DEFINES=$(DN_DEFINES)
C_BCS=eq_inline.bc int_inline.bc list_inline.bc mapping_inline.bc string_inline.bc float_inline.bc \
  boolean_inline.bc type_inline.bc structure_inline.bc tagged_inline.bc decimal_inline.bc
export LL_BCS=float_ll_inline.bc tagged_ll_inline.bc
BCS=$(C_BCS) $(LL_BCS)
INCLUDES=tag.h balrt.h balrt_inline.h
AR=ar
# Need bash for -o pipefail
SHELL=/bin/bash
export LIB=balrt.a
export BCLIB=balrt_inline.bc

all: $(LIB) $(BCLIB)
	$(MAKE) -C tests all

test testll testwat: all
	$(MAKE) -C tests test

testCoverage: $(LIB) $(BCLIB)
	$(MAKE) -C tests testCoverage

$(LIB): $(OBJS)
	$(AR) r $@ $^

$(BCLIB): $(BCS)
	set -o pipefail; \
	$(LLVM_LINK) -o - -S $^ | \
	sed -e '/target datalayout/ s/"$$/-ni:1"/' | \
	$(OPT) -O3 -S | \
	sed -e '/define .*@_[Bb][a-zA-Z]/s/^define /define linkonce_odr /' | \
	$(LLVM_AS) >$@ 

$(BT_OBJS): %.o: %.c
	$(CLANG) -DHAVE_CONFIG_H -funwind-tables -frandom-seed=$< $(BT_WARN_FLAGS) $(CFLAGS) -c -o $@ $<

$(DTOA_OBJS) $(DN_OBJS): %.o: %.c
	$(CLANG) $(DEFINES) $(CFLAGS) -c -o $@ $<

%.o: %.bc
	$(CLANG) -O2 -c -o $@ $<

%.bc: %.c $(LL_BCS)
	set -o pipefail; \
	$(CLANG) -c $(CFLAGS) $(DEFINES) $(WARN_FLAGS) -emit-llvm -o - $< | \
	$(LLVM_LINK) $(LL_BCS) - -o - -S | \
	sed -e '/define .*@_bal_ptr_mask/s/^define /define linkonce_odr /' \
		-e '/define .*@_bal_float_eq/s/^define /define linkonce_odr /' \
		-e '/define .*@_bal_float_exact_eq/s/^define /define linkonce_odr /' \
		-e '/define .*@_bal_float_to_int/s/^define /define linkonce_odr /' | \
	$(OPT) -O2 - -o - -S | \
	$(LLVM_AS) >$@

# Remove existing pattern rule
%.o: %.c

%.o: %.ll
	$(CLANG) -O2 -c -o $@ $<

# we have to use -O2 here, otherwise the function will get a noinline attribute
$(C_BCS): %.bc: %.c
	$(CLANG) $(CFLAGS) $(WARN_FLAGS) -c -O2 -emit-llvm -o $@ $<

$(LL_BCS): %.bc: %.ll
	set -o pipefail; \
	$(CLANG) -x c /dev/null -emit-llvm -S -o - | grep "^target" | cat - $< | $(LLVM_AS) - -o=$@

$(RT_OBJS) $(BCS): $(INCLUDES)

clean:
	-rm -f $(OBJS) $(BCS) $(LIB) $(BCLIB)
	$(MAKE) -C tests clean

.PHONY: test all testll testall
# Ensure bogus files get deleted when there's an error
.DELETE_ON_ERROR:

