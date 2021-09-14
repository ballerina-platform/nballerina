public function main() {
    map<int> m = { x: 1 };
    m["x"] += 2; // @error
}
