BAL?=bal
LLVM_SUFFIX?=-12
CLANG?=clang$(LLVM_SUFFIX)
CFLAGS=-O2
JAVA?=$(shell test/findJava.sh)
TARGETS=all clean test pack extra
export CLANG CFLAGS BAL JAVA LLVM_SUFFIX
SUBDIRS=compiler.d runtime.d test.d extra.d
EXTRAS=regex

all:
	$(MAKE) target=all compiler.d runtime.d

test clean:
	$(MAKE) target=$@ $(SUBDIRS)

test: all

pack:
	$(MAKE) target=pack compiler.d

$(EXTRAS): pack
	$(MAKE) target=$@ extra.d

extras: $(EXTRAS)

$(SUBDIRS):
	$(MAKE) -C $(basename $@) $(target)

.PHONY: $(TARGETS) $(SUBDIRS)
