type R record {|
    int a;
|};

type T [int, R, float, string];

public function main() {
    T[2] a = []; // @error
}
