// External representation of types

type XType XNil|XBoolean|XInt|XString|XSingle|XUnion|XIntersection|XNever|XAny|XReadOnly|XTuple|XRecord|XFunction|XRec|XRef;

const XNil = "nil";
const XBoolean = "boolean";
const XInt = "int";
const XString = "string";
const XNever = "never";
const XAny = "any";
const XReadOnly = "readonly";

type XSingle ["const", string];

type XUnion ["|", XType...];
type XIntersection ["&", XType...];

type XTuple ["tuple", XType...];

// Last XType if present is interpreted as the tuple rest type. So
// `["list"]` means any list
// `["list", "int"]` means a list of any length containing only integers
// `["list", "string", "int"]` means a list whose first member is a string
// and whose other members are integers
// Note that `["list", "int", "boolean", "never"]`
// is the same as `["tuple", "int", "boolean"]`
type XList ["list", XType...];
type XRecord ["record", XField...];
type XField [string, XType];
// `["function" "string", "boolean", "int"]` means any function of two arguments, string and boolean, returning an integer
// `["function" "int"]` means any function of zero arguments returning an integer
// `["function"]` means any function
type XFunction ["function", XType...];
// This should be `XType`, not `XType...` but slalpha5 does not allow it.
type XRec ["rec", string, XType...];
type XRef ["ref", string];

