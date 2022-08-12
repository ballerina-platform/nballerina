# Make sure these are in .gitignore
TESTPROGS=string_hash string_cmp string_concat string_len immediate_string tagged_ptr float_print error_print error_backtrace1 error_backtrace2 demangle list_construct
# following will test balrt_inline, and must be named inlinert_*
TESTINLINERTPROGS=inlinert_float inlinert_int inlinert_string inlinert_list
TESTPROG_STAMPS=$(addsuffix .stamp, $(TESTPROGS) $(TESTINLINERTPROGS))
TESTPROG_PROF_RAW=$(addsuffix .profraw, $(TESTPROGS))
TESTPROG_PROF = test.profdata
TESTPROG_EXE=$(addprefix -object ./, $(TESTPROGS))
SHELL=/bin/bash
TESTLIB=$(addprefix ../,$(LL_BCS) $(LIB))
all: $(TESTPROGS) $(TESTINLINERTPROGS)

test: $(TESTPROG_STAMPS)

testCoverage: CFLAGS=-fprofile-instr-generate -fcoverage-mapping
testCoverage: $(TESTPROG_PROF_RAW) $(TESTPROG_PROF)
	llvm-cov show -ignore-filename-regex=test* -instr-profile=$(TESTPROG_PROF) $(TESTPROG_EXE)
	llvm-cov report -ignore-filename-regex=test* -instr-profile=$(TESTPROG_PROF) $(TESTPROG_EXE)

$(TESTPROG_PROF): $(TESTPROG_PROF_RAW)
	llvm-profdata merge -sparse $(TESTPROG_PROF_RAW) -o $@

error_backtrace%.stamp: error_backtrace%
	set -o pipefail; \
	./$< | ./error_backtrace.sh $<.txt
	touch $@ 

%.stamp: %
	./$<
	touch $@

%.profraw: %
	LLVM_PROFILE_FILE="$@" ./$<

# compiling directly (with -O1 or above) does not work due to linkonce_odr, llvm-link first and then compile
inlinert_unlinked_%.bc: inlinert_%.c
	$(CLANG) $(CFLAGS) -c -emit-llvm -o ./$@ $<

inlinert_%.bc: inlinert_unlinked_%.bc
	$(LLVM_LINK) -o ./$@ $< ../$(BCLIB)

inlinert_%: inlinert_%.bc
	$(CLANG) $(CFLAGS) -o ./$@ $< ../$(LIB)

$(filter error%, $(TESTPROGS)): error%: error%.c
	$(CLANG) -g -o ./$@ $< $(TESTLIB)

$(filter-out error%, $(TESTPROGS)): %: %.c
	$(CLANG) $(CFLAGS) -o ./$@ $< $(TESTLIB)

clean:
	-rm -f $(TESTPROGS) $(TESTPROG_STAMPS) $(TESTPROG_PROF_RAW) $(TESTPROG_PROF)

$(TESTPROGS) $(TESTINLINERTPROGS): ../balrt.h $(TESTLIB)

.PHONY: all test clean
