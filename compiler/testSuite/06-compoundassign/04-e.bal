// @productions compound-assignment-stmt string-literal local-var-decl-stmt int-literal
public function main() {
    string x = "test";
    int b = 1;
    x += b; // @error
}