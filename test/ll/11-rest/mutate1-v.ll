@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_mapping_inexact_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %24, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %14)
  %15 = zext i1 0 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %17)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %r
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %20 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %19, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475883924911219), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475965865163128))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %30
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %28 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475883924911219), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %38
30:
  %31 = or i64 %20, 2816
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 %31), !dbg !7
  store i8 addrspace(1)* %32, i8 addrspace(1)** %8
  br label %22
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %36 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %34, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %48
38:
  %39 = or i64 %28, 3072
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %8
  br label %22
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %43 = zext i1 1 to i64
  %44 = or i64 %43, 72057594037927936
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44
  %46 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %42, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %51, label %69
48:
  %49 = or i64 %36, 3328
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 %49), !dbg !7
  store i8 addrspace(1)* %50, i8 addrspace(1)** %8
  br label %22
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %53 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %52, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %54 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %53)
  store i64 %54, i64* %2
  %55 = load i64, i64* %2, !dbg !8
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %55), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %58 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %57, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  %59 = addrspacecast i8 addrspace(1)* %58 to i8*
  %60 = ptrtoint i8* %59 to i64
  %61 = trunc i64 %60 to i1
  store i1 %61, i1* %4
  %62 = load i1, i1* %4, !dbg !9
  %63 = zext i1 %62 to i64, !dbg !9
  %64 = or i64 %63, 72057594037927936, !dbg !9
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %67 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %66, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475883924911219))
  store i8 addrspace(1)* %67, i8 addrspace(1)** %6
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %6, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  ret void
69:
  %70 = or i64 %46, 3584
  %71 = call i8 addrspace(1)* @_bal_panic_construct(i64 %70), !dbg !7
  store i8 addrspace(1)* %71, i8 addrspace(1)** %8
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-rest/mutate1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
!9 = !DILocation(line: 16, column: 4, scope: !5)
!10 = !DILocation(line: 17, column: 4, scope: !5)
