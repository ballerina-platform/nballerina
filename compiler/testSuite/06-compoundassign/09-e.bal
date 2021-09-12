public function main() {
    boolean x = true;
    x >>= false; // @error
}