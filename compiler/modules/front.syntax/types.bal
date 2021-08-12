import wso2/nballerina.types as t;
import wso2/nballerina.err;

function resolveInlineTypeDesc(InlineTypeDesc td) returns t:UniformTypeBitSet {
    match td {
        "any" => { return t:ANY; }
        "boolean" => { return t:BOOLEAN; }
        "int" => { return t:INT; }
        "string" => { return t:STRING; }
    }
    if td is InlineArrayTypeDesc {
        return t:LIST;
    }
    if td is InlineMapTypeDesc {
        return t:MAPPING;
    }
    panic err:impossible("unreachable in resolveInlineTypeDesc");
}
