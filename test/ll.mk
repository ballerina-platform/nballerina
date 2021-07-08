# This compiles, runs and checks the output of out/ll/*.ll
LLVM_SUFFIX ?=-11
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
CFLAGS ?= -O2
RT=../runtime/balrt.a
RT_INLINE=../runtime/balrt_inline.bc
ll_files = $(wildcard out/ll/*.ll)
expect_files = $(addsuffix .txt, $(addprefix out/expect/, $(basename $(notdir $(ll_files)))))
diff_files = $(addsuffix .diff, $(addprefix out/result/, $(basename $(notdir $(ll_files)))))
exe_files = $(addsuffix .exe, $(addprefix out/result/, $(basename $(notdir $(ll_files)))))

test: out/result/fail.txt $(expect_files) $(exe_files)

out/result/fail.txt: $(diff_files)
	@>$@
	@for f in $^; do \
		if test -s $$f; then \
			echo $$f failed | sed -e 's;out/result/;;' -e 's/.diff//' >>$@; \
		fi \
	done
	test ! -s $@

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

.PHONY: test clean