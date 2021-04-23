// External representation of types

type XType XNil|XBoolean|XInt|XString|XSingle|XUnion|XIntersection|XNever|XAny|XList|XRecord|XFunction|XRec|XRef;

const XNil = "nil";
const XBoolean = "boolean";
const XInt = "int";
const XString = "string";
const XNever = "never";
const XAny = "any";

type XSingle ["const", string];

type XUnion ["|", XType...];
type XIntersection ["&", XType...];

type XList ["list", XType...];
type XRecord ["record", XField...];
type XField [string, XType];
type XFunction ["function", XType...];
type XRec ["rec", string, XList|XFunction];
type XRef ["ref", string];

