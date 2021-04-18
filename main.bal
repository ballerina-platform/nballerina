import ballerina/io;

public function main() {
   Env env = {};
    SemType t1 = union(NIL, recursiveTuple(env, (e, t) => [INT, union(t, NIL)]));
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    boolean b = isSubtype(typeCheckContext(env), t2, t1);
    io:println("Should be true: ", b);
}