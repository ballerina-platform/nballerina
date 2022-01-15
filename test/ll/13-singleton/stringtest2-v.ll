@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %c = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %22, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901106), i8 addrspace(1)** %c
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  store i8 addrspace(1)* %9, i8 addrspace(1)** %s
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %11 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %10)
  store i1 %11, i1* %1
  %12 = load i1, i1* %1, !dbg !8
  %13 = zext i1 %12 to i64, !dbg !8
  %14 = or i64 %13, 72057594037927936, !dbg !8
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)** %s
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %17 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %16)
  store i1 %17, i1* %3
  %18 = load i1, i1* %3, !dbg !9
  %19 = zext i1 %18 to i64, !dbg !9
  %20 = or i64 %19, 72057594037927936, !dbg !9
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/stringtest2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
