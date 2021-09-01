LLVM_SUFFIX?=-11
CLANG ?= clang$(LLVM_SUFFIX)
OBJS=atomic.o dwarf.o fileline.o posix.o sort.o state.o backtrace.o simple.o elf.o mmapio.o mmap.o
CFLAG=-funwind-tables
CWARNING=-W -Wall -Wwrite-strings -Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition -Wmissing-format-attribute -Wcast-qual
LIB=libbacktrace.a

all: $(LIB)

$(LIB): $(OBJS)
	$(AR) r $@ $^

%.o: %.c 
	$(CLANG) -DHAVE_CONFIG_H -I. $(CFLAG) -frandom-seed=$< $(CWARNING) -g -O2 -c -o $@ $<

clean:
	-rm -f $(LIB) $(OBJS)
