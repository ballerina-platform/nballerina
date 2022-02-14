import ballerina/io;

type Numbers [int, float, decimal, int...];

public function main() {
    Numbers nums = [1, 2, 3, 4, 5];
    int n = nums[0] + nums[3] + nums[4];
    io:println(n); // @output 10
    float f = nums[1] + 0.5;
    io:println(f); // @output 2.5
    decimal d = nums[2] + 0.5d;
    io:println(d); // @output 3.5
}
