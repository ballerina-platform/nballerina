COMPILER_SRC=$(wildcard *.bal) $(wildcard modules/*/*.bal)
COMPILER_JAR=target/bin/nballerina.jar
BAL?=bal
BAL_BUILD_FLAGS ?= --offline

all: $(COMPILER_JAR)

test:
	$(BAL) build $(BAL_BUILD_FLAGS)

$(COMPILER_JAR): $(COMPILER_SRC)
	$(BAL) build $(BAL_BUILD_FLAGS)

clean:
	$(BAL) clean

.PHONY: all test clean

