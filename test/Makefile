TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/*))))

$(TARGETS): $(TDIRS)

<<<<<<< HEAD
# The filter is so we can say e.g. make 07-error
$(TDIRS):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../sub.mk tdir=$@ $(filter-out $@, $(MAKECMDGOALS))
=======
compile: out/compile.stamp

out/compile.stamp: $(bal_files)
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
	$(CLANG) $(CFLAGS) $< -o $@ $(RT) ../runtime/gc-roots/roots.a -lbacktrace

out/result/%.bc: out/ll/%.ll $(RT_INLINE)
	@mkdir -p out/result
	$(LLVM_LINK) -o $@ $^

out/expect/%.txt: ../compiler/testSuite/%.bal
	@mkdir -p out/expect
	./expect.sh $< >$@
>>>>>>> Start to integrate root identifying

clean:
	-rm -fr out

update:
	mkdir -p out
	find out -path "*/ll/*.ll" | sed -e 's;/ll/;/;' -e 's;^out;ll;' | sort > out/ll_curr.txt
	find ll -type f | sort > out/ll_prev.txt
	comm -13 out/ll_curr.txt out/ll_prev.txt | xargs rm -fv
	rm out/ll_curr.txt out/ll_prev.txt
	for f in out/*/ll/*.ll; do \
		ll=`echo $$f | sed -e 's;/ll/;/;' -e 's;^out;ll;'`; \
		cmp -s $$f $$ll || (mkdir -p `dirname $$ll` && cp -p $$f $$ll); \
	done

diff:
	@for f in out/*/ll/*.ll; do \
		ll=`echo $$f | sed -e 's;/ll/;/;' -e 's;^out;ll;'`; \
		[ -e $$ll ] && cmp -s $$f $$ll || echo $$f; \
	done

.PHONY: $(TARGETS) $(TDIRS) clean update diff
