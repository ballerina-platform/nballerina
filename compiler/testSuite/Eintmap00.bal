public function main() {
    map<int> m = { x: 1 };
    int x = m["x"];
    ignore(x);
}

function ignore(any x) {}
