// External representation of types

type Type Nil|Boolean|Int|Float|Decimal|String|Error|Typedesc|Handle|Xml|Never|Any|ReadOnly
    |Single|Union|Intersection|Tuple|Record|Function|Rec|Ref;

const Nil = "nil";
const Boolean = "boolean";
const Int = "int";
const Float = "float";
const Decimal = "decimal";
const String = "string";
const Error = "error";
const Typedesc = "typedesc";
const Handle = "handle";
const Xml = "xml";

const Never = "never";
const Any = "any";
const ReadOnly = "readonly";

type Single ["const", string];

type Union ["|", Type...];
type Intersection ["&", Type...];

type Tuple ["tuple", Type...];

// Last Type if present is interpreted as the tuple rest type. So
// `["list"]` means any list
// `["list", "int"]` means a list of any length containing only integers
// `["list", "string", "int"]` means a list whose first member is a string
// and whose other members are integers
// Note that `["list", "int", "boolean", "never"]`
// is the same as `["tuple", "int", "boolean"]`
type List ["list", Type...];
type Record ["record", Field...];
type Field [string, Type];
// `["function" "string", "boolean", "int"]` means any function of two arguments, string and boolean, returning an integer
// `["function" "int"]` means any function of zero arguments returning an integer
// `["function"]` means any function
type Function ["function", Type...];
// This should be `Type`, not `Type...` but slalpha5 does not allow it.
type Rec ["rec", string, Type...];
type Ref ["ref", string];

