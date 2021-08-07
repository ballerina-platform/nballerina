import ballerina/test;

@test:Config{}
function testScan1() {
    test:assertEquals(ntokenization("{xyz}"), ["{", [IDENTIFIER, "xyz"], "}"]);
    test:assertEquals(ntokenization("record {|int xyz; |}"),
                ["record", "{|", "int", [IDENTIFIER, "xyz"], ";", "|}"]);
    test:assertEquals(ntokenization("17|xyz &2..."),
                      [[DECIMAL_NUMBER, "17"], "|", [IDENTIFIER, "xyz"], "&", [DECIMAL_NUMBER, "2"], "..."]);
    test:assertEquals(ntokenization(string`"abc"`),  [[STRING_LITERAL, "abc"]]);
    test:assertEquals(ntokenization(string`"abc\r\n\"" | "" | "123"`),
                      [[STRING_LITERAL, "abc\r\n\""], "|", [STRING_LITERAL, ""], "|", [STRING_LITERAL, "123"]]);
    test:assertEquals(ntokenization("ab.xy . f()"), [[IDENTIFIER, "ab"], ".", [IDENTIFIER, "xy"], ".",  [IDENTIFIER, "f"], "(", ")"]);
    test:assertEquals(ntokenization("32.factor()"), [[DECIMAL_NUMBER, "32"], ".", [IDENTIFIER, "factor"], "(", ")"]);

    test:assertEquals(ntokenization("0.0 0f 0.0f 0e01 .00"), [[DECIMAL_FP_NUMBER, "0.0", ()], [DECIMAL_FP_NUMBER, "0", "f"], [DECIMAL_FP_NUMBER, "0.0", "f"], [DECIMAL_FP_NUMBER, "0e01", ()], [DECIMAL_FP_NUMBER, ".00", ()]]);
    test:assertEquals(ntokenization("-4f 2.0"), ["-", [DECIMAL_FP_NUMBER, "4", "f"], [DECIMAL_FP_NUMBER, "2.0", ()]]);
    test:assertEquals(ntokenization("1.2.floor()"), [[DECIMAL_FP_NUMBER, "1.2", ()], ".", [IDENTIFIER, "floor"], "(", ")"]);
    test:assertEquals(ntokenization("1.3e1 1.3e1F"), [[DECIMAL_FP_NUMBER, "1.3e1", ()], [DECIMAL_FP_NUMBER, "1.3e1", "f"]]);
    test:assertEquals(ntokenization("1.e1"), [[DECIMAL_NUMBER, "1"], ".", [IDENTIFIER, "e1"]]);
    test:assertEquals(ntokenization(".5e10 .5e10f"), [[DECIMAL_FP_NUMBER, ".5e10", ()], [DECIMAL_FP_NUMBER, ".5e10", "f"]]);
    test:assertEquals(ntokenization("-10.0e-2 -10.0e-2f"), ["-", [DECIMAL_FP_NUMBER, "10.0e-2", ()], "-", [DECIMAL_FP_NUMBER, "10.0e-2", "f"]]);

    test:assertEquals(ntokenization("3e1"), [[DECIMAL_FP_NUMBER, "3e1", ()]]);
    test:assertEquals(ntokenization(".e1"), [".", [IDENTIFIER, "e1"]]);

    test:assertEquals(ntokenization("1.4e-"), [[DECIMAL_FP_NUMBER, "1.4", ()], [IDENTIFIER, "e"], "-"]);
    test:assertEquals(ntokenization("1.5e-=5;"), [[DECIMAL_FP_NUMBER, "1.5", ()], [IDENTIFIER, "e"], "-", "=", [DECIMAL_NUMBER, "5"], ";"]);
    test:assertEquals(ntokenization("1.6E"), [[DECIMAL_FP_NUMBER, "1.6", ()], [IDENTIFIER, "E"]]);
    test:assertEquals(ntokenization("1.7e"), [[DECIMAL_FP_NUMBER, "1.7", ()], [IDENTIFIER, "e"]]);
    test:assertEquals(ntokenization("1.8 e = 1.8; 1.8e=1.8;"), [[DECIMAL_FP_NUMBER, "1.8", ()], [IDENTIFIER, "e"], "=", [DECIMAL_FP_NUMBER, "1.8", ()], ";",
                                                               [DECIMAL_FP_NUMBER, "1.8", ()], [IDENTIFIER, "e"], "=", [DECIMAL_FP_NUMBER, "1.8", ()], ";"]);
    test:assertEquals(ntokenization("10+2"), [[DECIMAL_NUMBER, "10"], "+", [DECIMAL_NUMBER, "2"]]);
    test:assertEquals(ntokenization("{||}"), ["{|", "|}"]);
    test:assertEquals(ntokenization("xyz17==true"), [[IDENTIFIER, "xyz17"], "==", "true"]);
    test:assertEquals(ntokenization("A _x =-0;"), [[IDENTIFIER, "A"], [IDENTIFIER, "_x"], "=", "-",  [DECIMAL_NUMBER, "0"], ";"]);
}

function ntokenization(string str) returns Token[]|error {
    NTokenizer tok = new([str]);
    Token[] tokens = [];
    while true {
        check tok.advance();
        Token? t = tok.current();
        if t is () {
            break;
        }
        else {
            tokens.push(t);
        }
    }
    return tokens;
}
