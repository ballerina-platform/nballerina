import ballerina/io;
type F function (int) returns int;
public function main() {
    int val = 10;
    F f = function(int a) returns int {
        val += a;
        return 5;
    };
    match val {
        10 => {
            int res = f(2) + val;
            io:println(res); // @output 17
        }
    }
}
