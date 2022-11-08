COMPILER_NATIVE=../../../testbuild/target/bin/nballerina
RT=../../../runtime/balrt.a
LLVM_SUFFIX ?=-13
CLANG ?= clang$(LLVM_SUFFIX)
# FIXME: change this to compiler test suite
bal_files = $(wildcard ../../../testbuild/testSuite/$(tdir)/*-[vpo].bal)
test_cases = $(basename $(notdir $(bal_files)))
expect_files = $(addsuffix .txt, $(addprefix expect/, $(test_cases)))
diff_files = $(addsuffix .diff, $(addprefix result/, $(test_cases)))
exe_files = $(addsuffix .exe, $(addprefix result/, $(test_cases)))
mod_object_files = $(wildcard result/*-[vpo].*.o)

compile: compile.stamp

ifeq ($(bal_files),)
# sub dir only contains e cases
compile.stamp:
	@touch $@
else
compile.stamp: $(bal_files)
	-rm -fr objectsnew
	mkdir -p objectsnew
	$(COMPILER_NATIVE) --outDir objectsnew $?
	mkdir -p result
	cd objectsnew; for f in *.o; do cmp -s $$f ../result/$$f || mv $$f ../result/; done
	-rm -fr objectsnew
	@touch $@
endif

# This compiles, runs and checks the output of objects/*.o
testNative: fail.txt $(expect_files) $(exe_files)

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

expect/%.txt: ../../../testbuild/testSuite/$(tdir)/%.bal
	@mkdir -p expect
	../../expect.sh $< >$@

clean:
	-rm -rf actual compile.stamp expect fail.txt objects result

.PHONY: clean compileNative testNative

.SECONDEXPANSION:
$(exe_files): $$(patsubst %.exe,%.o,$$@) $$(filter $$(patsubst %.exe,%,$$@).%.o, $(mod_object_files)) $(RT)
	$(CLANG) `llvm-config --ldflags --system-libs` $(CFLAGS) -g -o $@ $^