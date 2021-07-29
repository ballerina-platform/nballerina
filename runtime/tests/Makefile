tests = stringHash stringCmp stringConcat
testString: $(tests)

$(tests): %: %.c
	$(CLANG) $(CFLAGS) -o ./$@ $< ../$(LIB)
	./$@
clean:
	-rm -f $(tests)
