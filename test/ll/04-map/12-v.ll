@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %m = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %16, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m, !dbg !12
  call void @_B_put(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038192998), i64 5), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %m, !dbg !13
  %13 = call i64 @_B_get(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038192998)), !dbg !13
  store i64 %13, i64* %3, !dbg !13
  %14 = load i64, i64* %3, !dbg !14
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
define internal void @_B_put(i8 addrspace(1)* %0, i8 addrspace(1)* %1, i64 %2) !dbg !7 {
  %m = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %v = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i8 addrspace(1)* %1, i8 addrspace(1)** %k
  store i64 %2, i64* %v
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %11 = load i64, i64* %v
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11)
  %13 = call i64 @_bal_mapping_set(i8 addrspace(1)* %10, i8 addrspace(1)* %9, i8 addrspace(1)* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %20
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  ret void
20:
  %21 = or i64 %13, 2816
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 %21), !dbg !15
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  br label %15
}
define internal i64 @_B_get(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !9 {
  %m = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %22, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i8 addrspace(1)* %1, i8 addrspace(1)** %k
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %13 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %12, i8 addrspace(1)* %11)
  %14 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %12, i8 addrspace(1)* %13)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %3
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %16 = addrspacecast i8 addrspace(1)* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 2233785415175766016
  %19 = icmp eq i64 %18, 576460752303423488
  br i1 %19, label %30, label %34
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 504403158265495552
  br i1 %29, label %40, label %43
30:
  %31 = call double @_bal_tagged_to_float(i8 addrspace(1)* %15)
  %32 = call {i64, i1} @_bal_float_to_int(double %31)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %38, label %35
34:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %4
  br label %24
35:
  %36 = extractvalue {i64, i1} %32, 0
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %4
  br label %24
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 4099), !dbg !16
  store i8 addrspace(1)* %39, i8 addrspace(1)** %6
  br label %20
40:
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  store i64 %41, i64* %5
  %42 = load i64, i64* %5
  ret i64 %42
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 4099), !dbg !16
  store i8 addrspace(1)* %44, i8 addrspace(1)** %6
  br label %20
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"put", linkageName:"_B_put", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"get", linkageName:"_B_get", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
