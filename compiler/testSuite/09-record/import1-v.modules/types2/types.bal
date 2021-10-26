public type R2 record {|
    int intField;
    float floatField;
|};

public function create(int i, float f) returns R2 {
    return { intField: i, floatField: f };
}

public function test(any v) returns boolean {
    return v is R2;
}
