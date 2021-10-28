// @productions compound-assignment-stmt local-var-decl-stmt int-literal
public function main() {
    int INT_MAX = 9223372036854775807;
    INT_MAX *= 2; // @panic arithmetic overflow
}


