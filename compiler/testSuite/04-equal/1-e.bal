// @productions bitwise-and-expr equality equality-expr local-var-decl-stmt int-literal
public function main() {
    // This is an error because the type of (1 & 0xFF) is int:Unsigned8
    // and the intersection of that with 0x100 is empty.
    boolean b = (1 & 255) == 256; // @error
    _ = b;
}
