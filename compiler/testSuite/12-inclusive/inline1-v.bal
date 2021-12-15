import ballerina/io;

public function main() {
    record {
        int aVeryLongFieldName;
        string anotherVeryLongFieldName;
    } r = {
        anotherVeryLongFieldName: "some string",
        aVeryLongFieldName: 0
    };
    io:println(r["anotherVeryLongFieldName"]); // @output some string
}
