public function main() {
    boolean b = true;
    int n = <int>b; // @error
    ignore(n);
}

function ignore(int n) {

}