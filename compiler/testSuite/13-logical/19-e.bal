public function main() {
    int|string x = 1;
    if x is int && false {
        return; // @error
    }
}
