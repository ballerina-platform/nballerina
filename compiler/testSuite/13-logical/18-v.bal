public function main() {
    int|string x = 1;
    boolean|float y = true;
    if x is int || y is float {
        return;
    }
    string _ =  x;
    boolean _ =  y;
}
