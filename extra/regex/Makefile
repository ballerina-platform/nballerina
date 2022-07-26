REGEX_SRC=$(wildcard *.bal)
REGEX_JAR=../../build/extra/bin/nballerina.regex.jar
COMPILER_PACK=../../build/bala/wso2-nballerina-any-0.1.0.bala

build: $(REGEX_JAR)

$(REGEX_JAR): $(REGEX_SRC) $(COMPILER_PACK)
	bal build --target-dir ../../build/extra $(BAL_BUILD_FLAGS)
