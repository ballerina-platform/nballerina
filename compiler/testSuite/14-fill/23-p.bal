type R record {|
    int a;
|};

type T [int, R, float, string];

public function main() {
    T[] a = [];
    a[1] = [1, { a: 1 }, 3.1, "test"]; // @panic no filler value
}
