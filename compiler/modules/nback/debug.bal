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
type DIScope llvm:Metadata;

type Scope record {|
    DIScope diScope;
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

type DWARFType "int"|"float"|"boolean"|"any";

// Debug location will always be added
public const int DEBUG_USAGE_ERROR_CONSTRUCT = 0;
public const int DEBUG_USAGE_CALL = 1;

public type DebugLocationUsage DEBUG_USAGE_ERROR_CONSTRUCT|DEBUG_USAGE_CALL;

class DIScaffold {
    private Scaffold scaffold;
    private map<llvm:Metadata> typeMetadata = {};
    private boolean debugFull;
    final Scope rootScope;
    final DIBuilder diBuilder;
    final DIFile diFile;

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

    function registerTypeToMetadata(bir:Register register) returns llvm:Metadata {
        t:SemType semType = register.semType;
        DWARFType ty = semTypeToDWARF(semType);
        llvm:Metadata? stored = self.typeMetadata[ty];
        if stored !is () {
            return stored;
        }
        llvm:Metadata tyMeta = DWARFTypeMetadata(ty, self.diBuilder, self.diFile);
        self.typeMetadata[ty] = tyMeta;
        return tyMeta;
    }

    function createScope(bir:Position startPos, bir:Position endPos, Scope parent, Scope[] childScopes) returns Scope {
        var [line, column] = self.scaffold.lineColumn(startPos);
        DIScope diScope = self.diBuilder.createLexicalBlock(parent.diScope, self.diFile, line, column);
        return { diScope, startPos, endPos, childScopes };
    }

    // we use a seperate declPosition instead of startPos of registerScope since register scope starts at the begining of the Stmt/Function
    function addRegisterScope(bir:RegisterScope registerScope, bir:Position declPos, Scope parent) returns Scope {
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

    function currentPos() returns bir:Position {
        return <bir:Position> self.currentPosition;
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
        return self.diBuilder.createDebugLocation(line, column, diScope(pos, self.rootScope));
    }
}

function diScope(bir:Position pos, Scope parent) returns DIScope {
    foreach var child in parent.childScopes {
        if child.startPos <= pos && child.endPos >= pos {
            return diScope(pos, child);
        }
    }
    return parent.diScope;
}

function semTypeToDWARF(t:SemType semType) returns DWARFType {
    if t:isSubtypeSimple(semType, t:INT) {
        return "int";
    }
    else if t:isSubtypeSimple(semType, t:FLOAT) {
        return "float";
    }
    else if t:isSubtypeSimple(semType, t:BOOLEAN) {
        return "boolean";
    }
    else {
        return "any";
    }
}

function DWARFTypeMetadata(DWARFType ty, DIBuilder diBuilder, DIFile diFile) returns llvm:Metadata {
    match ty {
        "int" => {
            return diBuilder.createBasicType(name="int", encoding="signed", sizeInBits=64);
        }
        "float" => {
            return diBuilder.createBasicType(name="float", encoding="float", sizeInBits=64);
        }
        "boolean" => {
            return diBuilder.createBasicType(name="boolean", encoding="boolean", sizeInBits=1);
        }
        _ => {
            llvm:Metadata charMeta = diBuilder.createBasicType(name="char", encoding="signed_char", sizeInBits=8);
            return diBuilder.createTypedef(diBuilder.createPointerType(pointeeTy=charMeta, sizeInBits=64, addressSpace=1),
                                                  "TaggedPtr", diFile, 0, scope=diFile);
        }
    }
}

function declareVariables(Scaffold scaffold, DIScaffold diScaffold, llvm:BasicBlock initBlock, bir:Register[] registers) {
    llvm:Metadata emptyExpr = diScaffold.diBuilder.createExpression([]);
    foreach bir:Register register in registers {
        if register !is bir:DeclRegister {
            continue;
        }
        Scope scope = diScaffold.addRegisterScope(register.scope, register.pos, diScaffold.rootScope);
        var [line, column] = scaffold.lineColumn(register.pos);
        llvm:Metadata tyMeta = diScaffold.registerTypeToMetadata(register);
        declareVariable(initBlock, register, diScaffold.diBuilder, diScaffold.diFile, scope.diScope, emptyExpr, tyMeta, scaffold.address(register), line, column);
    }
}

function declareVariable(llvm:BasicBlock bb, bir:DeclRegister register, DIBuilder diBuilder, DIFile diFile, DIScope diScope, llvm:Metadata expr,
                         llvm:Metadata tyMeta, llvm:Value value, int line, int column) {
    llvm:Metadata varMeta = diBuilder.createAutoVariable(ty=tyMeta, scope=diScope, name=register.name, lineNo=line, file=diFile);
    llvm:Metadata declLoc = diBuilder.createDebugLocation(line, column, diScope);
    diBuilder.insertDeclareAtEnd(value=value, varInfo=varMeta, expr=expr, debugLoc=declLoc, block=bb);
}
