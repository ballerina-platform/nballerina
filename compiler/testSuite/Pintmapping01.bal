public function main() {
    map<int> mi = {};
    map<any> ma = mi;
    ma["x"] = (); // @panic bad mapping store
    ignore(ma);
}

function ignore(any x) {}
