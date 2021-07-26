testString: testString.c
	$(CLANG) $(CFLAGS) -o ./$@ $< ../$(LIB)
	./testString

valgrindString: testString
	$(VALGRIND) ./testString

coverageString: CFLAGS=-fprofile-instr-generate -fcoverage-mapping
coverageString: testString
	llvm-profdata merge -sparse default.profraw -o string.profdata
	-rm -f default.profraw
	llvm-cov show ./testString -instr-profile=string.profdata


clean:
	-rm -f testString *.profraw *.profdata