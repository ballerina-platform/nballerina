@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
define void @_B04rootmain() !dbg !5 {
  %l = alloca i8 addrspace(1)*
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
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 40)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097), i8 addrspace(1)* %10)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289981294), i8 addrspace(1)* null)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097), i8 addrspace(1)* %12)
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289981294), i8 addrspace(1)* %13)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %14, i8 addrspace(1)** %l
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %l, !dbg !10
  %16 = call i64 @_B_sum(i8 addrspace(1)* %15), !dbg !10
  store i64 %16, i64* %3, !dbg !10
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
define internal i64 @_B_sum(i8 addrspace(1)* %0) !dbg !7 {
  %intList = alloca i8 addrspace(1)*
  %temp = alloca i8 addrspace(1)*
  %total = alloca i64
  %2 = alloca i1
  %temp.1 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %29, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %intList
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %intList
  store i8 addrspace(1)* %11, i8 addrspace(1)** %temp
  store i64 0, i64* %total
  br label %12
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %temp
  %14 = icmp ne i8 addrspace(1)* %13, null
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %16, label %25
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %temp
  store i8 addrspace(1)* %17, i8 addrspace(1)** %temp.1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %temp.1
  %19 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %18, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097))
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %3
  %21 = load i64, i64* %total
  %22 = load i64, i64* %3
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %21, i64 %22)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %38, label %31
25:
  %26 = load i64, i64* %total
  ret i64 %26
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = extractvalue {i64, i1} %23, 0
  store i64 %32, i64* %4
  %33 = load i64, i64* %4
  store i64 %33, i64* %total
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %temp.1
  %35 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %34, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289981294))
  %36 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %5
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %37, i8 addrspace(1)** %temp
  br label %12
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !12
  store i8 addrspace(1)* %39, i8 addrspace(1)** %6
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/while01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sum", linkageName:"_B_sum", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 10, column: 15, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
