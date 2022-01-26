import ballerina/io;
public function main() {
    io:println(lhsTrue() && rhsTrue()); // @output lhsTrue
                                        // @output rhsTrue
                                        // @output true

    io:println(lhsFalse() && rhsTrue()); // @output lhsFalse
                                         // @output false

    io:println(lhsTrue() && rhsFalse()); // @output lhsTrue
                                         // @output rhsFalse
                                         // @output false

    io:println(lhsFalse() && rhsFalse()); // @output lhsFalse
                                          // @output false

    io:println(lhsTrue() || rhsTrue());  // @output lhsTrue
                                         // @output true

    io:println(lhsFalse() || rhsTrue()); // @output lhsFalse
                                         // @output rhsTrue
                                         // @output true

    io:println(lhsTrue() || rhsFalse()); // @output lhsTrue
                                         // @output true

    io:println(lhsFalse() || rhsFalse()); // @output lhsFalse
                                          // @output rhsFalse
                                          // @output false
}

public function lhsTrue() returns boolean {
    io:println("lhsTrue");
    return true;
}

public function rhsTrue() returns boolean {
    io:println("rhsTrue");
    return true;
}

public function lhsFalse() returns boolean {
    io:println("lhsFalse");
    return false;
}

public function rhsFalse() returns boolean {
    io:println("rhsFalse");
    return false;
}
