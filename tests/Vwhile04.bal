import ballerina/io;

public function main() {
    int i = 0;
    while i < 5 {
        if (isSquareNumber(i)) {
            io:println(i);
        }
        i = i + 1;
    }
    // @output 4
}

function isSquareNumber(int x) returns boolean {
    int i = 2;
    while i <= x {
        if (i*i == x) {
            return true;
        } else if (i*i > x) {
            return false;
        }
        i = i + 1;
    }

    return false;
}
