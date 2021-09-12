// @productions string string-literal equality equality-expr additive-expr function-call-expr local-var-decl-stmt
import ballerina/io;
public function main() {
    concatTest("", "", ""); // @output 
                            // @output 0
                            // @output true
                            
    concatTest("a", "b", "ab"); // @output ab
                                // @output 2
                                // @output true

    concatTest("smile", "\u{1F642}", "smile\u{1F642}"); // @output smile🙂
                                                        // @output 6
                                                        // @output true

    concatTest("\u{1F642}", "frown", "\u{1F642}frown"); // @output 🙂frown
                                                        // @output 6
                                                        // @output true

    concatTest("\u{1F641}", "\u{1F642}", "\u{1F641}\u{1F642}"); // @output 🙁🙂
                                                                // @output 2
                                                                // @output true
}

function concatTest(string s1, string s2, string expected) {
    string s = s1 + s2;
    io:println(s);
    io:println(s.length());
    io:println(s == expected);
}
