TESTPROGS=stringHash stringCmp stringConcat stringLen
TESTPROG_STAMPS=$(addsuffix .stamp, $(TESTPROGS))

all: $(TESTPROGS)

test: $(TESTPROG_STAMPS)

%.stamp: %
	./$<
	touch $@

%: %.c
	$(CLANG) $(CFLAGS) -o ./$@ $< ../$(LIB)

clean:
	-rm -f $(TESTPROGS) $(TESTPROG_STAMPS)

.PHONY: all test clean
