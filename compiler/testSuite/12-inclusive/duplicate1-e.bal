type R record {
    int x;
    int y;
    int x; // @error
};

public function main() {
    int n = 1;
    if n is R {

    }
}
