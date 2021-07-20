public function main() {
    map<any> m = {};
    int i = 2;
    ignore(m[i]); // @error
}

function ignore(any x) { }
