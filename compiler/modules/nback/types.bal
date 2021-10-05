
import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

const USED_INHERENT_TYPE = 0x1;
const USED_TYPE_TEST = 0x2;

final llvm:StructType llInherentType = llvm:structType(["i32"]);

type TypeHowUsed USED_INHERENT_TYPE|USED_TYPE_TEST;

public type TypeUsage readonly & record {|
    t:SemType[] types;
    // or'ed from TypeHowUsed
    byte[] uses;
|};


function mangleTypeSymbol(bir:ModuleId modId, TypeHowUsed howUsed, int index) returns string {
    string result = howUsed == USED_INHERENT_TYPE ? "_Bi" : "_Bt";
    result += mangleOrg(modId.org);
    result += mangleModuleNames(modId.names);
    result += index.toString();
    return result;    
}
