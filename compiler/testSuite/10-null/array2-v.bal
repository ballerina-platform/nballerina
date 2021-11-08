import ballerina/io;

public function main() {
    ()[] moreOfNothings = [(), null, ()];
    io:println(moreOfNothings.length()); // @output 3
}
