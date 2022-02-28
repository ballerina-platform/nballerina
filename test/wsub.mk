# The default target is `test`, which runs in 3 phases
# 1. Remove the compile.stamp file if the compiler jar has changes
# 2. Compile the .bal test cases into .wat files
# 3. Compile, wasmcute and check the output of .wat files
# Phase 2 only updates .wat if they have changed.
# Phases 2 and 3 use recursive invocations of make so dependencies are recalculated.
# This is used in phases 1 and 2.
# To run this, first navigate to outwat/<category> dir, then
# You can do `make -f ../../wsub.mk tdir=$(basename "$PWD") compile` to compile all changed test cases from .bal to .wat
# Failing tests are listed in fail.txt
COMPILER_JAR=../../../build/bin/nballerina.jar
# This is used in phase 2
JAVA ?= $(shell ../../findJava.sh)
bal_files = $(wildcard ../../../compiler/testSuite/$(tdir)/*-[vpo].bal)
# These are usd in phase 3
BINARYEN = $(shell ../../findBinaryen.sh)
wat_files = $(wildcard wat/*.wat)
test_cases = $(basename $(notdir $(bal_files)))
expect_files = $(addsuffix .txt, $(addprefix expect/, $(test_cases)))
diff_files = $(addsuffix .diff, $(addprefix result/, $(test_cases)))
wasm_files = $(addsuffix .wasm, $(addprefix result/, $(test_cases)))

testwat test: all
	$(MAKE) -f ../../wsub.mk tdir=$(tdir) test.wat

all:
	if test $(COMPILER_JAR) -nt compile.stamp; then rm -f compile.stamp; fi
	$(MAKE) -f ../../wsub.mk tdir=$(tdir) compile

compile: compile.stamp

ifeq ($(bal_files),)
# sub dir only contains e cases
compile.stamp:
	@touch $@
else
compile.stamp: $(bal_files)
	-rm -fr watnew
	mkdir -p watnew
	$(JAVA) -jar $(COMPILER_JAR) --outWat --outDir watnew $?
	mkdir -p wat
	mkdir -p result
	cd watnew; for f in *.wat; do cmp -s $$f ../wat/$$f || mv $$f ../wat/; done
	-rm -fr watnew
	@touch $@
endif

# This compiles, runs and checks the output of ll/*.ll
test.wat: fail.txt $(expect_files) $(wasm_files)

fail.txt: $(diff_files)
	@>$@
	@for f in $^; do \
		if test -s $$f; then \
			echo $(tdir)/$$f failed | sed -e 's;/result/;/;' -e 's/.diff/.bal/' >>$@; \
		fi \
	done
	@cat $@
	@test ! -s $@

result/%.diff: result/%.wasm expect/%.txt
	-../../runwcheck.sh $^ >$@

expect/%.txt: ../../../compiler/testSuite/$(tdir)/%.bal
	@mkdir -p expect
	../../wexpect.sh $< >$@

clean:
	-rm -rf actual compile.stamp expect fail.txt wat result

.PHONY: all test clean compile testwat test.wat

.SECONDEXPANSION:
$(wasm_files):
	@echo $@
	$(BINARYEN) -O3 wat/$(addsuffix .wat, $(basename $(notdir $@))) -o $@ -all
