public function main() {
    map<any> m = [];  // @error
    ignore(m);
}

function ignore(any x) { }
