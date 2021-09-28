// C1<:C
// C1<:D
// C<:C1
// C<:D;
// D<:C
// D<:C1
type C string:Char;
type C1 string:Char;
type D C|C1;
