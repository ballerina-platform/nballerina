public function main() {
    boolean b = true;
    int|boolean|float x = 8;
    if x is int|boolean {
        x = 40;
        int|boolean|float _ = x;
        if b {
            if x is float {
                return;
            }
            int|boolean _ = x;
        }
        else {
            int|boolean|float _ = x;
        }
    }
    else {
        return;
    }
    int|boolean _ = x; // @error
}
