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
    int|boolean|float y = true;
    if r.b == true {
        if x is int|boolean {
            return;
        }
        if y is float|int {
            return;
        }
    }
    else {
        if x is boolean|float {
            return;
        }
        if y is boolean|int {
            return;
        }
    }
    float|int fi = x;
    boolean|float bi = y;
    io:println(fi); // @output 0.1
    io:println(bi); // @output true
}
