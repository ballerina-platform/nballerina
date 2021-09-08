import ballerina/io;

public function main() {
    io:println(isKeyword("string")); // @output true
    io:println(isKeyword("hello")); // @output false
    io:println(isKeyword("if")); // @output true
    io:println(isKeyword("else")); // @output true
    io:println(isKeyword("false")); // @output true
    io:println(isKeyword("return")); // @output true
}

function isKeyword(string s) returns boolean {
    if s == "return" {
        return true;
    }
    if s == "boolean" {
        return true;
    }
    if s == "int" {
        return true;
    }
    if s == "string" {
        return true;
    }
    if s == "while" {
        return true;
    }
    if s == "foreach" {
        return true;
    }
    if s == "if" {
        return true;
    }
    if s == "else" {
        return true;
    }
    if s == "map" {
        return true;
    }
    if s == "true" {
        return true;
    }
    if s == "false" {
        return true;
    }
    return false;
}
