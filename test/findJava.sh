#!/bin/sh
bal_command=`which bal`
bal_command=`realpath "$bal_command"`
bal_dir=`dirname "$bal_command"`
jre_bin_dir=`realpath "$bal_dir/../dependencies/jdk-11.0.15+10-jre/bin"`
echo "$jre_bin_dir/java"
