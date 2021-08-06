import ballerina/test;

@test:Config{}
function testScan1() {
    test:assertEquals(scanTest("{xyz}"), ["{", [IDENTIFIER, "xyz"], "}"]);
    test:assertEquals(scanTest("record {|int xyz; |}"),
                ["record", "{|", "int", [IDENTIFIER, "xyz"], ";", "|}"]);
    test:assertEquals(tokenization("ab.xy . f()"), [[IDENTIFIER, "ab"], ".", [IDENTIFIER, "xy"], ".",  [IDENTIFIER, "f"], "(", ")"]);
    test:assertEquals(tokenization("32.factor()"), [[DECIMAL_NUMBER, "32"], ".", [IDENTIFIER, "factor"], "(", ")"]);
    test:assertEquals(scanTest(""), []);
    test:assertEquals(scanTest("10+2"), [[DECIMAL_NUMBER, "10"], "+", [DECIMAL_NUMBER, "2"]]);
    test:assertEquals(scanTest("{||}"), ["{|", "|}"]);
    test:assertEquals(scanTest("xyz17==true"), [[IDENTIFIER, "xyz17"], "==", "true"]);
    test:assertEquals(scanTest("A _x =-0;"), [[IDENTIFIER, "A"], [IDENTIFIER, "_x"], "=", "-",  [DECIMAL_NUMBER, "0"], ";"]);
}
