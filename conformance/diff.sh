for f in ./output/*.balt; do
    basename=$(basename $f)
    original=$(find ./ballerina-spec/conformance -name $basename)
    diff $f $original
done
