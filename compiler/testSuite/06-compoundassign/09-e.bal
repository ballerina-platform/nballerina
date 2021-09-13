// @productions compound-assignment-stmt boolean-literal local-var-decl-stmt
public function main() {
    boolean x = true;
    x >>= false; // @error
}