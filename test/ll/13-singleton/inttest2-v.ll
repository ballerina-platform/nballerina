@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}*, i64) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %s = alloca i64
  %v = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %30, label %10
10:
  store i64 1, i64* %s
  %11 = load i64, i64* %s
  store i64 %11, i64* %v
  %12 = load i64, i64* %v
  %13 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root0, i64 %12)
  store i1 %13, i1* %1
  %14 = load i1, i1* %1, !dbg !8
  %15 = zext i1 %14 to i64, !dbg !8
  %16 = or i64 %15, 72057594037927936, !dbg !8
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store i64 0, i64* %v
  %18 = load i64, i64* %v
  %19 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root0, i64 %18)
  store i1 %19, i1* %3
  %20 = load i1, i1* %3, !dbg !9
  %21 = zext i1 %20 to i64, !dbg !9
  %22 = or i64 %21, 72057594037927936, !dbg !9
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store i64 -1, i64* %v
  %24 = load i64, i64* %v
  %25 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root0, i64 %24)
  store i1 %25, i1* %5
  %26 = load i1, i1* %5, !dbg !10
  %27 = zext i1 %26 to i64, !dbg !10
  %28 = or i64 %27, 72057594037927936, !dbg !10
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  ret void
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/inttest2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
