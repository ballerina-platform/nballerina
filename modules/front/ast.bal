import wso2/nballerina.types as t;

type Module table<ModuleLevelDef> key(name);

type ModuleLevelDef TypeDef|FunctionDef;

type FunctionDef record {|
    readonly string name;
    FunctionTypeDesc signature;
    string[] paramNames;
    Stmt[] body;
    // This is filled in during analysis
    t:SemType? semType = ();
|};

type Stmt VarDeclStmt|AssignStmt|FunctionCallExpr|ReturnStmt|IfElseStmt|WhileStmt;
type Expr SimpleConstExpr|BinaryExpr|UnaryExpr|FunctionCallExpr|VarRefExpr;

type AssignStmt record {|
    string varName;
    Expr expr;
|};

type ReturnStmt record {|
    Expr returnExpr;
|};

type IfElseStmt record {|
    Expr condition;
    Stmt[] ifTrue;
    Stmt[] ifFalse;
|};

type WhileStmt record {|
    Expr condition;
    Stmt[] body;
|};

type VarDeclStmt record {|
    TypeDesc td;
    string varName;
    Expr initExpr;
    // This is filled in during analysis
    t:SemType? semType = ();
|};

type BinaryExprOp "+" | "-" | "*" | "/" | "%";
type UnaryExprOp "-";

type BinaryExpr record {|
    BinaryExprOp op;
    Expr left;
    Expr right;
|};

type UnaryExpr record {|
    UnaryExprOp op;
    Expr operand;
|};

type FunctionCallExpr record {|
    string funcName;
    Expr[] args;
    // We can get type/def mismatch errors here
    Position pos;
|};

type VarRefExpr record {|
    string varName;
|};

type SimpleConstExpr record {|
    ()|boolean|int|string value;
|};

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