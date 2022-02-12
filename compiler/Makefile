COMPILER_SRC=$(wildcard *.bal) $(wildcard modules/*/*.bal)
COMPILER_JAR=../build/bin/nballerina.jar
BAL?=bal
BAL_BUILD_FLAGS ?= --offline

all: $(COMPILER_JAR)

test:
	@if [ $(wat) = "true" ]; then\
    	$(BAL) test --offline --tests "nballerina:testCompileVPO#'01*";\
	else\
		$(BAL) test $(BAL_BUILD_FLAGS);\
    fi

$(COMPILER_JAR): $(COMPILER_SRC)
	$(BAL) build --target-dir ../build --offline

clean:
	$(BAL) clean
	-rm -rf ../build

.PHONY: all test clean

