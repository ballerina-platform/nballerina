import ballerina/io;

public function main() {
    io:println(floatCmp(1.0, 1.0)); // @output eq

    io:println(floatCmp(1.0, 2.0)); // @output lt
    io:println(floatCmp(2.0, 1.0)); // @output gt
    io:println(floatCmp(-1.0, 1.0)); // @output lt
    io:println(floatCmp(-0.5, -1.0)); // @output gt

    io:println(floatCmp(-0.5, 1.0/0.0)); // @output lt
    io:println(floatCmp(-0.5, -1.0/0.0)); // @output gt

    io:println(floatCmp(-0.0, 0.0)); // @output eq

    io:println(floatCmp(0.0, 0.0/0.0)); // @output one nan
    io:println(floatCmp(0.0/0.0, 0.0)); // @output one nan
    io:println(floatCmp(0.0/0.0, 0.0/0.0)); // @output both nan
}

function floatCmp(float f1, float f2) returns string {
    if f1 < f2 {
        if !(f1 > f2) {
            if  f1 <= f1 {
                return "lt";
            }
            else {
                return "lt error 1";
            }
        }
        else {
            return "lt error 2";
        }
    }
    if f1 > f2 {
        if !(f1 < f2) {
            if  f1 >= f1 {
                return "gt";
            }
            else {
                return "gt error 1";
            }
        }
        else {
            return "gt error 2";
        }
    }
    if f1 == f2 {
        if f1 == 0.0 / 0.0 {
            return "both nan";
        }

        if  f1 <= f1 {
            if  f1 >= f1 {
                return "eq";
            }
            else {
                return "eq error 1";
            }
        }
        else {
            return "eq error 2";
        }
    }
    return "one nan";
}
