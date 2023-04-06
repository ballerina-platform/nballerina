@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@_Bt04root5 = external constant {i32, i32, [0 x ptr]}
@_Bt04root6 = external constant {i32, i32, [0 x ptr]}
@_Bt04root7 = external constant {i32, i32, [0 x ptr]}
@_Bt04root8 = external constant {i32, i32, [0 x ptr]}
@_Bt04root9 = external constant {i32, i32, [0 x ptr]}
@_Bt04root10 = external constant {i32, i32, [0 x ptr]}
@_Bt04root11 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %107, label %22
22:
  %23 = call i1 @_B_isKeyword(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738020822377722995)), !dbg !11
  store i1 %23, ptr %1
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load i1, ptr %1
  %29 = zext i1 %28 to i64
  %30 = or i64 %29, 72057594037927936
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %2
  %36 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %37 = call i1 @_B_isKeyword(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !14
  store i1 %37, ptr %4
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = load i1, ptr %4
  %43 = zext i1 %42 to i64
  %44 = or i64 %43, 72057594037927936
  %45 = getelementptr i8, ptr addrspace(1) null, i64 %44
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %5
  %50 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %51 = call i1 @_B_isKeyword(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441222249)), !dbg !17
  store i1 %51, ptr %7
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load i1, ptr %7
  %57 = zext i1 %56 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, ptr addrspace(1) null, i64 %58
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %8
  %64 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %65 = call i1 @_B_isKeyword(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848357477)), !dbg !20
  store i1 %65, ptr %10
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i1, ptr %10
  %71 = zext i1 %70 to i64
  %72 = or i64 %71, 72057594037927936
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %11
  %78 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %79 = call i1 @_B_isKeyword(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909657813350)), !dbg !23
  store i1 %79, ptr %13
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i1, ptr %13
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %14
  %92 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %93 = call i1 @_B_isKeyword(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738028536340440434)), !dbg !26
  store i1 %93, ptr %16
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load i1, ptr %16
  %99 = zext i1 %98 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, ptr addrspace(1) null, i64 %100
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %17
  %106 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !28
  store ptr addrspace(1) null, ptr %18
  ret void
107:
  %108 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %108), !dbg !10
  unreachable
}
define internal i1 @_B_isKeyword(ptr addrspace(1) %0) !dbg !7 {
  %s = alloca ptr addrspace(1)
  %s.1 = alloca ptr addrspace(1)
  %s.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i8
  %23 = load ptr, ptr @_bal_stack_guard
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %92, label %25
25:
  store ptr addrspace(1) %0, ptr %s
  %26 = load ptr addrspace(1), ptr %s
  %27 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %26), !dbg !31
  br i1 %27, label %28, label %30
28:
  %29 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %29, ptr %s.1
  ret i1 1
30:
  %31 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %31, ptr %s.2
  %32 = load ptr addrspace(1), ptr %s.2
  %33 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %32), !dbg !32
  br i1 %33, label %34, label %36
34:
  %35 = load ptr addrspace(1), ptr %s.2
  store ptr addrspace(1) %35, ptr %2
  ret i1 1
36:
  %37 = load ptr addrspace(1), ptr %s.2
  store ptr addrspace(1) %37, ptr %3
  %38 = load ptr addrspace(1), ptr %3
  %39 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %38), !dbg !33
  br i1 %39, label %40, label %42
40:
  %41 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %41, ptr %4
  ret i1 1
42:
  %43 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %43, ptr %5
  %44 = load ptr addrspace(1), ptr %5
  %45 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %44), !dbg !34
  br i1 %45, label %46, label %48
46:
  %47 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %47, ptr %6
  ret i1 1
48:
  %49 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %49, ptr %7
  %50 = load ptr addrspace(1), ptr %7
  %51 = call i1 @_bal_type_contains(ptr @_Bt04root5, ptr addrspace(1) %50), !dbg !35
  br i1 %51, label %52, label %54
52:
  %53 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %53, ptr %8
  ret i1 1
54:
  %55 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %55, ptr %9
  %56 = load ptr addrspace(1), ptr %9
  %57 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %56), !dbg !36
  br i1 %57, label %58, label %60
58:
  %59 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %59, ptr %10
  ret i1 1
60:
  %61 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %61, ptr %11
  %62 = load ptr addrspace(1), ptr %11
  %63 = call i1 @_bal_type_contains(ptr @_Bt04root7, ptr addrspace(1) %62), !dbg !37
  br i1 %63, label %64, label %66
64:
  %65 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %65, ptr %12
  ret i1 1
66:
  %67 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %67, ptr %13
  %68 = load ptr addrspace(1), ptr %13
  %69 = call i1 @_bal_type_contains(ptr @_Bt04root8, ptr addrspace(1) %68), !dbg !38
  br i1 %69, label %70, label %72
70:
  %71 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %71, ptr %14
  ret i1 1
72:
  %73 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %73, ptr %15
  %74 = load ptr addrspace(1), ptr %15
  %75 = call i1 @_bal_type_contains(ptr @_Bt04root9, ptr addrspace(1) %74), !dbg !39
  br i1 %75, label %76, label %78
76:
  %77 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %77, ptr %16
  ret i1 1
78:
  %79 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %79, ptr %17
  %80 = load ptr addrspace(1), ptr %17
  %81 = call i1 @_bal_type_contains(ptr @_Bt04root10, ptr addrspace(1) %80), !dbg !40
  br i1 %81, label %82, label %84
82:
  %83 = load ptr addrspace(1), ptr %17
  store ptr addrspace(1) %83, ptr %18
  ret i1 1
84:
  %85 = load ptr addrspace(1), ptr %17
  store ptr addrspace(1) %85, ptr %19
  %86 = load ptr addrspace(1), ptr %19
  %87 = call i1 @_bal_type_contains(ptr @_Bt04root11, ptr addrspace(1) %86), !dbg !41
  br i1 %87, label %88, label %90
88:
  %89 = load ptr addrspace(1), ptr %19
  store ptr addrspace(1) %89, ptr %20
  ret i1 1
90:
  %91 = load ptr addrspace(1), ptr %19
  store ptr addrspace(1) %91, ptr %21
  ret i1 0
92:
  %93 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !29
  call void @_bal_panic(ptr addrspace(1) %93), !dbg !30
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-string/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"isKeyword", linkageName:"_B_isKeyword", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 4, scope: !5)
!20 = !DILocation(line: 8, column: 15, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 15, scope: !5)
!24 = !DILocation(line: 9, column: 15, scope: !5)
!25 = !DILocation(line: 9, column: 4, scope: !5)
!26 = !DILocation(line: 10, column: 15, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 4, scope: !5)
!29 = !DILocation(line: 0, column: 0, scope: !7)
!30 = !DILocation(line: 13, column: 9, scope: !7)
!31 = !DILocation(line: 14, column: 9, scope: !7)
!32 = !DILocation(line: 17, column: 9, scope: !7)
!33 = !DILocation(line: 20, column: 9, scope: !7)
!34 = !DILocation(line: 23, column: 9, scope: !7)
!35 = !DILocation(line: 26, column: 9, scope: !7)
!36 = !DILocation(line: 29, column: 9, scope: !7)
!37 = !DILocation(line: 32, column: 9, scope: !7)
!38 = !DILocation(line: 35, column: 9, scope: !7)
!39 = !DILocation(line: 38, column: 9, scope: !7)
!40 = !DILocation(line: 41, column: 9, scope: !7)
!41 = !DILocation(line: 44, column: 9, scope: !7)
