type T_str ["a", T4];
type T4 ["d", ()];

// @type T_str < T_regex
type T_regex ["a", T2];
type T2 ["b", T3] | ["d", ()];
type T3 [T2];
