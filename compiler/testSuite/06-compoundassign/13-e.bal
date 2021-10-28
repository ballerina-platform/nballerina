// @productions local-var-decl-stmt
public function main() {
    int x = 10;
    int y = x+=1; // @error
    _ = y;
}
