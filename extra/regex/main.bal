import ballerina/io;
import wso2/nballerina.types.regex as r;

public type Options record {|
    boolean balTypes = false;
|};

public function main(string[] regularExpressions, *Options opts) returns error? {
    if regularExpressions.length() != 2 {
        panic error("Expect 2 regular expression to compare");
    }
    if opts.balTypes {
        check writeTypeDefn(regularExpressions);
    }
    string relation = r:typeRelation(regularExpressions[0], regularExpressions[1]);
    io:println(string `${regularExpressions[0]} ${relation} ${regularExpressions[1]}`);
}

function writeTypeDefn(string[] regularExpressions) returns error? {
    string[] typeDefns = r:regexesToBalTypes(regularExpressions);
    string[] content = [];
    foreach int i in 0 ..< regularExpressions.length() {
        content.push("// " + regularExpressions[i], typeDefns[i]);
    }
    check io:fileWriteLines("types.bal", content);
}
