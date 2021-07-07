JAVA ?= $(shell ./findJava.sh)
COMPILER_JAR=../compiler/target/bin/nballerina.jar
bal_files = $(wildcard ../compiler/testSuite/[VPO]*.bal)

test: 
	@mkdir -p out/ll
	$(JAVA) -jar $(COMPILER_JAR) --outDir out/ll $(bal_files)
	$(MAKE) -f ll.mk

clean:
	-rm -fr out

.PHONY: test clean
