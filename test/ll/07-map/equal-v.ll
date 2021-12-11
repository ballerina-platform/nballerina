@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %93, label %22
22:
  %23 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %24)
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %25)
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %26)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %27, i8 addrspace(1)** %v1
  %28 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %29)
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %30)
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %31)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %32, i8 addrspace(1)** %v2
  %33 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %34)
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %35)
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %36)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %37, i8 addrspace(1)** %v3
  %38 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 4)
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %39)
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %40)
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %41)
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901111), i8 addrspace(1)* %42)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %4
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %43, i8 addrspace(1)** %v4
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %46 = call i1 @_bal_eq(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  store i1 %46, i1* %5
  %47 = load i1, i1* %5, !dbg !8
  %48 = zext i1 %47 to i64, !dbg !8
  %49 = or i64 %48, 72057594037927936, !dbg !8
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %53 = call i1 @_bal_eq(i8 addrspace(1)* %51, i8 addrspace(1)* %52)
  store i1 %53, i1* %7
  %54 = load i1, i1* %7, !dbg !9
  %55 = zext i1 %54 to i64, !dbg !9
  %56 = or i64 %55, 72057594037927936, !dbg !9
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !9
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %60 = call i1 @_bal_eq(i8 addrspace(1)* %58, i8 addrspace(1)* %59)
  store i1 %60, i1* %9
  %61 = load i1, i1* %9, !dbg !10
  %62 = zext i1 %61 to i64, !dbg !10
  %63 = or i64 %62, 72057594037927936, !dbg !10
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !10
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %67 = call i1 @_bal_eq(i8 addrspace(1)* %65, i8 addrspace(1)* %66)
  store i1 %67, i1* %11
  %68 = load i1, i1* %11, !dbg !11
  %69 = zext i1 %68 to i64, !dbg !11
  %70 = or i64 %69, 72057594037927936, !dbg !11
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !11
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %74 = call i1 @_bal_eq(i8 addrspace(1)* %72, i8 addrspace(1)* %73)
  store i1 %74, i1* %13
  %75 = load i1, i1* %13, !dbg !12
  %76 = zext i1 %75 to i64, !dbg !12
  %77 = or i64 %76, 72057594037927936, !dbg !12
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !12
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %81 = call i1 @_bal_exact_eq(i8 addrspace(1)* %79, i8 addrspace(1)* %80)
  store i1 %81, i1* %15
  %82 = load i1, i1* %15, !dbg !13
  %83 = zext i1 %82 to i64, !dbg !13
  %84 = or i64 %83, 72057594037927936, !dbg !13
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %85), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !13
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %88 = call i1 @_bal_exact_eq(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  store i1 %88, i1* %17
  %89 = load i1, i1* %17, !dbg !14
  %90 = zext i1 %89 to i64, !dbg !14
  %91 = or i64 %90, 72057594037927936, !dbg !14
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %92), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !14
  ret void
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %94)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 4, scope: !5)
!9 = !DILocation(line: 11, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 15, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
