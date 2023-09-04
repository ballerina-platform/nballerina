import ballerina/io;
type F function(int, int) returns int;

public function main() {
    F f = function(int... a) returns int {
            int sum = 0;
            foreach int i in 0 ..< a.length() {
                sum += a[i];
            }
            return sum;
    };
    int x = f(1, 2);
    io:println(x); // @output 3
}
