TESTPROGS=string_hash string_cmp string_concat string_len immediate_string tagged_ptr
TESTPROG_STAMPS=$(addsuffix .stamp, $(TESTPROGS))
TESTPROG_PROF_RAW=$(addsuffix .profraw, $(TESTPROGS))
TESTPROG_PROF = test.profdata
TESTPROG_EXE=$(addprefix -object ./, $(TESTPROGS))

all: $(TESTPROGS)

test: $(TESTPROG_STAMPS)

testCoverage: CFLAGS=-fprofile-instr-generate -fcoverage-mapping
testCoverage: $(TESTPROG_PROF_RAW) $(TESTPROG_PROF)
	llvm-cov show -ignore-filename-regex=test* -instr-profile=$(TESTPROG_PROF) $(TESTPROG_EXE)
	llvm-cov report -ignore-filename-regex=test* -instr-profile=$(TESTPROG_PROF) $(TESTPROG_EXE)

$(TESTPROG_PROF): $(TESTPROG_PROF_RAW)
	llvm-profdata merge -sparse $(TESTPROG_PROF_RAW) -o $@

%.stamp: %
	./$<
	touch $@

%.profraw: %
	LLVM_PROFILE_FILE="$@" ./$<

%: %.c
	$(CLANG) $(CFLAGS) -o ./$@ $< ../$(LIB)

clean:
	-rm -f $(TESTPROGS) $(TESTPROG_STAMPS) $(TESTPROG_PROF_RAW) $(TESTPROG_PROF)

.PHONY: all test clean
