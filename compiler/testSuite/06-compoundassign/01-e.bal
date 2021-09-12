// @productions compound-assignment-stmt boolean-literal local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    boolean b = true;
    x += b; // @error
}