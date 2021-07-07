#!/bin/sh
JAVA_COMMAND=`./findJava.sh`
mkdir -p out/ll
$JAVA_COMMAND -jar ../compiler/target/bin/nballerina.jar --outDir out/ll ../compiler/testSuite/[VPO]*.bal
