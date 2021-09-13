// @productions string string-literal exact-equality equality boolean if-else-stmt equality-expr relational-expr boolean-literal function-call-expr
import ballerina/io;

public function main() {
    cmp("x", "y"); // @output lt
    cmp("y", "x"); // @output gt
    cmp("x", "x"); // @output eq
    cmp("x", "xy"); // @output lt
    cmp("1234567", "1234567\u{0}"); // @output lt
    cmp("123456", "123456\u{0}"); // @output lt
    cmp("", "\u{0}"); // @output lt
    cmp("\u{0}", "\u{0}"); // @output eq
    cmp("\u{0}", "\u{0}\u{0}\u{0}"); // @output lt
    cmp("\u{7F}","\u{80}"); // @output lt
    cmp("\u{80}","\u{81}"); // @output lt
    cmp("1234\u{80}","1234\u{81}"); // @output lt
    cmp("x","\u{1F600}"); // @output lt
}

function cmp(string s1, string s2) {
    if s1 < s2 {
        io:println("lt");
        checkLessThan(s1, s2);
    }
    else if s1 > s2 {
        io:println("gt");
        checkLessThan(s2, s1);
    }
    else {
        io:println("eq");
        assert(s1 == s2, true);
        assert(s1 != s2, false);
        assert(s1 === s2, true);
        assert(s1 !== s2, false);
        assert(s2 == s1, true);
        assert(s2 != s1, false);
        assert(s2 === s1, true);
        assert(s2 !== s1, false);
        assert(s1 < s2, false);
        assert(s2 < s1, false);
        assert(s1 > s2, false);
        assert(s2 > s1, false);
        assert(s1 <= s2, true);
        assert(s2 <= s1, true);
        assert(s1 >= s2, true);
        assert(s2 >= s1, true);
    }
}

function checkLessThan(string s1, string s2) {
    assert(s1 == s2, false);
    assert(s1 === s2, false);
    assert(s1 != s2, true);
    assert(s1 !== s2, true);
    assert(s2 == s1, false);
    assert(s2 === s1, false);
    assert(s2 != s1, true);
    assert(s2 !== s1, true);
    assert(s1 <= s2, true);
    assert(s1 >= s2, false);
    assert(s1 > s2, false);
    assert(s2 > s1, true);
    assert(s2 >= s1, true);
    assert(s2 <= s1, false);
    assert(s2 < s1, false);
    assert(s2 > s1, true);
}

function assert(boolean expect, boolean actual) {
    if expect != actual {
        io:println("fail");
    }
}