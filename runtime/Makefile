LLVM_SUFFIX=-11
CLANG ?= clang$(LLVM_SUFFIX)
LLVM_AS ?= llvm-as$(LLVM_SUFFIX)
LLVM_LINK ?= llvm-link$(LLVM_SUFFIX)
VALGRIND ?= valgrind
OBJS=alloc.o list.o main.o mapping.o panic.o print.o string.o int.o
INCLUDES=tag.h balrt.h
AR=ar
LIB=balrt.a
BCLIB=balrt_inline.bc

all: $(LIB) $(BCLIB)

test: all testrt
	./testrt

valgrind: all testrt
	$(VALGRIND) ./testrt

$(LIB): $(OBJS)
	$(AR) r $@ $^

testrt: testrt.c $(LIB) $(BCLIB)
	$(CLANG) $(CFLAGS) -o $@ $< $(BCLIB) $(LIB)

%.o: %.c
	$(CLANG) $(CFLAGS) -c -o $@ $<

%.bc: %.ll
	sed -e '/define .*@_B[a-zA-Z]/s/^define /define linkonce_odr /' -e '/target datalayout/ s/"$$/-ni:1"/' $< | $(LLVM_AS) >$@

# we have to use -O2 here, otherwise the function will get a noinline attribute
%.ll: %.c
	$(CLANG) $(CFLAGS) -O2 -S -emit-llvm -o $@ $<

$(OBJS) $(BCLIB): $(INCLUDES)

clean:
	-rm -f $(LIB) $(OBJS) $(BCLIB) testrt
