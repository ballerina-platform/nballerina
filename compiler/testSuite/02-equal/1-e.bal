public function main() {
    int x = 1;
    boolean b = true;
    ignore(b == x); // @error
}

function ignore(boolean b) {
    return;
}
