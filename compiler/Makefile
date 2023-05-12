COMPILER_SRC=$(wildcard *.bal) $(wildcard modules/*/*.bal)
COMPILER_JAR=../build/compiler/bin/nballerina.jar
COMPILER_PACK=../build/pack/bala/wso2-nballerina-any-0.1.0.bala
BAL?=bal
BAL_BUILD_FLAGS ?= --offline

# This disables long running test for the `make test` command, use `bal test` from the compiler directory to run all tests
BAL_TEST_FLAGS ?= $(BAL_BUILD_FLAGS) --disable-groups longRunning

all: $(COMPILER_JAR)

pack: $(COMPILER_PACK)

test:
	$(BAL) test $(BAL_TEST_FLAGS)

$(COMPILER_JAR): $(COMPILER_SRC)
	$(BAL) build --target-dir ../build/compiler $(BAL_BUILD_FLAGS)

$(COMPILER_PACK): $(COMPILER_SRC)
	$(BAL) pack --target-dir ../build/pack $(BAL_BUILD_FLAGS)
	$(BAL) push $(COMPILER_PACK) --repository=local

clean:
	$(BAL) clean
	-rm -rf ../build

.PHONY: all pack test clean

