// @productions panic-stmt error-constructor-expr string-literal
import ballerina/io; // @error

public function main() {
    panic error("unused import");
}
