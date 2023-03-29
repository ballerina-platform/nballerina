type InsnNameMapping readonly & record {|
    string sexpr;
    string bir;
    string? op; // JBUG: error if a default value is given
|};

final readonly & InsnNameMapping[] INSN_NAMES = [
    { sexpr:"abnormal-ret"         , bir:"INSN_ABNORMAL_RET",                   op: () },
    { sexpr:"catch"                , bir:"INSN_CATCH",                          op: () },
    { sexpr:"convert-to-decimal"   , bir:"INSN_CONVERT_TO_DECIMAL",             op: () },
    { sexpr:"convert-to-float"     , bir:"INSN_CONVERT_TO_FLOAT",               op: () },
    { sexpr:"convert-to-int"       , bir:"INSN_CONVERT_TO_INT",                 op: () },
    { sexpr:"decimal-negate"       , bir:"INSN_DECIMAL_NEGATE",                 op: () },
    { sexpr:"error-construct"      , bir:"INSN_ERROR_CONSTRUCT",                op: () },
    { sexpr:"float-negate"         , bir:"INSN_FLOAT_NEGATE",                   op: () },
    { sexpr:"list-set"             , bir:"INSN_LIST_SET",                       op: () },
    { sexpr:"mapping-filling-get"  , bir:"INSN_MAPPING_FILLING_GET",            op: () },
    { sexpr:"mapping-get"          , bir:"INSN_MAPPING_GET",                    op: () },
    { sexpr:"mapping-set"          , bir:"INSN_MAPPING_SET",                    op: () },
    { sexpr:"panic"                , bir:"INSN_PANIC",                          op: () },
    { sexpr:"ret"                  , bir:"INSN_RET",                            op: () },
    { sexpr:"str-concat"           , bir:"INSN_STR_CONCAT",                     op: () },
    // hand picked
    { sexpr:"set"                  , bir:"INSN_ASSIGN",                         op: () },
    { sexpr:"boolean!"             , bir:"INSN_BOOLEAN_NOT",                    op: () },
    { sexpr:"call-indirect"        , bir:"INSN_CALL_INDIRECT",                  op: () },
    { sexpr:"less-than"            , bir:"INSN_COMPARE",                        op: "<" },
    { sexpr:"less-than-or-equal"   , bir:"INSN_COMPARE",                        op: "<=" },
    { sexpr:"greater-than"         , bir:"INSN_COMPARE",                        op: ">" },
    { sexpr:"greater-than-or-equal", bir:"INSN_COMPARE",                        op: ">=" },
    { sexpr:"decimal%"             , bir:"INSN_DECIMAL_ARITHMETIC_BINARY",      op: "%" },
    { sexpr:"decimal*"             , bir:"INSN_DECIMAL_ARITHMETIC_BINARY",      op: "*" },
    { sexpr:"decimal+"             , bir:"INSN_DECIMAL_ARITHMETIC_BINARY",      op: "+" },
    { sexpr:"decimal-"             , bir:"INSN_DECIMAL_ARITHMETIC_BINARY",      op: "-" },
    { sexpr:"decimal/"             , bir:"INSN_DECIMAL_ARITHMETIC_BINARY",      op: "/" },
    { sexpr:"not-equal"            , bir:"INSN_EQUALITY",                       op: "!=" },
    { sexpr:"not-exact-equal"      , bir:"INSN_EQUALITY",                       op: "!==" },
    { sexpr:"equal"                , bir:"INSN_EQUALITY",                       op: "==" },
    { sexpr:"exact-equal"          , bir:"INSN_EQUALITY",                       op: "===" },
    { sexpr:"float%"               , bir:"INSN_FLOAT_ARITHMETIC_BINARY",        op: "%" },
    { sexpr:"float*"               , bir:"INSN_FLOAT_ARITHMETIC_BINARY",        op: "*" },
    { sexpr:"float+"               , bir:"INSN_FLOAT_ARITHMETIC_BINARY",        op: "+" },
    { sexpr:"float-"               , bir:"INSN_FLOAT_ARITHMETIC_BINARY",        op: "-" },
    { sexpr:"float/"               , bir:"INSN_FLOAT_ARITHMETIC_BINARY",        op: "/" },
    { sexpr:"int%"                 , bir:"INSN_INT_ARITHMETIC_BINARY",          op: "%" },
    { sexpr:"int*"                 , bir:"INSN_INT_ARITHMETIC_BINARY",          op: "*" },
    { sexpr:"int+"                 , bir:"INSN_INT_ARITHMETIC_BINARY",          op: "+" },
    { sexpr:"int-"                 , bir:"INSN_INT_ARITHMETIC_BINARY",          op: "-" },
    { sexpr:"int/"                 , bir:"INSN_INT_ARITHMETIC_BINARY",          op: "/" },
    { sexpr:"int&"                 , bir:"INSN_INT_BITWISE_BINARY",             op: "&" },
    { sexpr:"int<<"                , bir:"INSN_INT_BITWISE_BINARY",             op: "<<" },
    { sexpr:"int>>"                , bir:"INSN_INT_BITWISE_BINARY",             op: ">>" },
    { sexpr:"int>>>"               , bir:"INSN_INT_BITWISE_BINARY",             op: ">>>" },
    { sexpr:"int^"                 , bir:"INSN_INT_BITWISE_BINARY",             op: "^" },
    { sexpr:"int|"                 , bir:"INSN_INT_BITWISE_BINARY",             op: "|" },
    { sexpr:"no-panic-int%"        , bir:"INSN_INT_NO_PANIC_ARITHMETIC_BINARY", op: "%" },
    { sexpr:"no-panic-int*"        , bir:"INSN_INT_NO_PANIC_ARITHMETIC_BINARY", op: "*" },
    { sexpr:"no-panic-int+"        , bir:"INSN_INT_NO_PANIC_ARITHMETIC_BINARY", op: "+" },
    { sexpr:"no-panic-int-"        , bir:"INSN_INT_NO_PANIC_ARITHMETIC_BINARY", op: "-" },
    { sexpr:"no-panic-int/"        , bir:"INSN_INT_NO_PANIC_ARITHMETIC_BINARY", op: "/" },
    { sexpr:"list-construct"       , bir:"INSN_LIST_CONSTRUCT_RW",              op: () }
];

final table<InsnNameMapping> key(sexpr) INSN_NAMES_BIR_OP = table key (sexpr) from var m in INSN_NAMES select m;
final table<InsnNameMapping> key(bir, op) INSN_NAMES_SEXPR = table key (bir, op) from var m in INSN_NAMES select m;
