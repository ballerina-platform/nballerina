#!/bin/sh
JAVA_COMMAND=`../../test/findJava.sh`
$JAVA_COMMAND -jar ../target/bin/nballerina.jar --outDir . ../../compiler/testSuite/[VPO]*.bal
