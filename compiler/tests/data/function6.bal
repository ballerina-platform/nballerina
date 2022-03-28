// Test encoding of mutability by functions
// MInt<:MIntMString
// MInt<:MIntString
// MIntMString<:MIntString
// MString<:MIntMString
// MString<:MIntString
// RInt<:RIntRString
// RInt<:RIntString
// RIntRString<:RIntString
// RIntString<:RIntRString
// RString<:RIntRString
// RString<:RIntString
type MInt readonly & record {|
    function () returns int x;
|};

type MString readonly & record {|
    function () returns string x;
|};

type MIntString readonly & record {|
    function () returns int|string x;
|};

type MIntMString MInt|MString;

type RInt readonly & record {|
    int x;
|};

type RString readonly & record {|
    string x;
|};

type RIntString readonly & record {|
    int|string x;
|};

type RIntRString RInt|RString;