// @productions local-var-decl-stmt
public function main() {
    int x = 01; // @error
    ignore(x);
}

function ignore(int x) {

}