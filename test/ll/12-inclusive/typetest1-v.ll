@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
@_Bt04root2 = external constant {i32, i32, [0 x i8*]}
@_Bt04root3 = external constant {i32, i32, [0 x i8*]}
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
@_Bt04root6 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %r2 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %116, label %29
29:
  %30 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %30, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %31)
  %32 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %30, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %32)
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %33, i8 addrspace(1)** %r1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %r1
  %35 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %34)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %m
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %37 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %36)
  store i1 %37, i1* %2
  %38 = load i1, i1* %2, !dbg !8
  %39 = zext i1 %38 to i64, !dbg !8
  %40 = or i64 %39, 72057594037927936, !dbg !8
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %43 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root2, i8 addrspace(1)* %42)
  store i1 %43, i1* %4
  %44 = load i1, i1* %4, !dbg !9
  %45 = zext i1 %44 to i64, !dbg !9
  %46 = or i64 %45, 72057594037927936, !dbg !9
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %49 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root3, i8 addrspace(1)* %48)
  store i1 %49, i1* %6
  %50 = load i1, i1* %6, !dbg !10
  %51 = zext i1 %50 to i64, !dbg !10
  %52 = or i64 %51, 72057594037927936, !dbg !10
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %54 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root4, i64 2)
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %54, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %55)
  %56 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %54, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %56)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %8
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %57, i8 addrspace(1)** %r2
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  %59 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %58)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %m
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %61 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %60)
  store i1 %61, i1* %9
  %62 = load i1, i1* %9, !dbg !11
  %63 = zext i1 %62 to i64, !dbg !11
  %64 = or i64 %63, 72057594037927936, !dbg !11
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %67 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root2, i8 addrspace(1)* %66)
  store i1 %67, i1* %11
  %68 = load i1, i1* %11, !dbg !12
  %69 = zext i1 %68 to i64, !dbg !12
  %70 = or i64 %69, 72057594037927936, !dbg !12
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !12
  %72 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root5, i64 2)
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %72, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %73)
  %74 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %72, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %74)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %13
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  store i8 addrspace(1)* %75, i8 addrspace(1)** %m
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %77 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %76)
  store i1 %77, i1* %14
  %78 = load i1, i1* %14, !dbg !13
  %79 = zext i1 %78 to i64, !dbg !13
  %80 = or i64 %79, 72057594037927936, !dbg !13
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %83 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root2, i8 addrspace(1)* %82)
  store i1 %83, i1* %16
  %84 = load i1, i1* %16, !dbg !14
  %85 = zext i1 %84 to i64, !dbg !14
  %86 = or i64 %85, 72057594037927936, !dbg !14
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %r1
  %89 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %88)
  store i8 addrspace(1)* %89, i8 addrspace(1)** %v
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %91 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root6, i8 addrspace(1)* %90)
  store i1 %91, i1* %18
  %92 = load i1, i1* %18, !dbg !15
  %93 = zext i1 %92 to i64, !dbg !15
  %94 = or i64 %93, 72057594037927936, !dbg !15
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %97 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root6, i8 addrspace(1)* %96)
  store i1 %97, i1* %20
  %98 = load i1, i1* %20, !dbg !16
  %99 = zext i1 %98 to i64, !dbg !16
  %100 = or i64 %99, 72057594037927936, !dbg !16
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  %103 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %102)
  store i8 addrspace(1)* %103, i8 addrspace(1)** %v
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %105 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root6, i8 addrspace(1)* %104)
  store i1 %105, i1* %22
  %106 = load i1, i1* %22, !dbg !17
  %107 = zext i1 %106 to i64, !dbg !17
  %108 = or i64 %107, 72057594037927936, !dbg !17
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %109), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %111 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root6, i8 addrspace(1)* %110)
  store i1 %111, i1* %24
  %112 = load i1, i1* %24, !dbg !18
  %113 = zext i1 %112 to i64, !dbg !18
  %114 = or i64 %113, 72057594037927936, !dbg !18
  %115 = getelementptr i8, i8 addrspace(1)* null, i64 %114, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %115), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  ret void
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %117)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/typetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 22, column: 4, scope: !5)
!9 = !DILocation(line: 23, column: 4, scope: !5)
!10 = !DILocation(line: 24, column: 4, scope: !5)
!11 = !DILocation(line: 27, column: 4, scope: !5)
!12 = !DILocation(line: 28, column: 4, scope: !5)
!13 = !DILocation(line: 30, column: 4, scope: !5)
!14 = !DILocation(line: 31, column: 4, scope: !5)
!15 = !DILocation(line: 33, column: 4, scope: !5)
!16 = !DILocation(line: 34, column: 4, scope: !5)
!17 = !DILocation(line: 36, column: 4, scope: !5)
!18 = !DILocation(line: 37, column: 4, scope: !5)
