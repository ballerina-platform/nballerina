import ballerina/io;

public function main() {
    io:println(foo(())); // @output nil
    io:println(foo(1)); // @output odd
    io:println(foo("hello")); // @output greeting
    io:println(foo(true)); // @output boolean
    io:println(foo(9)); // @output odd
    io:println(foo("hi")); // @output other
    io:println(foo([0])); // @output other
    io:println(foo(false)); // @output other
}


function foo(any v) returns string {
    match v {
        0 => {
            return "nil";
        }
        1|3|5|7|9 => {
            return "odd";
        }
        true => {
            return "boolean";
        }
        "hello" => {
           return "greeting";
        }
        _ => {
            return "other";
        }
    }
}