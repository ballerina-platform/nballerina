import ballerina/io;

public function main() {
    record {
        int aVeryLongFieldName;
        string anotherVeryLongFieldName;
    } r = {
        anotherVeryLongFieldName: "some string",
        aVeryLongFieldName: 0,
        "newFieldName": "some other string"
    };
    io:println(r["newFieldName"]); // @output some other string
}
