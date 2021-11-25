COMPILER_SRC=$(wildcard *.bal) $(wildcard modules/*/*.bal)
COMPILER_JAR=../build/bin/nballerina.jar
BAL?=bal
BAL_BUILD_FLAGS ?= --offline

all: $(COMPILER_JAR)

test:
	$(BAL) test $(BAL_BUILD_FLAGS)

$(COMPILER_JAR): $(COMPILER_SRC)
	$(BAL) build --target-dir ../build $(BAL_BUILD_FLAGS)

clean:
	$(BAL) clean
	rm -rf $(COMPILER_OUT)

.PHONY: all test clean

