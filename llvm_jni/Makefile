COMBINED_SRC_DIR=../testbuild
COMPILER_DIR=../compiler
COMPILER_SRC=$(wildcard $(COMPILER_DIR)/*.bal) $(wildcard $(COMPILER_DIR)/modules/*/*.bal)
JNI_SRC=$(wildcard ./modules/jni.llvm/*.bal)
INLINE_RUNTIME=../runtime/balrt_inline.bc
DEPENDECIES_DIR=$(COMBINED_SRC_DIR)/target/platform-libs
COMPILER_JAR=$(COMBINED_SRC_DIR)/target/nballerina.jar
NATIVE_EXE=$(COMBINED_SRC_DIR)/target/nballerina
BAL_CONFIG=Ballerina.toml

# Finished copying jar files of dependencies
DEPENDENCIES_STAMP=$(COMBINED_SRC_DIR)/dependencies.stamp
# Finished copying compiler source files
COMPILER_STAMP=$(COMBINED_SRC_DIR)/compiler.stamp
# Finished copying jni source files
JNI_STAMP=$(COMBINED_SRC_DIR)/jni.stamp
# Added inline runtime to the nballerina.jar file
RUNTIME_STAMP=$(COMBINED_SRC_DIR)/runtime.stamp

$(DEPENDENCIES_STAMP):pom.xml $(COMPILER_STAMP) $(JNI_STAMP)
	-rm -rf $(DEPENDECIES_DIR)
	mvn -U compile
	mkdir -p $(DEPENDECIES_DIR)
	find ~/.m2/repository/org/bytedeco -name "*.jar" -exec cp "{}" $(DEPENDECIES_DIR) \;
	@touch $@

$(COMPILER_STAMP): $(COMPILER_SRC)
	mkdir -p $(COMBINED_SRC_DIR)
	cp -r $(COMPILER_DIR)/* $(COMBINED_SRC_DIR)
	find $(COMBINED_SRC_DIR) -type f -name "*.bal" -exec sed -i 's/print.llvm/jni.llvm/g' {} \;
	rm -rf $(COMBINED_SRC_DIR)/modules/print.llvm
	rm $(COMBINED_SRC_DIR)/output.bal
	@touch $@

$(JNI_STAMP): $(COMPILER_STAMP) $(JNI_SRC)
	cp -r ./modules/jni.llvm $(COMBINED_SRC_DIR)/modules
	cp output.bal $(COMBINED_SRC_DIR)
	cp $(BAL_CONFIG) $(COMBINED_SRC_DIR)/Ballerina.toml
	@touch $@

$(INLINE_RUNTIME):
	$(MAKE) -C ../runtime all

$(RUNTIME_STAMP): $(INLINE_RUNTIME) $(COMPILER_JAR)
	cp $(INLINE_RUNTIME) $(COMBINED_SRC_DIR)/target/bin
	cd $(COMBINED_SRC_DIR)/target/bin; jar uf nballerina.jar balrt_inline.bc
	rm $(COMBINED_SRC_DIR)/target/bin/balrt_inline.bc
	@touch $@

$(NATIVE_EXE): $(COMPILER_JAR) $(RUNTIME_STAMP)
	cd $(COMBINED_SRC_DIR)/target/bin; zip -d nballerina.jar ./META-INF/native-image/*
	find ./modules/jni.llvm -maxdepth 1 -name "*.bal"| xargs python3 jniConfigGen.py
	cd $(COMBINED_SRC_DIR)/target/bin; native-image --no-fallback -H:MaxDuplicationFactor=100 -H:ResourceConfigurationFiles=../../../llvm_jni/resource_config.json -H:ReflectionConfigurationFiles=../../../llvm_jni/reflection_config.json -H:JNIConfigurationFiles=../../../llvm_jni/jni_config.json,../../../llvm_jni/jni_workaround.json -jar nballerina.jar

$(COMPILER_JAR): $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal build --offline

test: $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal test --offline --tests nballerina:testCompileVPO

build: $(COMPILER_JAR)

buildWithRuntime: $(RUNTIME_STAMP)

buildNative: $(NATIVE_EXE)

.PHONY: clean test build buildWithRuntime buildNative

clean:
	-rm -rf $(COMBINED_SRC_DIR)
