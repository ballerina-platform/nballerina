import wso2/nballerina.bir;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types.sexpr as ts;

// JBUG #37145 can't inline FunctionTag, RegistersTag types
public type FunctionTag "function";
public type RegistersTag "registers";
public type BlocksTag "blocks";
public type ClosureTag "closures"; // TODO: this is probably the wrong name

public type Position ["loc", int, int];
public type File [sexpr:String, sexpr:String]|[sexpr:String, sexpr:String, sexpr:String]; // [name, path, ?dir]
public type FileRef ["file", sexpr:String];
public type Module [["atoms", [sexpr:String, ts:Atom]...], ["defns", Function...], ["decls", ModuleDecls...], ["files", File...]];
public type ModuleId [sexpr:String, sexpr:String, sexpr:String...];
public type Signature [ts:Type, ts:Type[], ts:Type];
public type FuncDecl [sexpr:String, FunctionTag, Signature];
public type ModuleDecls [ModuleId, FuncDecl...];
public type Function [sexpr:String, FunctionVisibility, [FunctionTag, Signature, FileRef, Position, [RegistersTag, Register...], [BlocksTag, Block...], [ClosureTag, AnonFunction...]]]|
                     [sexpr:String, FunctionVisibility, [FunctionTag, Signature, FileRef, Position, [RegistersTag, Register...], [BlocksTag, Block...]]];
public type AnonFunction [string, [FunctionTag, Signature, Position, [RegistersTag, Register...], [BlocksTag, Block...], [ClosureTag, AnonFunction...]]]|
                         [string, [FunctionTag, Signature, Position, [RegistersTag, Register...], [BlocksTag, Block...]]];
public type Register [sexpr:Symbol, bir:DeclRegisterKind|bir:TMP_REGISTER_KIND|bir:ASSIGN_TMP_REGISTER_KIND , ts:Type]|
                     [sexpr:Symbol, bir:NARROW_REGISTER_KIND, ts:Type, sexpr:Symbol];
public type BlockPanic readonly & (["no-panic"]|["on-panic", Label]);
public type Block readonly & [sexpr:Symbol, BlockPanic, (Position|Insn)...];
public type RegisterName sexpr:Symbol;
public type Result RegisterName;
public type Operand RegisterName|sexpr:Data[0]|sexpr:String|["float", sexpr:String]|["decimal", sexpr:String]|["function", FunctionRef]|int|boolean;
public type Label sexpr:Symbol;

public type PublicVisibility readonly & ["public"];
final PublicVisibility PUBLIC_VISIBILITY = ["public"];
public type ModuleVisibility sexpr:Data[0];
public final ModuleVisibility MODULE_VISIBILITY = [];
public type FunctionVisibility PublicVisibility|ModuleVisibility;

public type ExternalFunctionRef readonly & ["module-get", ModuleId, sexpr:String];
public type FunctionRef int|ExternalFunctionRef;
public type MapEntry readonly & [sexpr:String, Operand];
public type TypeMergePred readonly & [Label, Operand];

public type Insn ResultInsn|OperandInsn|Unimpl|
                 CallInsn|CallRestListInsn|CallGenericInsn|TypeCondBranchInsn|BranchInsn|TypeCastInsn|TypeTestInsn|CondBranchInsn|MappingConstructInsn|ListConstructInsn|TypeMergeInsn|ListGetInsn;
public type CallInsn readonly & ["call", FunctionRef|RegisterName, Result, Operand...];
public type CallRestListInsn readonly & ["call-rest-list", FunctionRef|RegisterName, Result, Operand...];
public type CallGenericInsn readonly & ["call-generic", FunctionRef, Signature, Result, Operand...];
public type TypeCondBranchInsn readonly & ["type-cond-branch", Operand, ts:Type, Label, Label, RegisterName, RegisterName];
public type TypeCastInsn readonly & ["type-cast", Result, ts:Type, Operand];
public type TypeTestInsn readonly & ["type-test", Result, ts:Type, Operand, boolean];
public type CondBranchInsn readonly & ["cond-branch", Result, Label, Label];
public type MappingConstructInsn readonly & ["mapping-construct", Result, MapEntry...];
public type ListConstructInsn readonly & ["list-construct", Result, Operand...];
public type TypeMergeInsn readonly & ["type-merge", Result, [Label, Operand]...];
public type BranchInsn readonly & ["branch"|"branch-back", Label];

type ResultInsn EqualityInsn|AssignInsn|IntBinaryInsn|IntNoPanicArithmeticBinaryInsn|DecimalArithmeticBinaryInsn|ConvertToIntInsn|ListGetInsn|BooleanNotInsn|CatchInsn|CompareInsn|MappingGetInsn|
                StringConcatInsn|FloatArithmeticBinaryInsn|ConvertToFloatInsn|MappingFillingGetInsn|ConvertToDecimalInsn|FloatNegateInsn|ErrorConstructInsn|DecimalNegateInsn;
public type EqualityInsn readonly & ["equal"|"not-equal"|"exact-equal"|"not-exact-equal", Result, Operand, Operand];
public type AssignInsn readonly & ["set", Result, Operand];
public type IntBinaryInsn readonly & ["int+"|"int/"|"int-"|"int*"|"int%"|"int^"|"int&"|"int|"|"int<<"|"int>>"|"int>>>", Result, Operand, Operand];
public type IntNoPanicArithmeticBinaryInsn readonly & ["no-panic-int+"|"no-panic-int-"|"no-panic-int*"|"no-panic-int/"|"no-panic-int%", Result, Operand, Operand];
public type DecimalArithmeticBinaryInsn readonly & ["decimal+"|"decimal-"|"decimal*"|"decimal/"|"decimal%", Result, Operand, Operand];
public type ConvertToIntInsn readonly & ["convert-to-int", Result, Operand];
public type ConvertToFloatInsn readonly & ["convert-to-float", Result, Operand];
public type ConvertToDecimalInsn readonly & ["convert-to-decimal", Result, Operand];
public type BooleanNotInsn readonly & ["boolean!", Result, Operand];
public type FloatNegateInsn readonly & ["float-negate", Result, Operand];
public type DecimalNegateInsn readonly & ["decimal-negate", Result, Operand];
public type CatchInsn readonly & ["catch", Result];
public type CompareInsn readonly & ["less-than"|"greater-than"|"less-than-or-equal"|"greater-than-or-equal", Result, Operand, Operand];
public type StringConcatInsn readonly & ["str-concat", Result, Operand, Operand];
public type FloatArithmeticBinaryInsn readonly & ["float+"|"float-"|"float*"|"float/"|"float%", Result, Operand, Operand];
public type MappingGetInsn readonly & ["mapping-get", Result, RegisterName, Operand];
public type MappingFillingGetInsn readonly & ["mapping-filling-get", Result, RegisterName, Operand];
public type ErrorConstructInsn readonly & ["error-construct", Result, Operand];
public type ListGetInsn readonly & ["list-get"|"list-filling-get", Result, Operand, Operand];

type OperandInsn RetInsn|AbnormalRetInsn|MappingSetInsn|PanicInsn|ListSetInsn;
public type RetInsn readonly & ["ret", Operand];
public type AbnormalRetInsn readonly & ["abnormal-ret", Operand];
public type MappingSetInsn readonly & ["mapping-set", RegisterName, Operand, Operand];
public type PanicInsn readonly & ["panic", Operand];
public type ListSetInsn readonly & ["list-set", Operand, Operand, Operand];

public type Unimpl readonly & ["unimpl", sexpr:Data...];
