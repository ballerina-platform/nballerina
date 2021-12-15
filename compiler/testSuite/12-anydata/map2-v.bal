public function main() {
    map<anydata> m = {
        "a": 5
    };
    anydata b = m;
    map<int> m2 = {
        "a": 5
    };
    b = m2;
}
