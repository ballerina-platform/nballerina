import ballerina/io;

type Sign "+"|"-"|"";

public function main() {
    Sign[] signs = [];
    signs[2] = "-";
    signs[0] = "+";
    io:println(signs[0] + signs[1] + signs[2]); // @output +-
}
