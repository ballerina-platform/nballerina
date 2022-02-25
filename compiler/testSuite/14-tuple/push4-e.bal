type Ints [int, int...];

public function main() {
    Ints x = [1];
    x.push("x"); // @error
}
