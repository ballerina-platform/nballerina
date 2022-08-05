REGEX_SRC=$(wildcard *.bal)
REGEX_JAR=../../build/compiler/extra/bin/nballerina.regex.jar
COMPILER_PACK=../../build/pack/bala/wso2-nballerina-any-0.1.0.bala
COMPILER_SRC=$(wildcard ../../compiler/*.bal) $(wildcard ../../compiler/modules/*/*.bal)
TARGETS=all clean test

all: $(REGEX_JAR)

clean:
	rm -f $(REGEX_JAR)

$(REGEX_JAR): $(REGEX_SRC) $(COMPILER_PACK)
	bal build --target-dir ../../build/extra $(BAL_BUILD_FLAGS)

$(COMPILER_PACK): $(COMPILER_SRC)
	$(MAKE) -C ../.. target=pack compiler.d

.PHONY: $(TARGETS)
