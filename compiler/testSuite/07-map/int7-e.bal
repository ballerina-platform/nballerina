public function main() {
    map<int> m = { x: 1 };
    m["x"] = false; // @error
    ignore(m);
}

function ignore(any x) {}
