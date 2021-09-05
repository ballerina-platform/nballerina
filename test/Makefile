# The default target is `test`, which runs in 3 phases
# 1. Remove the compile.stamp file if the compiler jar has changes
# 2. Compile the .bal test cases into .ll files
# 3. Compile, execute and check the output of .ll files
# Phase 2 only updates .ll if they have changed.
# Phases 2 and 3 use recursive invocations of make so dependencies are recalculated.
# This is used in phases 1 and 2.
# You can do `make compile` to compile all changed test cases from .bal to .ll
# You can do `make testll` to test the ll files.
# Failing tests are listed in out/result/fail.txt
COMPILER_JAR=../compiler/target/bin/nballerina.jar
# This is used in phase 2
JAVA ?= $(shell ./findJava.sh)
bal_files = $(sort $(wildcard ../compiler/testSuite/[VPO]*.bal))
# These are usd in phase 3
LLVM_SUFFIX ?=-11
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
CFLAGS ?= -O2
ll_files = $(wildcard out/ll/*.ll)
expect_files = $(addsuffix .txt, $(addprefix out/expect/, $(basename $(notdir $(ll_files)))))
diff_files = $(addsuffix .diff, $(addprefix out/result/, $(basename $(notdir $(ll_files)))))
exe_files = $(addsuffix .exe, $(addprefix out/result/, $(basename $(notdir $(ll_files)))))
RT=../runtime/balrt.a
RT_INLINE=../runtime/balrt_inline.bc

test: all
	$(MAKE) testll

all:
	if test $(COMPILER_JAR) -nt out/compile.stamp; then rm -f out/compile.stamp; fi
	$(MAKE) compile

compile: out/compile.stamp

out/compile.stamp: $(bal_files)
	$(MAKE) -f new.mk
	-rm -fr out/llnew
	mkdir -p out/llnew
	$(JAVA) -jar $(COMPILER_JAR) --outDir out/llnew $?
	mkdir -p out/ll
	cd out/llnew; for f in *.ll; do cmp -s $$f ../ll/$$f || mv $$f ../ll/; done
	rm -fr out/llnew
	@touch $@

# This compiles, runs and checks the output of out/ll/*.ll
testll: out/result/fail.txt $(expect_files) $(exe_files)

out/result/fail.txt: $(diff_files)
	@>$@
	@for f in $^; do \
		if test -s $$f; then \
			echo $$f failed | sed -e 's;out/result/;;' -e 's/.diff//' >>$@; \
		fi \
	done
	@cat $@
	@test ! -s $@

out/result/%.diff: out/result/%.exe out/expect/%.txt
	-./runcheck.sh $^ >$@

out/result/%.exe: out/result/%.bc $(RT)
	$(CLANG) $(CFLAGS) $< -o $@ $(RT)

out/result/%.bc: out/ll/%.ll $(RT_INLINE)
	@mkdir -p out/result
	$(LLVM_LINK) -o $@ $^

out/expect/%.txt: ../compiler/testSuite/%.bal
	@mkdir -p out/expect
	./expect.sh $< >$@

clean:
	-rm -fr out

update:
	cd out/ll; for f in *.ll; do cmp -s $$f ../../ll/$$f || cp -p $$f ../../ll/; done

.PHONY: all test clean compile testll update
