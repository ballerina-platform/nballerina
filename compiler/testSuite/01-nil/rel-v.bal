// @productions boolean relational-expr boolean-literal return-stmt function-call-expr
import ballerina/io;
public function main() {
    toNil(toNil(true) < toNil(false)); // @output true
                                       // @output false
                                       // @output false

    toNil(toNil(false) <= toNil(true)); // @output false
                                        // @output true
                                        // @output true
}

function toNil(boolean b) {
    io:println(b);
    return;
}

