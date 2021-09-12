// @productions match-stmt string string-literal list-constructor-expr boolean-literal return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(0)); // @output zero
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
            return "zero";
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