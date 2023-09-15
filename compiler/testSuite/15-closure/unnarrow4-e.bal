import ballerina/io;
public function main() {
    int|boolean|float x = true;
    if x is boolean|float {
        function() f = function() {
            x = 8;
        };
        f();
        boolean|float v = x; // @error
        io:println(v);
    }
}
