import ballerina/io;

public function main() {
    any[] answers = [0xACCACA, 0xDABACCA, 0xACCACACA];
    io:println(answers[1]); // @output 229354698
}
