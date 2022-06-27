# The default target is `test`, which runs in 3 phases
# 1. Remove the compile.stamp file if the compiler jar has changes
# 2. Compile the .bal test cases into .ll files
# 3. Compile, execute and check the output of .ll files
# Phase 2 only updates .ll if they have changed.
# Phases 2 and 3 use recursive invocations of make so dependencies are recalculated.
# This is used in phases 1 and 2.
# To run this, first navigate to out/<category> dir, then
# You can do `make -f ../../sub.mk tdir=$(basename "$PWD") compile` to compile all changed test cases from .bal to .ll
# You can do `make -f ../../sub.mk tdir=$(basename "$PWD") testll` to test the ll files.
# Failing tests are listed in fail.txt
COMPILER_JAR=../../../build/bin/nballerina.jar
# This is used in phase 2
JAVA ?= $(shell ../../findJava.sh)
bal_files = $(wildcard ../../../compiler/testSuite/$(tdir)/*-[vpo].bal)
# These are usd in phase 3
LLVM_SUFFIX ?=-12
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
CFLAGS ?= -O2
ll_files = $(wildcard ll/*.ll)
mod_ll_files = $(wildcard ll/*-[vpo].*.ll)
mod_bc_files = $(addsuffix .bc, $(addprefix result/, $(basename $(notdir $(mod_ll_files)))))
test_cases = $(basename $(notdir $(bal_files)))
expect_files = $(addsuffix .txt, $(addprefix expect/, $(test_cases)))
diff_files = $(addsuffix .diff, $(addprefix result/, $(test_cases)))
exe_files = $(addsuffix .exe, $(addprefix result/, $(test_cases)))
RT=../../../runtime/balrt.a
RT_INLINE=../../../runtime/balrt_inline.bc

testll test: all
	$(MAKE) -f ../../sub.mk tdir=$(tdir) test.ll

all:
	if test $(COMPILER_JAR) -nt compile.stamp; then rm -f compile.stamp; fi
	$(MAKE) -f ../../sub.mk tdir=$(tdir) compile

compile: compile.stamp

ifeq ($(bal_files),)
# sub dir only contains e cases
compile.stamp:
	@touch $@
else
compile.stamp: $(bal_files)
	-rm -fr llnew
	mkdir -p llnew
	$(JAVA) -jar $(COMPILER_JAR) --outDir llnew $?
	mkdir -p ll
	cd llnew; for f in *.ll; do cmp -s $$f ../ll/$$f || mv $$f ../ll/; done
	-rm -fr llnew
	@touch $@
endif

# This compiles, runs and checks the output of ll/*.ll
test.ll: fail.txt $(expect_files) $(exe_files)

fail.txt: $(diff_files)
	@>$@
	@for f in $^; do \
		if test -s $$f; then \
			echo $(tdir)/$$f failed | sed -e 's;/result/;/;' -e 's/.diff/.bal/' >>$@; \
		fi \
	done
	@cat $@
	@test ! -s $@

result/%.diff: result/%.exe expect/%.txt
	-../../runcheck.sh $^ >$@


result/%.bc: ll/%.ll $(RT_INLINE)
	@mkdir -p result
	$(LLVM_LINK) -o $@ $^

expect/%.txt: ../../../compiler/testSuite/$(tdir)/%.bal
	@mkdir -p expect
	../../expect.sh $< >$@

clean:
	-rm -rf actual compile.stamp expect fail.txt ll result

.PHONY: all test clean compile testll test.ll

.SECONDEXPANSION:
$(exe_files): $$(patsubst %.exe,%.bc,$$@) $$(filter $$(patsubst %.exe,%,$$@).%.bc, $(mod_bc_files)) $(RT)
	$(CLANG) $(CFLAGS) -g -o $@ $^ 
