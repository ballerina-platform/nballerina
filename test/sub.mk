# The default target is `test`, which runs in 3 phases
# 1. Remove the compile.stamp file if the compiler has changes
# 2. If LINK_FILE_EXTENSION is .bc: compile the .bal test cases into .ll files
# 	 Then these files are linked with RT_INLINE to create .bc files
# 	 Else: compile the .bal test cases into .o files
# 3. Link .bc/.o files with RT to generate .exe files
# 	 Then these .exe files are executed and output validated against the expected output
# Phase 2 only updates .ll/.o if they have changed.
# Phases 2 and 3 use recursive invocations of make so dependencies are recalculated.
# This is used in phases 1 and 2.
# To run this, first navigate to out/<category> dir, then
# You can do `make -f ../../sub.mk tdir=$(basename "$PWD") compile` to compile all changed test cases from .bal to .ll/.o files
# You can do `make -f ../../sub.mk tdir=$(basename "$PWD") testIntermediate` to test the ll/o files.
# Failing tests are listed in fail.txt
COMPILER?=../../../build/compiler/bin/nballerina.jar
# This is the extension of files used in phase 3. Based on this we determine which version of the compiler to use
LINK_FILE_EXTENSION ?= .bc
ifeq ($(LINK_FILE_EXTENSION),.bc)
	COMPILER_OUTPUT_DIR=ll
else
	COMPILER_OUTPUT_DIR=result
endif
# This is used in phase 2
JAVA ?= $(shell ../../findJava.sh)
ifeq ($(suffix $(COMPILER)),.jar)
	COMPILER_RUNNER= $(JAVA) -jar
else
	COMPILER_RUNNER=
endif
bal_files = $(wildcard ../../../compiler/testSuite/$(tdir)/*-[vpo].bal)
# These are usd in phase 3
LLVM_SUFFIX ?=-13
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
CFLAGS ?= -O2
mod_compiler_output_files = $(wildcard $(COMPILER_OUTPUT_DIR)/*-[vpo].*)
mod_link_files = $(addsuffix $(LINK_FILE_EXTENSION), $(addprefix result/, $(basename $(notdir $(mod_compiler_output_files)))))
test_cases = $(basename $(notdir $(bal_files)))
expect_files = $(addsuffix .txt, $(addprefix expect/, $(test_cases)))
diff_files = $(addsuffix .diff, $(addprefix result/, $(test_cases)))
exe_files = $(addsuffix .exe, $(addprefix result/, $(test_cases)))
RT=../../../runtime/balrt.a
RT_INLINE=../../../runtime/balrt_inline.bc

test: all
	$(MAKE) -f ../../sub.mk tdir=$(tdir) testIntermediate

all:
	if test $(COMPILER) -nt compile.stamp; then rm -f compile.stamp; fi
	$(MAKE) -f ../../sub.mk tdir=$(tdir) compile

compile: compile.stamp

ifeq ($(bal_files),)
# sub dir only contains e cases
compile.stamp:
	@touch $@
else
compile.stamp: $(bal_files)
	-rm -fr outputnew
	mkdir -p outputnew
	$(COMPILER_RUNNER) $(COMPILER) --outDir outputnew $?
	mkdir -p $(COMPILER_OUTPUT_DIR)
	cd outputnew; for f in *; do cmp -s $$f ../$(COMPILER_OUTPUT_DIR)/$$f || mv $$f ../$(COMPILER_OUTPUT_DIR)/; done
	-rm -fr outputnew
	@touch $@
endif

# This compiles, runs and checks the output of ll/*.ll
testIntermediate: fail.txt $(expect_files) $(exe_files)

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
	-rm -rf actual compile.stamp expect fail.txt $(COMPILER_OUTPUT_DIR) result

.PHONY: all test clean compile testIntermediate

# <name>.exe dependes of all files of the form <name>.*LINK_FILE_EXTENSION (This includes both "_init" file as well as any imports) and RT
.SECONDEXPANSION:
$(exe_files): $$(patsubst %.exe,%$(LINK_FILE_EXTENSION),$$@) $$(filter $$(patsubst %.exe,%,$$@).%$(LINK_FILE_EXTENSION), $(mod_link_files)) $(RT)
# we need -lm since frem instruction gets lowerd to fmod() in X86
	$(CLANG) $(CFLAGS) -g -o $@ $^ -lm
