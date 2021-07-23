import ballerina/io;

public function main() {
    map<any> m = {};
    put(m, "five", 5);
    io:println(get(m, "five")); // @output 5
}

function put(map<any> m, string k, int v) {
    m[k] = v;
}


function get(map<any> m, string k) returns int{
    return <int> m[k];
}
