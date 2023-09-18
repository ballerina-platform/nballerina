import ballerina/io;
type F1 function() returns F;
type F function();
public function main() {
    final int a = 5;
    F1 f = function() returns F {
        return function() {
            a = 10; // @error
            io:println(a);
        };
    };
    io:println(f());
}
