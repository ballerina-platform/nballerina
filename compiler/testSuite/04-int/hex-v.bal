// @productions list-type-descriptor list-constructor-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any[] answers = [0xACCACA, 0xDABACCA, 0xACCACACA];
    io:println(answers[1]); // @output 229354698
}
