public function main() {
    map<int> m1 = { x: 1 };
    // intersection is empty map
    if m1 is map<string> {
        m1["x"] = "s"; // @error
    }
}
