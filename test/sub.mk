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
COMPILER_JAR=../../../compiler/target/bin/nballerina.jar
# This is used in phase 2
JAVA ?= $(shell ../../findJava.sh)
bal_files = $(wildcard ../../../compiler/testSuite/$(tdir)/*-[vpo].bal)
# These are usd in phase 3
LLVM_SUFFIX ?=-11
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

test: all
	$(MAKE) -f ../../sub.mk tdir=$(tdir) testll

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
	$(JAVA) -jar $(COMPILER_JAR) --gc statepoint-example --outDir llnew $?
	mkdir -p ll
	cd llnew; for f in *.ll; do cmp -s $$f ../ll/$$f || mv $$f ../ll/; done
	-rm -fr llnew
	@touch $@
endif

# This compiles, runs and checks the output of ll/*.ll
testll: fail.txt $(expect_files) $(exe_files)

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

result/%.s: result/%.bc
	opt-11 -O2 --rewrite-statepoints-for-gc $^ -o $^ 
	clang-11 -O2 -S $^ -o $@
	sed -i -e "s/__LLVM_StackMaps:/.globl __LLVM_StackMaps\n__LLVM_StackMaps:/" $@

expect/%.txt: ../../../compiler/testSuite/$(tdir)/%.bal
	@mkdir -p expect
	../../expect.sh $< >$@

clean:
	-rm -rf actual compile.stamp expect fail.txt ll result

.PHONY: all test clean compile testll

.SECONDEXPANSION:
$(exe_files): $$(patsubst %.exe,%.s,$$@) $$(filter $$(patsubst %.exe,%,$$@).%.bc, $(mod_bc_files)) $(RT)
	$(CLANG) $(CFLAGS) -g -o $@ $^ -lm

# clang-11 -O2 -g -o result/list8-p.exe result/list8-p.bc result/list8-p._init.bc ../../../runtime/balrt.a -lm
# /usr/lib/ballerina/dependencies/jdk-11.0.8+10-jre/bin/java -jar ../compiler/target/bin/nballerina.jar --gc statepoint-example -- test.bal && 
# llvm-link-11 -o test_linked.ll -S test.ll ../runtime/balrt_inline.bc && 
# opt-11 -O2 --rewrite-statepoints-for-gc -S -o test_opt.ll test_linked.ll && 
# clang-11 test_opt.ll -O2 -S -o test.s && 
# sed -i -e "s/__LLVM_StackMaps:/.globl __LLVM_StackMaps\n__LLVM_StackMaps:/" test.s && 
# clang-11 test.s ../runtime/balrt.a -lm && 
# ./a.out

# /usr/lib/ballerina/dependencies/jdk-11.0.8+10-jre/bin/java -jar ../compiler/target/bin/nballerina.jar --gc statepoint-example -- test.bal && 
# llvm-link-11 -o test_linked_init.ll -S test._init.ll ../runtime/balrt_inline.bc && 
# opt-11 -O2 --rewrite-statepoints-for-gc -S -o test_opt.ll test_linked.ll && 
# clang-11 test_opt.ll -O2 -S -o test.s && 
# llvm-link-11 -o test_linked.ll -S test.ll ../runtime/balrt_inline.bc && 
# sed -i -e "s/__LLVM_StackMaps:/.globl __LLVM_StackMaps\n__LLVM_StackMaps:/" test.s && 
# clang-11 test.s test_linked_init.ll ../runtime/balrt.a -lm && ./a.out

# /usr/lib/ballerina/dependencies/jdk-11.0.8+10-jre/bin/java -jar ../compiler/target/bin/nballerina.jar --gc statepoint-example -- test.bal &&
# llvm-link-11 -o test_linked_init.bc test._init.ll ../runtime/balrt_inline.bc &&
# llvm-link-11 -o test_linked.bc test.ll ../runtime/balrt_inline.bc && 
# opt-11 -O2 --rewrite-statepoints-for-gc -o test_opt.bc test_linked.bc && 
# clang-11 test_opt.bc -O2 -o test.s && 
# sed -i -e "s/__LLVM_StackMaps:/.globl __LLVM_StackMaps\n__LLVM_StackMaps:/" test.s && 
# clang-11 test.s test_linked_init.bc ../runtime/balrt.a -lm && 
# ./a.out

# ../../expect.sh ../../../compiler/testSuite/09-nil/local1-v.bal >expect/local1-v.txt
# ../../runcheck.sh result/local1-v.exe expect/local1-v.txt >result/local1-v.diff
# llvm-link-11 -o result/cast1-v.bc ll/cast1-v.ll ../../../runtime/balrt_inline.bc
# llvm-link-11 -o result/cast1-v._init.bc ll/cast1-v._init.ll ../../../runtime/balrt_inline.bc
# clang-11 -O2 -g -o result/cast1-v.exe result/cast1-v.bc result/cast1-v._init.bc ../../../runtime/balrt.a 