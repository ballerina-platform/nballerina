public function main() {
    // We are deviating from the spec by allowing intersection here
    map<int|string>&map<int?> x = {x: 1};
    _ = x;
}
