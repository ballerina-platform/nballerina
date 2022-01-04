public function main() {
    map<int> m = {};
    m["x"] = 5;
    m["y"] += 6; // @error
}
