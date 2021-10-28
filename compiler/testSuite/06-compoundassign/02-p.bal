// @productions compound-assignment-stmt unary-expr additive-expr local-var-decl-stmt int-literal
public function main() {
    int INT_MIN = -9223372036854775807 - 1;
    INT_MIN -=1; // @panic arithmetic overflow
}


