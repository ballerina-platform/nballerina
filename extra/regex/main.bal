import ballerina/io;
import wso2/nballerina as r;

public function main(string[] regularExpressions) {
    if regularExpressions.length() != 2 {
        panic error("Expect 2 regular expression to compare");
    }
    string relation = r:regexTypeRelation(regularExpressions[0], regularExpressions[1]);
    io:println(string `${regularExpressions[0]} ${relation} ${regularExpressions[1]}`);
}
