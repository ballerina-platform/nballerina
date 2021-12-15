public type R record {|
    int x;
    int y;
    int...;
|};
public function foo(R r) returns int? {
    return r.z; // @error
}
