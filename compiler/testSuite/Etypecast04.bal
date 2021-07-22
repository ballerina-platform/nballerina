public function main() {
    int n = 1;
    boolean b = <boolean>n; // @error
    ignore(b);
}

function ignore(boolean b) {
    
}