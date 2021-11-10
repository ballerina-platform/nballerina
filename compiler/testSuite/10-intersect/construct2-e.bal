public function main() {
    map<int|string>&map<int?> x = {x: 1}; // @error
    _ = x;
}
