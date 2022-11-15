import ballerina/io;
type A record {|
    A&B x; // @error
    A a;
|} | ();

type B record {|
    string x;
|};
