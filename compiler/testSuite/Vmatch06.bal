import ballerina/io;

public function main() {
    io:println(foo(1)); // @output 1 + 1
    io:println(foo(2)); // @output 2 + 2
    io:println(foo(3)); // @output 3
    io:println(foo(4)); // @output miss
}

public function foo(int x) returns string {
    match x {
        1|2|3 => {
            match x + x {
                2 => { 
                    return "1 + 1";
                }
                4 => {
                    return "2 + 2";
                }
            }
            return "3";
        }
    }
    return "miss";
}
