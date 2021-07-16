BAL?=bal
LLVM_SUFFIX?=-11
CLANG?=clang$(LLVM_SUFFIX)
CFLAGS=-O2
JAVA?=$(shell test/findJava.sh)
TARGETS=all test clean
export CLANG CFLAGS BAL JAVA LLVM_SUFFIX

$(TARGETS):
	$(MAKE) -C compiler $@
	$(MAKE) -C runtime $@
	$(MAKE) -C test $@

.PHONY: $(TARGETS)

