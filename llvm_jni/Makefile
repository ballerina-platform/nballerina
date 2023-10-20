COMBINED_SRC_DIR=../testbuild
COMPILER_DIR=../compiler
COMPILER_SRC=$(wildcard $(COMPILER_DIR)/*.bal) $(wildcard $(COMPILER_DIR)/modules/*/*.bal)
JNI_SRC=$(wildcard ./modules/jni.llvm/*.bal)
INLINE_RUNTIME=../runtime/balrt_inline.bc
RUNTIME=../runtime/balrt.a
DEPENDECIES_DIR=$(COMBINED_SRC_DIR)/target/platform-libs
COMPILER_JAR=$(COMBINED_SRC_DIR)/target/bin/nballerina.jar
COMPILER_NATIVE=$(COMBINED_SRC_DIR)/target/bin/nballerina
BAL_CONFIG?=Ballerina.toml
GENERATED_CONFIGS=jni_config.json reflection_config.json
REFLECTION_CONFIG=../../../llvm_jni/reflection_config.json
JNI_CONFIG=../../../llvm_jni/jni_config.json,../../../llvm_jni/jni_workaround.json
MVN?=mvn
VERSION=0.1
SYSTEM?=linux
ARCH?=x86_64

DIST_NAME=nballerina.$(VERSION)-$(SYSTEM)-$(ARCH)
DIST_DIR=../build/$(DIST_NAME)

JAR_DIST_NAME=nballerina.$(VERSION)-jvm-$(ARCH)
JAR_DIST_DIR=../build/$(JAR_DIST_NAME)

ifeq ($(ARCH), x86_64)
	DIST_FILES=../build/$(DIST_NAME).tar.gz ../build/$(JAR_DIST_NAME).tar.gz
else
	DIST_FILES=../build/$(JAR_DIST_NAME).tar.gz
endif

# Finished copying jar files of dependencies
DEPENDENCIES_STAMP=$(COMBINED_SRC_DIR)/dependencies.stamp
# Finished copying compiler source files
COMPILER_STAMP=$(COMBINED_SRC_DIR)/compiler.stamp
# Finished copying jni source files
JNI_STAMP=$(COMBINED_SRC_DIR)/jni.stamp
# Added inline runtime to the nballerina.jar file
RUNTIME_STAMP=$(COMBINED_SRC_DIR)/runtime.stamp

all: $(COMPILER_NATIVE)

$(GENERATED_CONFIGS): jniConfigGen.py $(JNI_SRC)
	python3 jniConfigGen.py $(JNI_SRC)

$(DEPENDENCIES_STAMP):pom.xml $(COMPILER_STAMP) $(JNI_STAMP)
	-rm -rf $(DEPENDECIES_DIR)
	$(MVN) -U compile
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

$(JAR_DIST_DIR): $(COMPILER_JAR) $(RUNTIME_STAMP) $(RUNTIME)
	rm -rf $(JAR_DIST_DIR)
	mkdir -p $(JAR_DIST_DIR)
	cp $(RUNTIME) $(JAR_DIST_DIR)
	cp $(COMPILER_JAR) $(JAR_DIST_DIR)/compiler.jar
	cp ./nballerinaJar.sh $(JAR_DIST_DIR)/nballerina.sh
	cp ./JAVA_DIST_README.md $(DIST_DIR)/README.md

$(DIST_DIR): $(COMPILER_NATIVE) $(RUNTIME_STAMP) $(RUNTIME)
	rm -rf $(DIST_DIR)
	mkdir -p $(DIST_DIR)
	cp $(RUNTIME) $(DIST_DIR)
	cp $(COMPILER_NATIVE) $(DIST_DIR)/compiler
	cp ./nballerina.sh $(DIST_DIR)/nballerina
	cp ./DIST_README.md $(DIST_DIR)/README.md

$(INLINE_RUNTIME) $(RUNTIME):
	$(MAKE) -C ../runtime all

$(RUNTIME_STAMP): $(INLINE_RUNTIME) $(COMPILER_JAR)
	cp $(INLINE_RUNTIME) $(COMBINED_SRC_DIR)/target/bin
	cd $(COMBINED_SRC_DIR)/target/bin; jar uf nballerina.jar balrt_inline.bc
	cd $(COMBINED_SRC_DIR)/target/bin; zip -d nballerina.jar ./META-INF/native-image/*
	rm $(COMBINED_SRC_DIR)/target/bin/balrt_inline.bc
	@touch $@

$(COMPILER_NATIVE): $(COMPILER_JAR) $(RUNTIME_STAMP) $(GENERATED_CONFIGS)
	cd $(COMBINED_SRC_DIR)/target/bin; native-image --no-fallback -H:+StaticExecutableWithDynamicLibC -H:MaxDuplicationFactor=75 -H:ResourceConfigurationFiles=../../../llvm_jni/resource_config.json -H:ReflectionConfigurationFiles=$(REFLECTION_CONFIG) -H:JNIConfigurationFiles=$(JNI_CONFIG) -jar nballerina.jar

$(COMPILER_JAR): $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal build --offline

%.tar.gz: %
	tar -czf $@ -C $(@D) $(<F)

test: $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal test --offline --tests nballerina:testCompileVPO

jar : $(COMPILER_JAR)

dist: $(DIST_FILES)

clean:
	-rm -rf $(COMBINED_SRC_DIR)
	-rm -rf $(JAR_DIST_DIR)
	-rm -rf $(DIST_DIR)

.PHONY: all clean dist jar test
