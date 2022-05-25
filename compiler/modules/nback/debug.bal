import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;
import wso2/nballerina.types as t;
import wso2/nballerina.comm.err;

type DIBuilder llvm:DIBuilder;
type DISubprogram llvm:Metadata;
type DILocation llvm:Metadata;
type DIFile llvm:Metadata;
type DICompileUnit llvm:Metadata;
type DISubroutineType llvm:Metadata;

type Scope record {|
    llvm:Metadata diScope;
    bir:Position startPos;
    bir:Position endPos;
    Scope[] childScopes;
|};

type ModuleDI record {|
    DIBuilder builder;
    DIFile[] files;
    DICompileUnit compileUnit;
    DISubroutineType funcType;
    boolean debugFull;
|};

// Debug location will always be added
public const int DEBUG_USAGE_ERROR_CONSTRUCT = 0;
public const int DEBUG_USAGE_CALL = 1;

public type DebugLocationUsage DEBUG_USAGE_ERROR_CONSTRUCT|DEBUG_USAGE_CALL;

class DIScaffold {
    private DIBuilder diBuilder;
    private DIFile diFile;
    private Scaffold scaffold;
    private map<llvm:Metadata> typeMetadata = {};
    private boolean debugFull;
    private Scope rootScope;

    private bir:Position? currentPosition = ();
    private DILocation? noLineLocation = ();
    private DILocation? currentDebugLocation = ();

    function init(DISubprogram diFunc, ModuleDI moduleDI, Scaffold scaffold, bir:Position startPos, int partIndex) {
        self.rootScope = { diScope: diFunc, startPos, endPos: int:MAX_VALUE, childScopes: [] };
        self.diBuilder = moduleDI.builder;
        self.diFile = moduleDI.files[partIndex];
        self.debugFull = moduleDI.debugFull;
        self.scaffold = scaffold;
    }

    private function registerTypeToMetadata(bir:Register register) returns llvm:Metadata {
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
                tyMeta = self.diBuilder.createTypedef(self.diBuilder.createPointerType(pointeeTy=charMeta, sizeInBits=64, addressSpace=1),
                                                      "TaggedPtr", self.diFile, 0, scope=self.diFile);
            }
        }
        self.typeMetadata[ty] = tyMeta;
        return tyMeta;
    }

    // we use a seperate declPosition instead of startPos of registerScope since register scope starts at the begining of the Stmt/Function
    private function addRegisterScope(bir:RegisterScope registerScope, bir:Position declPos, Scope parent) returns Scope {
        int childCount = parent.childScopes.length();
        int? addIndex = ();
        foreach int i in 0 ..< childCount {
            Scope child = parent.childScopes[i];
            if declPos < child.startPos {
                if registerScope.endPos > child.startPos {
                    if registerScope.endPos < child.endPos {
                        // this should never happen
                        panic err:impossible("unexpected scope");
                    }
                    Scope newScope = self.createScope(declPos, registerScope.endPos, parent, [child]);
                    parent.childScopes[i] = newScope;
                    return newScope;
                }
                addIndex = i;
                break;
            }
            else if child.startPos == declPos && child.endPos == registerScope.endPos {
                // we already have the scope
                return child;
            }
            else if child.startPos < declPos && child.endPos >= registerScope.endPos {
                return self.addRegisterScope(registerScope, declPos, child);
            }
        }
        Scope newScope = self.createScope(declPos, registerScope.endPos, parent, []);
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

    private function createScope(bir:Position startPos, bir:Position endPos, Scope parent, Scope[] childScopes) returns Scope {
        var [line, column] = self.scaffold.lineColumn(startPos);
        llvm:Metadata diScope = self.diBuilder.createLexicalBlock(parent.diScope, self.diFile, line, column);
        return { diScope, startPos, endPos, childScopes };
    }

    function declareVariables(llvm:BasicBlock initBlock, bir:Register[] registers) {
        if !self.debugFull {
            return;
        }
        llvm:Metadata emptyExpr = self.diBuilder.createExpression([]);
        foreach bir:Register register in registers {
            if register !is bir:DeclRegister {
                continue;
            }
            Scope scope = self.addRegisterScope(register.scope, register.pos, self.rootScope);
            var [line, column] = self.scaffold.lineColumn(register.pos);
            llvm:Metadata tyMeta = self.registerTypeToMetadata(register);
            llvm:Metadata diScope = scope.diScope;
            llvm:Metadata varMeta = self.diBuilder.createAutoVariable(ty=tyMeta, scope=diScope, name=register.name, lineNo=line, file=self.diFile);
            llvm:Metadata declLoc = self.diBuilder.createDebugLocation(line, column, diScope);
            self.diBuilder.insertDeclareAtEnd(value=self.scaffold.address(register), varInfo=varMeta, expr=emptyExpr, debugLoc=declLoc, block=initBlock);
        }
    }

    function currentPos() returns bir:Position {
        return <bir:Position> self.currentPosition;
    }

    private function scope(bir:Position pos) returns llvm:Metadata {
        Scope scope = self.scopeInner(pos, self.rootScope);
        return scope.diScope;
    }

    private function scopeInner(bir:Position pos, Scope parent) returns Scope {
        foreach var child in parent.childScopes {
            if child.startPos <= pos && child.endPos >= pos {
                return self.scopeInner(pos, child);
            }
        }
        return parent;
    }

    function clearDebugLocation(llvm:Builder builder) {
        // in debugFull case every instruction must have a debug location
        if !self.debugFull {
            builder.setCurrentDebugLocation(());
            self.currentDebugLocation = ();
        }
    }

    function setCurrentPosition(llvm:Builder builder, bir:Position pos) {
        self.currentPosition = pos;
        if self.debugFull {
            self.currentDebugLocation = self.debugLocation(pos);
            builder.setCurrentDebugLocation(self.currentDebugLocation);
        }
        else {
            self.currentDebugLocation = ();
        }
    }

    function useDebugLocation(llvm:Builder builder, DebugLocationUsage usage) {
        // In the debugFull case, there is no need to do anything for DEBUG_USAGE_ERROR_CONSTRUCT
        // because the full location will have been set earlier.
        if usage == DEBUG_USAGE_ERROR_CONSTRUCT && self.debugFull {
            return;
        }
        DILocation loc;
        if usage == DEBUG_USAGE_ERROR_CONSTRUCT {
            DILocation? noLineLoc = self.noLineLocation;
            if noLineLoc == () {
                loc = self.debugLocation(0);
                self.noLineLocation = loc;
            }
            else {
                loc = noLineLoc;
            }
        }
        else {
            if self.currentDebugLocation == () {
                self.currentDebugLocation = self.debugLocation(self.currentPos());
            }
            loc = <DILocation>self.currentDebugLocation;
        }
        builder.setCurrentDebugLocation(loc);
    }

    function debugLocation(bir:Position pos) returns DILocation {
        var [line, column] = self.scaffold.lineColumn(pos);
        return self.diBuilder.createDebugLocation(line, column, self.scope(pos));
    }
}
