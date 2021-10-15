// CE<:E
// CE<:X
// E<:CE
// E<:X
// N<:CE
// N<:E
// N<:NP
// N<:P
// N<:X
// N<:XT
// N<:T
// NP<:CE
// NP<:E
// NP<:P
// NP<:X
// P<:CE
// P<:E
// P<:NP
// P<:X
// T<:CE
// T<:E
// T<:X
// T<:XT
// X<:CE
// X<:E
// XT<:CE
// XT<:E
// XT<:X

type X xml;
type E xml<xml:Element|X>;
type CE xml<E|xml:Comment>;
type N xml<never>;
type P xml<xml:ProcessingInstruction>;
type NP xml<never|xml:ProcessingInstruction>;
type T xml:Text;
type XT xml<T>;
