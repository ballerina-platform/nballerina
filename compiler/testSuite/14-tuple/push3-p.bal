type Mixed [int, string...];

public function main() {
    Mixed x = [1];
    x.push(2); // @panic bad list store
}
