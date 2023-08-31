import ballerina/io;

type F1 function(1|2) returns "a"|"b";
type F2 function(2|3) returns "b"|"c";

type Fx F1&F2;

public function main() {
    final "b" returnVal = "b";
    F1 f = function(1|2|3 a) returns "a"|"b" {
        return returnVal;
    };
    Fx fx = <Fx>f; // @panic bad type cast
    io:println(fx);
}
