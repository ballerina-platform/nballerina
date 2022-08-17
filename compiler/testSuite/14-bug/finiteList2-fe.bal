import ballerina/io;
type L [int, any];
type L2 [int, L2]; // @error

public function main() {
    L l = [1, ()];
    l[1] = l;
    io:println(l);
    L2 l2 = <L2> l;
    io:println(l2);
}
