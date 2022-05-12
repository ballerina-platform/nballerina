import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;
import wso2/nballerina.types as t;

type TypeMetadataCache map<llvm:Metadata>;


// pr-todo: better name
class RegisterDebugStore {
    private [bir:Position, llvm:Metadata][] scopeStack = [];
    private DIBuilder diBuilder;
    private DIFile diFile;
    private bir:File file;
    private Module mod;
    private Scaffold scaffold;
    private TypeMetadataCache typeMetadata = {};
    private boolean debugFull;

    function init(bir:FunctionDefn defn, DISubprogram diFunc, Module mod, Scaffold scaffold) {
        self.scopeStack.push([defn.position, diFunc]);
        self.file = mod.partFiles[defn.partIndex];
        ModuleDI moduleDI = <ModuleDI>mod.di;
        self.diBuilder = moduleDI.builder;
        self.diFile = moduleDI.files[defn.partIndex];
        self.mod = mod;
        self.scaffold = scaffold;
        self.debugFull = moduleDI.debugFull;
    }

    function addRegisterDeclare(bir:Register[] registers, llvm:BasicBlock bb) {
        if !self.debugFull {
            return;
        }
        llvm:Metadata emptyExpr = self.diBuilder.createExpression([]);
        bir:Register[] sortedReg = registers.sort("ascending", registerPos);
        var [currentPos, scope] = self.scopeStack[0];
        foreach var register in sortedReg {
            if register is bir:DeclRegister {
                var [line, column] = self.file.lineColumn(register.pos);
                llvm:Metadata tyMeta = self.registerTypeToMetadata(register);
                if register.pos > currentPos {
                    scope = self.diBuilder.createLexicalBlock(scope, self.diFile, line, column);
                    self.scopeStack.push([register.pos, scope]);
                    currentPos = register.pos;
                }
                llvm:Metadata varMeta = self.diBuilder.createAutoVariable(ty=tyMeta, scope=scope, name=register.name, lineNo=line, file=self.diFile);
                llvm:Metadata declLoc = self.diBuilder.createDebugLocation(self.mod.llContext, line, column, scope);
                self.diBuilder.insertDeclareAtEnd(self.scaffold.address(register), varMeta, emptyExpr, declLoc, bb);
            }
        }
    }

    private function registerTypeToMetadata(bir:DeclRegister register) returns llvm:Metadata {
        t:SemType semType = register.semType;
        "int"|"float"|"boolean"|"any" ty;
        if t:isSubtypeSimple(semType, t:INT) {
            ty = "int";
        }
        else if t:isSubtypeSimple(semType, t:FLOAT) {
            ty = "float";
        }
        else if t:isSubtypeSimple(semType, t:BOOLEAN) {
            ty = "boolean";
        }
        else {
            ty = "any";
        }
        llvm:Metadata? stored = self.typeMetadata[ty];
        if stored !is () {
            return stored;
        }
        llvm:Metadata tyMeta;
        match ty {
            "int" => {
                tyMeta = self.diBuilder.createBasicType(name="int", encoding="signed", sizeInBits=64);
            }
            "float" => {
                tyMeta = self.diBuilder.createBasicType(name="float", encoding="float", sizeInBits=64);
            }
            "boolean" => {
                tyMeta = self.diBuilder.createBasicType(name="boolean", encoding="boolean", sizeInBits=1);
            }
            _ => {
                llvm:Metadata charMeta = self.diBuilder.createBasicType(name="char", encoding="signed_char", sizeInBits=8);
                tyMeta = self.diBuilder.createTypedef(self.diBuilder.createPointerType(charMeta, sizeInBits=64, addressSpace=1), "TaggedPtr", self.diFile, 0, scope=self.diFile);
            }
        }
        self.typeMetadata[ty] = tyMeta;
        return tyMeta;
    }


    function debugLocation(bir:Position pos) returns DILocation {
        var [line, column] = self.file.lineColumn(pos);
        // this is to allow arbitery ording of positions
        int nextIndex = 1;
        while nextIndex < self.scopeStack.length() && self.scopeStack[nextIndex][0] <= pos {
            nextIndex += 1;
        }
        llvm:Metadata scope = self.scopeStack[nextIndex - 1][1];
        return self.diBuilder.createDebugLocation(self.mod.llContext, line, column, scope);
    }
}
