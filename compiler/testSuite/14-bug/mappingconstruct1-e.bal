import ballerina/io;

public function main() {

    map<int> x = {
        a: 17,
        b:
            "str", // @error
        c: 12
    }; 
    io:println(x["a"] == 1);
}
