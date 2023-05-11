COMBINED_SRC_DIR=../testbuild
COMPILER_DIR=../compiler
INLINE_RUNTIME=../runtime/balrt_inline.bc
DEPENDECIES_DIR=$(COMBINED_SRC_DIR)/target/platform-libs
COMPILER_JAR=$(COMBINED_SRC_DIR)/target/nballerina.jar

DEPENDENCIES_STAMP=$(COMBINED_SRC_DIR)/dependencies.stamp
COMPILER_STAMP=$(COMBINED_SRC_DIR)/compiler.stamp
JNI_STAMP=$(COMBINED_SRC_DIR)/jni.stamp
RUNTIME_STAMP=$(COMBINED_SRC_DIR)/runtime.stamp

$(DEPENDENCIES_STAMP):pom.xml $(COMPILER_STAMP) $(JNI_STAMP)
	-rm -rf $(DEPENDECIES_DIR)
	mvn -U compile
	mkdir -p $(DEPENDECIES_DIR)
	find ~/.m2/repository/org/bytedeco -name "*.jar" -exec cp "{}" $(DEPENDECIES_DIR) \;
	@touch $@

# TODO: add dependency on source code
$(COMPILER_STAMP):
	mkdir -p $(COMBINED_SRC_DIR)
	cp -r $(COMPILER_DIR)/* $(COMBINED_SRC_DIR)
	find $(COMBINED_SRC_DIR) -type f -name "*.bal" -exec sed -i 's/print.llvm/jni.llvm/g' {} \;
	rm -rf $(COMBINED_SRC_DIR)/modules/print.llvm
	rm $(COMBINED_SRC_DIR)/output.bal
	@touch $@

$(JNI_STAMP):
	cp -r ./modules/jni.llvm $(COMBINED_SRC_DIR)/modules
	cp output.bal $(COMBINED_SRC_DIR)
	cp Ballerina.toml $(COMBINED_SRC_DIR)
	@touch $@

$(INLINE_RUNTIME):
	$(MAKE) -C ../runtime all

$(RUNTIME_STAMP): $(INLINE_RUNTIME) $(COMPILER_JAR)
	cp $(INLINE_RUNTIME) $(COMBINED_SRC_DIR)/target/bin
	cd $(COMBINED_SRC_DIR)/target/bin; jar uf nballerina.jar balrt_inline.bc
	rm $(COMBINED_SRC_DIR)/target/bin/balrt_inline.bc
	@touch $@

$(COMPILER_JAR): $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal build --offline

build: $(COMPILER_JAR) $(RUNTIME_STAMP)

.PHONY: clean build

clean:
	-rm -rf $(COMBINED_SRC_DIR)
