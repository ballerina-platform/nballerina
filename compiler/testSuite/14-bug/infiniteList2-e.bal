import ballerina/io;
type L [int, any];
type L2 [int, L2]; // @error
