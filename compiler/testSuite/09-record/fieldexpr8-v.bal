import ballerina/io;

public function main() {
    record {|
        boolean booleanField;
        int intField;
        float floatField;
    |} r = {
        intField: 17,
        floatField: 1.5,
        booleanField: false
    };
    io:println(r.floatField + 1.0); // @output 2.5
    io:println(!r.booleanField); // @output true
    io:println(r.intField + 2); // @output 19
}