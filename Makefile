BAL?=bal
LLVM_SUFFIX?=-12
CLANG?=clang$(LLVM_SUFFIX)
CFLAGS=-O2
JAVA?=$(shell test/findJava.sh)
TARGETS=all clean
export CLANG CFLAGS BAL JAVA LLVM_SUFFIX

test: allCompiler allRuntime
	$(MAKE) testEach

testEach: testCompiler testRuntime testSuite

$(TARGETS): %: %Compiler %Runtime %Suite

%Compiler:
	$(MAKE) -C compiler $*

%Runtime:
	$(MAKE) -C runtime $*

%Suite:
	$(MAKE) -C test $*

.PHONY: $(TARGETS) test

