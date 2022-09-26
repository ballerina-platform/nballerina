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
        check writeTypeDefn(regularExpressions[0], "lhs.bal");
        check writeTypeDefn(regularExpressions[1], "rhs.bal");
    }
    io:println(r:isSubtype(regularExpressions[0], regularExpressions[1]));
    // string relation = r:typeRelation(regularExpressions[0], regularExpressions[1]);
    //io:println(string `${regularExpressions[0]} ${relation} ${regularExpressions[1]}`);
}

function writeTypeDefn(string regex, string fileName) returns error? {
    string[] content = ["// " + regex, r:regexToBalTypes(regex)];
    check io:fileWriteLines(fileName, content);
}
