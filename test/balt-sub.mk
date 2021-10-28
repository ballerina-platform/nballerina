COMPILER_JAR=../../../compiler/target/bin/nballerina.jar
JAVA ?= $(shell ../../findJava.sh)
TARGETS=all test testll compile
LLVM_SUFFIX ?=-12
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
CFLAGS ?= -O2
RT=../../../runtime/balrt.a
RT_INLINE=../../../runtime/balrt_inline.bc

ll_files = $(wildcard ll/*.ll)
diff_files = $(addsuffix .diff, $(addprefix result/, $(basename $(notdir $(ll_files)))))

test: all
	$(MAKE) -f ../../balt-sub.mk tdir=$(tdir) testll

all:
	if test $(COMPILER_JAR) -nt compile.stamp; then rm -f compile.stamp; fi
	$(MAKE) -f ../../balt-sub.mk tdir=$(tdir) compile

compile: compile.stamp

compile.stamp: ../../../compiler/testSuite/$(tdir).balt
	-rm -fr llnew
	-rm -fr expectnew
	$(JAVA) -jar $(COMPILER_JAR) --outDir llnew --expectOutDir expectnew $^
	mkdir -p ll
	mkdir -p expect
	-../../update.sh expectnew expect txt
	-../../update.sh llnew ll ll
	-rm -fr llnew
	-rm -fr expectnew
	@touch $@

testll: fail.txt
	@echo testll

fail.txt: $(diff_files)
	@>$@
	@for f in $^; do \
		if test -s $$f; then \
			echo $(tdir)$$f failed | sed -e 's;result/[0-9]*L0*;.balt:;'  -e 's;-[vpe]\.diff;;' >>$@; \
		fi \
	done
	@cat $@
	@test ! -s $@

result/%.diff: result/%.exe expect/%.txt
	-../../runcheck.sh $^ >$@

result/%.exe: result/%.bc $(RT)
	$(CLANG) $(CFLAGS) $< -o $@ $(RT)

result/%.bc: ll/%.ll $(RT_INLINE)
	@mkdir -p result
	$(LLVM_LINK) -o $@ $^

.PHONY: $(TARGETS)
