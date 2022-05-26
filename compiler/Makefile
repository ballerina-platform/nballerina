COMPILER_SRC=$(wildcard *.bal) $(wildcard modules/*/*.bal)
COMPILER_JAR=../build/bin/nballerina.jar
BAL?=bal
BAL_BUILD_FLAGS ?= --offline

ifneq (BAL_ALL_TESTS, true)
BAL_TEST_FLAGS ?= --disable-groups longRunning
endif

all: $(COMPILER_JAR)

test:
	$(BAL) test $(BAL_TEST_FLAGS) $(BAL_BUILD_FLAGS)

$(COMPILER_JAR): $(COMPILER_SRC)
	$(BAL) build --target-dir ../build $(BAL_BUILD_FLAGS)

clean:
	$(BAL) clean
	-rm -rf ../build

.PHONY: all test clean

