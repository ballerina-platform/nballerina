
type T1 int|string;
type T2 float|string;

public function main() {
    T1&T2 x = 17; // @error
    _ = x;
}

