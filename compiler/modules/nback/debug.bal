import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;
import wso2/nballerina.types as t;

type TypeMetadataCache map<llvm:Metadata>;

type Scope record {|
    llvm:Metadata diScope;
    bir:Position startPos;
    bir:Position endPos;
    Scope[] childScopes;
|};

// pr-todo: better name
class RegisterDebugStore {
    private DIBuilder diBuilder;
    private DIFile diFile;
    private bir:File file;
    private Module mod;
    private Scaffold scaffold;
    private TypeMetadataCache typeMetadata = {};
    private boolean debugFull;
    private bir:FunctionCode code;
    private Scope rootScope;

    function init(bir:FunctionDefn defn, DISubprogram diFunc, Module mod, Scaffold scaffold, bir:FunctionCode code) {
        self.rootScope = { diScope: diFunc, startPos: defn.position, endPos: int:MAX_VALUE, childScopes: [] };
        self.file = mod.partFiles[defn.partIndex];
        ModuleDI moduleDI = <ModuleDI>mod.di;
        self.diBuilder = moduleDI.builder;
        self.diFile = moduleDI.files[defn.partIndex];
        self.mod = mod;
        self.scaffold = scaffold;
        self.debugFull = moduleDI.debugFull;
        self.code = code;
    }

    private function registerTypeToMetadata(bir:DeclRegister|bir:NarrowRegister register) returns llvm:Metadata {
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

    private function addRegisterScope(bir:RegisterScope registerScope, Scope parent) returns Scope {
        int childCount = parent.childScopes.length();
        int? addIndex = ();
        foreach int i in 0 ..< childCount {
            Scope child = parent.childScopes[i];
            if registerScope.startPos < child.startPos {
                if registerScope.endPos > child.startPos {
                    panic error("overlapping scopes");
                }
                addIndex = i;
                break;
            }
            else if child.startPos == registerScope.startPos && child.endPos == registerScope.endPos {
                // we already have the scope
                return child;
            }
            else if child.startPos < registerScope.startPos && child.endPos > registerScope.endPos {
                return self.addRegisterScope(registerScope, child);
            }
        }
        var [line, column] = self.file.lineColumn(registerScope.startPos);
        llvm:Metadata diScope = self.diBuilder.createLexicalBlock(parent.diScope, self.diFile, line, column);
        Scope newScope = { diScope, startPos: registerScope.startPos, endPos: registerScope.endPos, childScopes: [] };
        if addIndex is () {
            parent.childScopes.push(newScope);
        }
        else {
            Scope[] newChildScopes = parent.childScopes.slice(0, addIndex);
            newChildScopes.push(newScope, ...parent.childScopes.slice(addIndex));
            parent.childScopes = newChildScopes;
        }
        return newScope;
    }

    function initialize(llvm:BasicBlock initBlock) {
        if !self.debugFull {
            return;
        }
        llvm:Metadata emptyExpr = self.diBuilder.createExpression([]);
        foreach bir:Register register in self.code.registers {
            if register is bir:NarrowRegister|bir:DeclRegister {
                Scope scope = self.addRegisterScope(register.scope, self.rootScope);
                if register is bir:DeclRegister {
                    // pr-todo make sure this is not getting narrowed
                    var [line, column] = self.file.lineColumn(register.pos);
                    llvm:Metadata tyMeta = self.registerTypeToMetadata(register);
                    llvm:Metadata diScope = scope.diScope;
                    llvm:Metadata varMeta = self.diBuilder.createAutoVariable(ty=tyMeta, scope=diScope, name=register.name, lineNo=line, file=self.diFile);
                    llvm:Metadata declLoc = self.diBuilder.createDebugLocation(self.mod.llContext, line, column, diScope);
                    self.diBuilder.insertDeclareAtEnd(self.scaffold.address(register), varMeta, emptyExpr, declLoc, initBlock);
                }
            }
        }
    }

    private function addRegisterDeclare(bir:Register[] registers, llvm:BasicBlock bb) {
        if !self.debugFull {
            return;
        }
        llvm:Metadata emptyExpr = self.diBuilder.createExpression([]);
        foreach var register in registers {
            if register is bir:DeclRegister {
                var [line, column] = self.file.lineColumn(register.pos);
                llvm:Metadata tyMeta = self.registerTypeToMetadata(register);
                llvm:Metadata scope = self.scope(register.pos);
                llvm:Metadata varMeta = self.diBuilder.createAutoVariable(ty=tyMeta, scope=scope, name=register.name, lineNo=line, file=self.diFile);
                llvm:Metadata declLoc = self.diBuilder.createDebugLocation(self.mod.llContext, line, column, scope);
                self.diBuilder.insertDeclareAtEnd(self.scaffold.address(register), varMeta, emptyExpr, declLoc, bb);
            }
        }
    }

    private function scope(bir:Position pos) returns llvm:Metadata {
        Scope scope = self.scopeInner(pos, self.rootScope);
        return scope.diScope;
    }

    private function scopeInner(bir:Position pos, Scope parent) returns Scope {
        foreach var child in parent.childScopes {
            if child.startPos <= pos {
                return child;
            }
        }
        return parent;
    }

    function debugLocation(bir:Position pos) returns DILocation {
        var [line, column] = self.file.lineColumn(pos);
        return self.diBuilder.createDebugLocation(self.mod.llContext, line, column, self.scope(pos));
    }
}
