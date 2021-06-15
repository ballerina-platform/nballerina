#!/bin/sh
JAVA_COMMAND=`./findJava.sh`
$JAVA_COMMAND -jar ../compiler/target/bin/nballerina.jar --outDir . ../compiler/testSuite/[VP]*.bal
