// NN<:U
// NN<:UU
// NS<:U
// NS<:UU
// SN<:U
// SN<:UU
// SS<:U
// SS<:UU
// U<:UU
type NN [int, int];
type SS [string, string];
type NS [int, string];
type SN [string, int];
type UU [int|string, int|string];
type U NN|SS|NS|SN;

