// EmptyTuple<:ISV
// EmptyTuple<:IV
// EmptyTuple<:SV
// ISV<:EmptyTuple
// ISV<:IV
// ISV<:SV
// Never<:EmptyTuple
// Never<:ISV
// Never<:IV
// Never<:SV
type IV int[];
type SV string[];
type ISV IV & SV;
type Never never;
type EmptyTuple [];

