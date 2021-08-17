import ballerina/io;

public function main() {
    int max = 16;
    map<any> m = {};
    populate(m, max);
    io:println(retrieve(m, max)); // @output 1049008
}

function populate(map<any> m, int max) {
    string x = "x";
    int xLen = 1;

    foreach int i in 0..<max {
        x = x + x;
        xLen = xLen * 2;
        m[x + ""] = xLen + 0;
        m[x + "a"] = xLen + 1;
        m[x + "ab"] = xLen + 2;
        m[x + "abc"] = xLen + 3;
        m[x + "abcd"] = xLen + 4;
        m[x + "abcde"] = xLen + 5;
        m[x + "abcdef"] = xLen + 6;
        m[x + "abcdefg"] = xLen + 7;
    }
}


function retrieve(map<any> m, int max) returns int{
    string x = "x";
    int res = 0;

    foreach int i in 0..<max {
        x = x + x;
        res = res + (<int>m[x + ""]) 
                  + (<int>m[x + "a"])
                  + (<int>m[x + "ab"])
                  + (<int>m[x + "abc"])
                  + (<int>m[x + "abcd"])
                  + (<int>m[x + "abcde"])
                  + (<int>m[x + "abcdef"])
                  + (<int>m[x + "abcdefg"]);
    }
    return res;
}
