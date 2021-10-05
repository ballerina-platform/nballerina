import ballerina/io;

type Nothing ();

public function main() {
    io:println(pairOfNothings().length()); // @output 2
}

public function pairOfNothings() returns Nothing[] {
    return [(), ()];
}
