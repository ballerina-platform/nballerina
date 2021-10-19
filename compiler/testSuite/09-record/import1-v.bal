import root.types1;
import root.types2;
import ballerina/io;

type R record {|
    int? intField;
    float? floatField;
|};
public function main() {
    types1:R1 r1 = { intField: 255, floatField: 1.5 };
    types2:R2 r2 = r1;
    r1 = r2;
    R r = r2;
    io:println(r is types1:R1); // @output true
    io:println(r is types2:R2); // @output true
    r = { intField: 17, floatField: 2.5 };
    io:println(r is types1:R1); // @output false
    io:println(r is types2:R2); // @output false

    any v = types1:create(11, 3.5);
    io:println(types2:test(v)); // @output true
    io:println(types1:test(v)); // @output true
    io:println(types2:test(r)); // @output false

    v = types2:create(21, -3.5);
    io:println(types1:test(v)); // @output true
    io:println(types2:test(v)); // @output true
    io:println(types1:test(r)); // @output false
}
