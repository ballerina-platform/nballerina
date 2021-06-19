LLVM_SUFFIX=-11
CLANG=clang$(LLVM_SUFFIX)
DIS=llvm-dis$(LLVM_SUFFIX)
OPT=opt$(LLVM_SUFFIX)
OPTFLAGS=--O2
CLANGFLAGS=-O2

ALL=testtaggedptr taggedptr.s testunion union.s

all: $(ALL)

testtaggedptr: test.c taggedptr.ll
	$(CLANG) $(CLANGFLAGS) -o testtaggedptr test.c taggedptr.ll

testunion: test.c union.c
	$(CLANG) $(CLANGFLAGS) -o testunion test.c union.c

taggedptr.s: taggedptr.ll
	$(CLANG) $(CLANGFLAGS) -S taggedptr.ll

union.s: union.c
	$(CLANG) $(CLANGFLAGS) -S union.c

clean:
	rm -f $(ALL)
