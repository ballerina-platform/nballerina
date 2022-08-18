import ballerina/io;
type R record {| R r; int x; |}; // @error
type R1 record {| any r; int x; |};
