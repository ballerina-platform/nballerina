import wso2/nballerina.err;
import wso2/nballerina.types as t;

final readonly & string[] UNIFORM_ATOMS = [
    "()", "boolean", "int", "float", "decimal", "string", 
    "error", "function", "typedesc", "handle", "xml_ro", "list_ro",
    "mapping_ro", "table_ro", "object_ro", "xml_rw", "list_rw",
    "mapping_rw", "table_rw", "object_rw", "stream", "future"
]; 

public function semTypeToString(t:Env env, t:SemType ty) returns string {
    if ty is t:UniformTypeBitSet {
        int uTy = ty;
        if uTy == 0 {
            return "never";
        }
        string[] buf = [];
        foreach int i in 0 ..< UNIFORM_ATOMS.length()  {
            if ((uTy & 1) == 1) {
                buf.push(UNIFORM_ATOMS[i]);
            }
            uTy = uTy >> 1;
        }
        return "|".'join(...buf);
    }
    panic err:unimplemented("ComplexSemType can't be serialized yet");
}
