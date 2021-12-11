public type R record {|
    int x;
    int y;
    int...;
|};
public function foo(R r) {
    r.z = 1; // @error
}
