
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
}

function tokenization(string str) returns Token[]|error {
    Tokenizer tok = new(str);
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