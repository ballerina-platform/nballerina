import wso2/nballerina.types as t;

type Module table<TypeDef> key(name); 

type TypeDef record {|
    readonly string name;
    TypeDesc td;
    Position pos;
    t:SemType? semType = ();
    int cycleDepth = -1;
|};

type TypeDesc LeafTypeDesc|BinaryTypeDesc|ConstructorTypeDesc|TypeDescRef|SingletonTypeDesc;

type ConstructorTypeDesc ListTypeDesc|MappingTypeDesc|FunctionTypeDesc|ErrorTypeDesc;

type ListTypeDesc record {|
    TypeDesc[] members;
    TypeDesc rest;
    t:ListDefinition? def = ();
|};

type FieldDesc record {|
    string name;
    TypeDesc typeDesc;
|};

type MappingTypeDesc record {|
    FieldDesc[] fields;
    TypeDesc rest;
    t:MappingDefinition? def = ();
|};

type FunctionTypeDesc record {|
    // XXX need to handle rest type
    TypeDesc[] args;
    TypeDesc ret;
    t:FunctionDefinition? def = ();
|};

type ErrorTypeDesc record {|
    TypeDesc detail;
|};

type BinaryTypeOp "|" | "&";

type BinaryTypeDesc record {|
    BinaryTypeOp op;
    TypeDesc left;
    TypeDesc right;
|};

type TypeDescRef record {|
    string ref;
    Position pos;
|};

type SingletonTypeDesc  record {|
    (string|int|boolean) value;
|};

type BuiltinIntSubtypeDesc "sint8"|"uint8"|"sint16"|"uint16"|"sint32"|"uint32";
type LeafTypeDesc "any"|"boolean"|"decimal"|"error"|"float"|"handle"|"int"|"json"
                  |"never"|"readonly"|"string"|"typedesc"|"xml"|"()"|BuiltinIntSubtypeDesc;