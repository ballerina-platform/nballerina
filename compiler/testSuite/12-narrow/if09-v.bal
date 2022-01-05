import ballerina/io;

type R record {|
    boolean b;
|};

public function main() {
    R r = { b: true };
    func(r);
}

function func(R r) {
    int|boolean|float x = 0.1;
    if r.b == true {
        if x is int {
            return;
        }
        boolean|float bf1 = x;
        io:println(bf1); // @output 0.1
    }

    int|boolean|float bf2 = x;
    io:println(bf2); // @output 0.1
}
