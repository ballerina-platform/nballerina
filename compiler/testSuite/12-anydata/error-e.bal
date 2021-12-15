public function main() {
    error err = error("test error");
    anydata val = err; // @error
}
