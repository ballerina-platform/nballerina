LLVM_SUFFIX?=-11
export CLANG ?= clang$(LLVM_SUFFIX)

AR = ar
OBJS = generate.o hash_table.o roots.o
ROOTS = roots.a

all: $(ROOTS)
	$(MAKE) -C third-party-lib/libbacktrace all
	
$(ROOTS): $(OBJS)
	$(AR) r $@ $^

%.o: %.c
	$(CLANG) -O2 -c -o $@ $<

clean:
	-rm -f $(ROOTS) $(OBJS)
	$(MAKE) -C third-party-lib/libbacktrace clean