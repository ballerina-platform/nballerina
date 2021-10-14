// P<:Q
// P<:X
// P<:Y
// Q<:P
// Q<:X
// Q<:Y
// U<:P
// U<:Q
// U<:V
// U<:X
// U<:Y
// V<:P
// V<:Q
// V<:X
// V<:Y
// X<:P
// X<:Q
// X<:Y
// Y<:P
// Y<:Q
// Y<:X

type X xml;
type Y xml<xml>;
type P xml<xml:Element|xml:Comment|xml:ProcessingInstruction|xml:Text>;
type Q xml<P>;
type U xml<xml:Element>;
type V xml<xml:Text|xml:Element>;
