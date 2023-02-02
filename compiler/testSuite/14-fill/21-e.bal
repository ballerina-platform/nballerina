type T record {|
    int a;
|};
public function main() {
    T[2] a = []; // @error
}
