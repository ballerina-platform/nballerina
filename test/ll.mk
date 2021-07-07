# This compiles, runs and checks the output of out/ll/*.ll
CLANG ?= clang-11
RT=../runtime/balrt.a
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

out/result/%.exe: out/ll/%.ll $(RT)
	@mkdir -p out/result
	$(CLANG) $(CFLAGS) -Wno-override-module $< -o $@ $(RT)

out/expect/%.txt: ../compiler/testSuite/%.bal
	@mkdir -p out/expect
	./expect.sh $< >$@

clean:
	-rm -fr out

.PHONY: test clean