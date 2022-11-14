BAL?=bal
LLVM_SUFFIX?=-13
CLANG?=clang$(LLVM_SUFFIX)
CFLAGS=-O2
JAVA?=$(shell test/findJava.sh)
TARGETS=all clean test
export CLANG CFLAGS BAL JAVA LLVM_SUFFIX
SUBDIRS=compiler.d runtime.d test.d extra/regex.d

all:
	$(MAKE) target=all compiler.d runtime.d extra/regex.d

test clean:
	$(MAKE) target=$@ $(SUBDIRS)

test: all

$(SUBDIRS):
	$(MAKE) -C $(basename $@) $(target)

.PHONY: $(TARGETS) $(SUBDIRS)
