import wso2/nballerina.comm.sexpr;

public type Field [sexpr:String, Type];
public type Atom ["list", Type[]] | ["list", Type[], Type] | ["array", Type] | ["array", Type, int] | ["min-length-list", Type[], int] | ["min-length-list", Type[], int, Type] |
                 ["map", Type] | ["mapping", Field[]] | ["mapping", Field[], Type] |
                 ["cell", Type, CellMutability] |
                 ["function", Type[], Type];

// jBallerina can't disambiguate following atoms sexpr
public type Array ["array", Type];
public type ArrayFixedSize ["array", Type, int];
public type NonRepeatingTuple ["list", Type[]];

public type Type AtomRef | Union | Intersection | Not |
                 Nil |
                 Boolean | BooleanSingleShape |
                 Int | IntSingleShape | IntRange |
                 Float | FloatSubtype |
                 Decimal | DecimalSubtype |
                 String | StringSingleShape |
                 Error | ErrorSubtype |
                 Function | FunctionSubtype |
                 List |
                 Mapping |
                 Table | TableSubtype |
                 Xml | XmlSubtype |
                 Any | Readonly | Never;

public type AtomRef string; // except any string single shape types defined in this file. eg: "int". see `atomRefSexpr`
public type Union ["|", Type...];
public type Intersection ["&", Type...];
public type Not ["!", Type...];
public type Nil sexpr:Data[0];
public final Nil NIL_SEXPR = [];
public type Boolean "boolean";
public type BooleanSingleShape boolean;
public type Int "int";
public type IntRange ["int-range", int, int];
public type IntSingleShape int;
public type Float "float";
public type FloatSubtype ["float", sexpr:String];
public type Decimal "decimal";
public type DecimalSubtype ["decimal", sexpr:String];
public type StringSingleShape sexpr:String;
public type String "string";
public type Error "error";
public type ErrorSubtype ["error", Type];
public type Function "function";
public type FunctionSubtype ["function", Type[], Type];
public type List "list";
public type Mapping "mapping";
public type Table "table";
public type TableSubtype ["table", Type];
public type Xml "xml";
// XXX: _rw and _ro are temporary placeholders until we support readonly in type sexpr
public type XmlBuiltinSubtypeNames "text"|"element_ro"|"pi_ro"|"comment_ro"|"element_rw"|"pi_rw"|"comment_rw"|"element"|"pi"|"comment";
public type XmlSubtype ["xml", 1|"*", XmlBuiltinSubtypeNames...]|["xml", 0];

public type Cell ["cell", Type, CellMutability];
public type CellMutability "none"|"limited"|"unlimited";

public type Any "any";
public type Readonly "readonly";
public type Never "never";
