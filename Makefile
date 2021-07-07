COMPILER_SRC=$(wildcard compiler/*.bal) $(wildcard compiler/modules/*/*.bal)
COMPILER_JAR=compiler/target/bin/nballerina.jar
BAL?=bal
CLANG?=clang-11
CFLAGS=-O2
JAVA?=$(shell test/findJava.sh)
export CLANG CFLAGS BAL JAVA

all: $(COMPILER_JAR)
	$(MAKE) -C runtime

test: $(COMPILER_JAR)
	$(MAKE) -C runtime
	$(MAKE) -C test test

$(COMPILER_JAR): $(COMPILER_SRC)
	cd compiler && $(BAL) build --offline --skip-tests

clean:
	cd compiler && $(BAL) clean
	$(MAKE) -C runtime clean
	$(MAKE) -C test clean

.PHONY: clean test all runtime

