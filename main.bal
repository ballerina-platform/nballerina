import ballerina/io;

public function main() {
    Env env = {};
    SemType s = tuple(env, INT, STRING, NIL);
    SemType t = tuple(env, TOP, TOP);
    boolean b = isSubtype(typeCheckContext(env), s, t);
    io:println("Should be false: ", b);
}


