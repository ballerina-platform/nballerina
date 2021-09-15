
import ballerina/test;

@test:Config{}
function test1() {
    test:assertEquals(tokenization("{xyz}"), ["{", [IDENTIFIER, "xyz"], "}"]);
    test:assertEquals(tokenization("record {|int xyz; |}"),
                ["record", "{|", "int", [IDENTIFIER, "xyz"], ";", "|}"]);
    test:assertEquals(tokenization("17|xyz &2..."),
                      [[DECIMAL_NUMBER, "17"], "|", [IDENTIFIER, "xyz"], "&", [DECIMAL_NUMBER, "2"], "..."]);
    test:assertEquals(tokenization(string`"abc"`),  [[STRING_LITERAL, "abc"]]);
    test:assertEquals(tokenization(string`"abc\r\n\"" | "" | "123"`),
                      [[STRING_LITERAL, "abc\r\n\""], "|", [STRING_LITERAL, ""], "|", [STRING_LITERAL, "123"]]);
    test:assertEquals(tokenization("ab.xy . f()"), [[IDENTIFIER, "ab"], ".", [IDENTIFIER, "xy"], ".",  [IDENTIFIER, "f"], "(", ")"]);
    test:assertEquals(tokenization("32.factor()"), [[DECIMAL_NUMBER, "32"], ".", [IDENTIFIER, "factor"], "(", ")"]);

    test:assertEquals(tokenization("0.0 0f 0.0f 0e01 .00"), [[DECIMAL_FP_NUMBER, "0.0", ()], [DECIMAL_FP_NUMBER, "0", "f"], [DECIMAL_FP_NUMBER, "0.0", "f"], [DECIMAL_FP_NUMBER, "0e01", ()], [DECIMAL_FP_NUMBER, ".00", ()]]);
    test:assertEquals(tokenization("-4f 2.0"), ["-", [DECIMAL_FP_NUMBER, "4", "f"], [DECIMAL_FP_NUMBER, "2.0", ()]]);
    test:assertEquals(tokenization("1.2.floor()"), [[DECIMAL_FP_NUMBER, "1.2", ()], ".", [IDENTIFIER, "floor"], "(", ")"]);
    test:assertEquals(tokenization("1.3e1 1.3e1F"), [[DECIMAL_FP_NUMBER, "1.3e1", ()], [DECIMAL_FP_NUMBER, "1.3e1", "f"]]);
    test:assertEquals(tokenization("1.e1"), [[DECIMAL_NUMBER, "1"], ".", [IDENTIFIER, "e1"]]);
    test:assertEquals(tokenization(".5e10 .5e10f"), [[DECIMAL_FP_NUMBER, ".5e10", ()], [DECIMAL_FP_NUMBER, ".5e10", "f"]]);
    test:assertEquals(tokenization("-10.0e-2 -10.0e-2f"), ["-", [DECIMAL_FP_NUMBER, "10.0e-2", ()], "-", [DECIMAL_FP_NUMBER, "10.0e-2", "f"]]);

    test:assertEquals(tokenization("3e1"), [[DECIMAL_FP_NUMBER, "3e1", ()]]);
    test:assertEquals(tokenization(".e1"), [".", [IDENTIFIER, "e1"]]);

    test:assertEquals(tokenization("1.4e-"), [[DECIMAL_FP_NUMBER, "1.4", ()], [IDENTIFIER, "e"], "-"]);
    test:assertEquals(tokenization("1.5e-=5;"), [[DECIMAL_FP_NUMBER, "1.5", ()], [IDENTIFIER, "e"], "-=", [DECIMAL_NUMBER, "5"], ";"]);
    test:assertEquals(tokenization("1.6E"), [[DECIMAL_FP_NUMBER, "1.6", ()], [IDENTIFIER, "E"]]);
    test:assertEquals(tokenization("1.7e"), [[DECIMAL_FP_NUMBER, "1.7", ()], [IDENTIFIER, "e"]]);
    test:assertEquals(tokenization("1.8 e = 1.8; 1.8e=1.8;"), [[DECIMAL_FP_NUMBER, "1.8", ()], [IDENTIFIER, "e"], "=", [DECIMAL_FP_NUMBER, "1.8", ()], ";",
                                                               [DECIMAL_FP_NUMBER, "1.8", ()], [IDENTIFIER, "e"], "=", [DECIMAL_FP_NUMBER, "1.8", ()], ";"]);
    test:assertEquals(tokenization("{||}"), ["{|", "|}"]);
    test:assertEquals(tokenization("xyz17==true"), [[IDENTIFIER, "xyz17"], "==", "true"]);
    test:assertEquals(tokenization("A _x =-0;"), [[IDENTIFIER, "A"], [IDENTIFIER, "_x"], "=", "-",  [DECIMAL_NUMBER, "0"], ";"]);
    test:assertEquals(tokenization("x+=3; x += 5;"), [[IDENTIFIER, "x"], "+=", [DECIMAL_NUMBER, "3"], ";", [IDENTIFIER, "x"], "+=", [DECIMAL_NUMBER, "5"], ";"]);
    test:assertEquals(tokenization("x-=3; x =- 5;"), [[IDENTIFIER, "x"], "-=", [DECIMAL_NUMBER, "3"], ";", [IDENTIFIER, "x"], "=", "-", [DECIMAL_NUMBER, "5"], ";"]);
    test:assertEquals(tokenization("x>>=1; y>>>=2; z>=3;"), [[IDENTIFIER, "x"], ">>=", [DECIMAL_NUMBER, "1"], ";", [IDENTIFIER, "y"], ">>>=", [DECIMAL_NUMBER, "2"], ";", [IDENTIFIER, "z"], ">=", [DECIMAL_NUMBER, "3"], ";"]);
    test:assertEquals(tokenization("1 => {x>>=1}"), [[DECIMAL_NUMBER, "1"], "=>", "{", [IDENTIFIER, "x"], ">>=", [DECIMAL_NUMBER, "1"], "}"]);
    test:assertEquals(tokenization("x !is int"), [[IDENTIFIER, "x"], "!", "is", "int"]);
}

@test:Config{}
function test2() {
    test:assertEquals(scanLine("\""), { fragCodes: [FRAG_INVALID], fragments: ["\""]});
}

function tokenization(string str) returns Token[]|error {
    SourceFile file = createSourceFile({ filename: "<internal>" }, [str]);
    Tokenizer tok = new(file);
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
