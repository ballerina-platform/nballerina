COMPILER_SRC=$(wildcard *.bal) $(wildcard modules/*/*.bal)
COMPILER_JAR=../build/bin/nballerina.jar
BAL?=bal
BAL_BUILD_FLAGS ?= --offline

# This disables long running test for the `make test` command, use `bal test` from the compiler directory to run all tests
BAL_TEST_FLAGS ?= $(BAL_BUILD_FLAGS) --disable-groups longRunning

all: $(COMPILER_JAR)

test testll testwat:
	$(BAL) test $(BAL_TEST_FLAGS)

$(COMPILER_JAR): $(COMPILER_SRC)
	$(BAL) build --target-dir ../build --offline

clean:
	$(BAL) clean
	-rm -rf ../build

.PHONY: all test clean testll testwat

