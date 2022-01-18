@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %s = alloca i64
  %v = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %32, label %10
10:
  store i64 1, i64* %s
  %11 = load i64, i64* %s
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %v
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %14 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %13)
  store i1 %14, i1* %1
  %15 = load i1, i1* %1, !dbg !8
  %16 = zext i1 %15 to i64, !dbg !8
  %17 = or i64 %16, 72057594037927936, !dbg !8
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %v
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %21 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %20)
  store i1 %21, i1* %3
  %22 = load i1, i1* %3, !dbg !9
  %23 = zext i1 %22 to i64, !dbg !9
  %24 = or i64 %23, 72057594037927936, !dbg !9
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)** %v
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %26)
  store i1 %27, i1* %5
  %28 = load i1, i1* %5, !dbg !10
  %29 = zext i1 %28 to i64, !dbg !10
  %30 = or i64 %29, 72057594037927936, !dbg !10
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  ret void
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/inttest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
