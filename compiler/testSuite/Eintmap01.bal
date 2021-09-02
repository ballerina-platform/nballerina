public function main() {
    map<int> m = { x: 1 };
    m["x"] = 1.0; // @error
    ignore(m);
}

function ignore(any x) {}
