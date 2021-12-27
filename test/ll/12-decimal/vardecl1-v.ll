@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec2 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6144\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"1.2\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %d2 = alloca i8 addrspace(1)*
  %d3 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %9, i8 addrspace(1)** %d1
  %10 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %10, i8 addrspace(1)** %d2
  %11 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %11, i8 addrspace(1)** %d3
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %d1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %d2, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %d3, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %_
  ret void
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/vardecl1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
