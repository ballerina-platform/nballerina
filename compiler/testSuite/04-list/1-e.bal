public function main() {
    any[] v = [];  // @error
    ignore(v["foo"]);
}

function ignore(any x) { }
