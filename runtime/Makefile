CLANG ?= clang-11
OBJS=alloc.o list.o main.o panic.o print.o
INCLUDES=tag.h balrt.h
AR=ar
LIB=balrt.a

$(LIB): $(OBJS)
	$(AR) r $@ $^

%.o: %.c
	$(CLANG) $(CFLAGS) -c -o $@ $<

$(OBJS): $(INCLUDES)

clean:
	-rm -f $(LIB) $(OBJS)
