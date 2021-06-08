import wso2/nballerina.err;

type Identifier readonly & record {|
    string identifier;
    err:Position pos;
|};

function createIdentifierNode(string identifier, err:Position pos) returns Identifier {
    return {identifier, pos};
}