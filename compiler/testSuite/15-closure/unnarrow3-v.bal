import ballerina/io;
type F1 function() returns F;
type F function() returns int;
public function main() {
    int a = 10;
    F1 f = function() returns F {
        if a is byte {
            return function() returns int {
                return a * -1;
            };
        }
        return function() returns int {
            return a * 10;
        };
    };
    F f0 = f();
    io:println(f0()); // @output -10
}
