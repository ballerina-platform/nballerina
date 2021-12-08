import ballerina/io;

type J ()|boolean|int|float|string|J[]|map<J>;
type IntJ ()|boolean|int|string|IntJ[]|map<IntJ>;


public function main() {
    int[] iv = [17];
    IntJ ij = iv;
    J j = ij;
    if j is IntJ[] {
        io:println(j[0]); // @output 17
    }
}
