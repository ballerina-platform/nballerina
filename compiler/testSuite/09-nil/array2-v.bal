import ballerina/io;

public function main() {
    ()[] moreOfNothings = [(), (), ()];
    io:println(moreOfNothings.length()); // @output 3
}
