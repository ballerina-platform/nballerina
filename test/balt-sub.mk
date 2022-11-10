COMPILER_JAR=../../../build/compiler/bin/nballerina.jar
JAVA ?= $(shell ../../../test/findJava.sh)
TARGETS=all test testll compile
LLVM_SUFFIX ?=-13
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
CFLAGS ?= -O2
RT=../../../runtime/balrt.a
RT_INLINE=../../../runtime/balrt_inline.bc

ll_files = $(wildcard ll/*-[vpo].ll)
diff_files = $(addsuffix .diff, $(addprefix result/, $(basename $(notdir $(ll_files)))))
exe_files = $(addsuffix .exe, $(addprefix result/, $(basename $(notdir $(ll_files)))))
expect_files = $(wildcard ./expect/*.txt)
balt_files = $(wildcard $(balt_dir)/*.balt)

test: all
	$(MAKE) -f ../../balt-sub.mk tdir=$(tdir) testll

all:
	if test $(COMPILER_JAR) -nt compile.stamp; then rm -f compile.stamp; fi
	$(MAKE) -f ../../balt-sub.mk tdir=$(tdir) compile

compile: compile.stamp

compile.stamp: $(balt_files)
	$(JAVA) -jar $(COMPILER_JAR) --outDir ll --expectOutDir expect $^
	mkdir -p ll
	mkdir -p expect
	@touch $@

# This compiles, runs and checks the output of ll/*.ll
testll: fail.txt $(expect_files) $(exe_files)

fail.txt: $(diff_files)
	@>$@
	@for f in $^; do \
		if test -s $$f; then \
			echo $(tdir)$$f failed | sed -e 's;result/*[0-9]*L0*;.balt:;'  -e 's;-[vpe]\.diff;;' >>$@; \
		fi \
	done
	@cat $@
	@test ! -s $@

result/%.diff: result/%.exe expect/%.txt
	-../../runcheck.sh $^ >$@

result/%.bc: ll/%.ll $(RT_INLINE)
	@mkdir -p result
	$(LLVM_LINK) -o $@ $^

result/%.exe: result/%.bc result/%._init.bc $(RT)
	$(CLANG) $(CFLAGS) -o $@ $^

clean:
	-rm -rf actual compile.stamp expect fail.txt ll result

.PHONY: $(TARGETS)
