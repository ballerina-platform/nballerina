type F_top function;
type F function(int, int) returns string;
type G function(string) returns int;
type G_comp F & !G;

// @type F_x = G_comp
// @type G_comp < F_top
// @type F_x < F_top
// @type F_x < F
type F_x F & G_comp;
