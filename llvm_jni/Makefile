LLVM_SUFFIX?=-16
COMBINED_SRC_DIR=../testbuild
COMPILER_DIR=../compiler
SUBSET_DOC=../docs/subset15.md
COMPILER_SRC=$(wildcard $(COMPILER_DIR)/*.bal) $(wildcard $(COMPILER_DIR)/modules/*/*.bal)
PRINT_LLVM_SRC=$(wildcard $(COMPILER_DIR)/modules/print.llvm/*.bal) $(COMPILER_DIR)/output.bal
COMBINED_SRC=$(subst $(COMPILER_DIR),$(COMBINED_SRC_DIR),$(filter-out $(PRINT_LLVM_SRC), $(COMPILER_SRC)))
JNI_SRC=$(wildcard ./modules/jni.llvm/*.bal)
INLINE_RUNTIME=../runtime/balrt_inline.bc
RUNTIME=../runtime/balrt.a
DEPENDECIES_DIR=$(COMBINED_SRC_DIR)/target/platform-libs
BASE_JAR=$(COMBINED_SRC_DIR)/target/bin/nballerina_base.jar
COMPILER_JAR=$(COMBINED_SRC_DIR)/target/bin/nballerina.jar
COMPILER_NATIVE=$(COMBINED_SRC_DIR)/target/bin/nballerina
AARCH64_RUNTIME=$(COMBINED_SRC_DIR)/target/bin/balrt_aarch64.a
AARCH64_INLINE_RUNTIME=$(COMBINED_SRC_DIR)/target/bin/balrt_inline_aarch64.bc
BAL_CONFIG?=Ballerina.toml
GENERATED_CONFIGS=jni_config.json reflection_config.json
REFLECTION_CONFIG=../../../llvm_jni/reflection_config.json
JNI_CONFIG=../../../llvm_jni/jni_config.json,../../../llvm_jni/jni_workaround.json
RESOURCE_CONFIG=../../../llvm_jni/resource_config.json
NATIVE_IMAGE_FLAGS?=--no-fallback -H:+StaticExecutableWithDynamicLibC -H:MaxDuplicationFactor=75 \
	-H:ResourceConfigurationFiles=$(RESOURCE_CONFIG) -H:ReflectionConfigurationFiles=$(REFLECTION_CONFIG) \
	-H:JNIConfigurationFiles=$(JNI_CONFIG)
MVN?=mvn
VERSION=0.1
SYSTEM?=linux
ARCH?=amd64
DIST_NAME=nballerina.$(VERSION)-$(SYSTEM)-$(ARCH)
DIST_DIR=../build/$(DIST_NAME)
DIST_AR=../build/$(DIST_NAME).tar.xz
ifeq ($(ARCH), amd64)
	DIST_INLINE_RUNTIME=$(AARCH64_INLINE_RUNTIME) $(INLINE_RUNTIME)
	DIST_RUNTIME=$(RUNTIME) $(AARCH64_RUNTIME)
	DIST_COMPILER=$(COMPILER_NATIVE)
	DIST_BASE_DIR=./dist/native
else
	DIST_INLINE_RUNTIME= $(INLINE_RUNTIME)
	DIST_RUNTIME=$(RUNTIME)
	DIST_COMPILER=$(COMPILER_JAR)
	DIST_BASE_DIR=./dist/jvm
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

$(COMBINED_SRC_DIR)/%.bal: $(COMPILER_DIR)/%.bal
	mkdir -p $(@D)
	sed 's/print.llvm/jni.llvm/g' $< > $@

$(COMPILER_STAMP): $(COMBINED_SRC)
	@touch $@

$(AARCH64_RUNTIME) $(AARCH64_INLINE_RUNTIME):
	$(MAKE) -C ../runtime clean
	$(MAKE) -C ../runtime TARGET="-target aarch64-linux-gnu" dist
	mv $(RUNTIME) $(AARCH64_RUNTIME)
	mv $(INLINE_RUNTIME) $(AARCH64_INLINE_RUNTIME)
	$(MAKE) -C ../runtime clean

$(JNI_STAMP): $(COMPILER_STAMP) $(JNI_SRC)
	cp -r ./modules/jni.llvm $(COMBINED_SRC_DIR)/modules
	cp output.bal $(COMBINED_SRC_DIR)
	cp $(BAL_CONFIG) $(COMBINED_SRC_DIR)/Ballerina.toml
	@touch $@

$(DIST_DIR): $(DIST_COMPILER) $(DIST_RUNTIME) $(RUNTIME_STAMP)
	rm -rf $(DIST_DIR)
	mkdir -p $(DIST_DIR)
	cp $(DIST_RUNTIME) $(DIST_DIR)
	cp $(DIST_COMPILER) $(DIST_DIR)/compiler$(suffix $(DIST_COMPILER))
	cp $(DIST_BASE_DIR)/* $(DIST_DIR)
	cp $(SUBSET_DOC) $(DIST_DIR)/subset.md
	chmod +x $(DIST_DIR)/nballerina.sh

$(RUNTIME_STAMP): $(DIST_INLINE_RUNTIME) $(BASE_JAR)
	cp $(BASE_JAR) $(COMPILER_JAR)
	cp $(INLINE_RUNTIME) $(COMBINED_SRC_DIR)/target/bin
	cd $(COMBINED_SRC_DIR)/target/bin; jar uf nballerina.jar *.bc
	cd $(COMBINED_SRC_DIR)/target/bin; zip -d nballerina.jar ./META-INF/native-image/*
	@touch $@

$(COMPILER_NATIVE): $(COMPILER_JAR) $(RUNTIME_STAMP) $(GENERATED_CONFIGS)
	cd $(COMBINED_SRC_DIR)/target/bin; native-image $(NATIVE_IMAGE_FLAGS) -jar nballerina.jar

$(COMPILER_JAR): $(BASE_JAR) $(RUNTIME_STAMP)

$(BASE_JAR): $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal build --offline
	mv $(COMPILER_JAR) $(BASE_JAR)

$(RUNTIME) $(INLINE_RUNTIME):
	$(MAKE) -C ../runtime dist

%.tar.xz: %
	tar -cJf $@ -C $(@D) $(<F)

test: $(DEPENDENCIES_STAMP) $(COMPILER_STAMP) $(JNI_STAMP)
	cd $(COMBINED_SRC_DIR); bal test --offline --tests nballerina:testCompileVPO

dist: $(DIST_AR)

clean:
	-rm -rf $(COMBINED_SRC_DIR)

.PHONY: all clean dist test
# We are building multiple runtimes (for each cross compilation target) which needs to be done sequentially
.NOTPARALLEL: $(RUNTIME_STAMP)
