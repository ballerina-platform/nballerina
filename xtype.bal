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
type XRecord ["record", XField...];
type XField [string, XType];
type XFunction ["function", XType...];
// This should be `XType`, not `XType...` but slalpha5 does not allow it.
type XRec ["rec", string, XType...];
type XRef ["ref", string];

