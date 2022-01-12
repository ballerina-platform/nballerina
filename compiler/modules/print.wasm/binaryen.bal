public type IntType "i64"|"i32";
public type Type "None"|IntType;

type Function record {

};

type Export record {
     
};

type Expression record {
    
};

type LiteralInt32 record {
    int i32;
};

type LiteralInt64 record {
    int i64;
};

type Literal LiteralInt32|LiteralInt64;

class Module {
    private Function[] functions;
    private map<Function> functionMap;
    private Export[] exports;
    private map<Export> exportMap;

    function call(string target, Expression[] operands, int numOperands, Type returnType) returns Expression {
        panic error("unimplemented");
    }

    function localGet(int index, Type ty) returns Expression {
        panic error("unimplemented");
    }
    
    function addConst(Literal value) returns Expression {
        panic error("unimplemented");
    }

    function addReturn(Expression? value= ()) returns Expression {
        panic error("unimplemented");        
    }

    function nop() returns Expression {
        panic error("unimplemented");        
    }
         
    function addFunction(string name, Type[] params, Type results, Type[] varTypes, int numVarTypes, Expression body)  {
        panic error("unimplemented");        
    }

    function addFunctionImport(string internalName, string externalModuleName, string externalBaseName, Type params, Type results)  {
        panic error("unimplemented");        
    }

    function addFunctionExport(string internalName, string externalName) {
        panic error("unimplemented");        
    }

    // BinaryenModuleDispose and BinaryenModulePrint
    function finish(){
        panic error("unimplemented");
    }
                                            
}
