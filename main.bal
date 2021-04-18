import ballerina/io;

public function main() {
    Env env = {};
    SemType t1 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    SemType t2 = recursiveTuple(env, (e, t) => [union(INT, STRING), union(t, NIL)]);
    boolean b = isSubtype(typeCheckContext(env), t1, t2);
    io:println(b);
    b = isSubtype(typeCheckContext(env), t2, t1);
    io:println(b);
}