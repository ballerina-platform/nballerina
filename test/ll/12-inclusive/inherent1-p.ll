@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %p = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %19, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 99)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620769633), i8 addrspace(1)* %10)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037601134), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658))
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %p
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %p, !dbg !10
  %13 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %12), !dbg !10
  call void @_B_foo(i8 addrspace(1)* %13), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %15 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620769633))
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %3
  %17 = load i64, i64* %3, !dbg !11
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %8 = call i64 @_bal_mapping_set(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620769633), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3054685671805382516))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %15
10:
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  ret void
15:
  %16 = or i64 %8, 3840
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 %16), !dbg !12
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  br label %10
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/inherent1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
