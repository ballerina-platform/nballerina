@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 18, i16 18, [20 x i8] c"aVeryLongFieldName\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [28 x i8]} {i16 24, i16 24, [28 x i8] c"anotherVeryLongFieldName\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 11, i16 11, [12 x i8] c"some string\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 2)
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %9)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [28 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %r
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %12 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %11, i64 1)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/inline1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
