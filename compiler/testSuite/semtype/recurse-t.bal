// Before removal of readonly,
// this only failed when RO was readonly.
type RO any|error;

type T_str ["a", T4] & RO;
type T4 ["d", ()] & RO;

// @type T_str < T_regex
type T_regex ["a", T2] & RO;
type T2 (["b", T3] & RO)| (["d", ()] & RO);
type T3 ["c", T2] & RO;