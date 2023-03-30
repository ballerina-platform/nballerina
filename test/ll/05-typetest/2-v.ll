@_bal_stack_guard = external global ptr
@.str1 = internal unnamed_addr constant {i16, i16, [28 x i8]} {i16 21, i16 21, [28 x i8] c"this is a long string\00\00\00\00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Be04root3 = external constant i32
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Be04root4 = external constant i32
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %list = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %mapping = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %45, label %14
14:
  %15 = and i64 72057594037927935, 1
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_B_p(ptr addrspace(1) %17), !dbg !11
  store ptr addrspace(1) null, ptr %1
  %18 = zext i1 0 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  call void @_B_p(ptr addrspace(1) %20), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_p(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_p(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %21 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !15
  call void @_B_p(ptr addrspace(1) %21), !dbg !16
  store ptr addrspace(1) null, ptr %5
  %22 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775807), !dbg !17
  call void @_B_p(ptr addrspace(1) %22), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !19
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = and i64 72057594037927935, 1
  %28 = or i64 2449958197289549824, %27
  %29 = getelementptr i8, ptr addrspace(1) null, i64 %28
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = and i64 72057594037927935, 2
  %32 = or i64 2449958197289549824, %31
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 1
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 2, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %7
  %38 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %38, ptr %list
  %39 = load ptr addrspace(1), ptr %list
  %40 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %39), !dbg !20
  call void @_B_p(ptr addrspace(1) %40), !dbg !21
  store ptr addrspace(1) null, ptr %8
  %41 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !22
  store ptr addrspace(1) %41, ptr %9
  %42 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %42, ptr %mapping
  %43 = load ptr addrspace(1), ptr %mapping
  %44 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %43), !dbg !23
  call void @_B_p(ptr addrspace(1) %44), !dbg !24
  store ptr addrspace(1) null, ptr %10
  ret void
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !10
  unreachable
}
define internal void @_B_p(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %v.1 = alloca i1
  %v.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %v.3 = alloca i64
  %v.4 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %v.5 = alloca ptr addrspace(1)
  %v.6 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %v.7 = alloca ptr addrspace(1)
  %v.8 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %v.9 = alloca ptr addrspace(1)
  %v.10 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %106, label %15
15:
  store ptr addrspace(1) %0, ptr %v
  %16 = load ptr addrspace(1), ptr %v
  %17 = addrspacecast ptr addrspace(1) %16 to ptr
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 72057594037927936
  br i1 %20, label %21, label %35
21:
  %22 = load ptr addrspace(1), ptr %v
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i1
  store i1 %25, ptr %v.1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !27
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2697200315080339298), ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %2
  %34 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !28
  store ptr addrspace(1) null, ptr %3
  br label %35
35:
  %36 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %36, ptr %v.2
  %37 = load ptr addrspace(1), ptr %v
  %38 = addrspacecast ptr addrspace(1) %37 to ptr
  %39 = ptrtoint ptr %38 to i64
  %40 = and i64 %39, 2233785415175766016
  %41 = icmp eq i64 %40, 144115188075855872
  br i1 %41, label %42, label %54
42:
  %43 = load ptr addrspace(1), ptr %v
  %44 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %43), !dbg !29
  store i64 %44, ptr %v.3
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432114793), ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %4
  %53 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !31
  store ptr addrspace(1) null, ptr %5
  br label %54
54:
  %55 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %55, ptr %v.4
  %56 = load ptr addrspace(1), ptr %v
  %57 = addrspacecast ptr addrspace(1) %56 to ptr
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 2233785415175766016
  %60 = icmp eq i64 %59, 360287970189639680
  br i1 %60, label %61, label %72
61:
  %62 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %62, ptr %v.5
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !32
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738020822377722995), ptr addrspace(1) %67
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %68
  %69 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %70 = getelementptr i8, ptr addrspace(1) %69, i64 864691128455135236
  store ptr addrspace(1) %70, ptr %6
  %71 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %71), !dbg !33
  store ptr addrspace(1) null, ptr %7
  br label %72
72:
  %73 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %73, ptr %v.6
  %74 = load ptr addrspace(1), ptr %v
  %75 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %74), !dbg !34
  br i1 %75, label %76, label %88
76:
  %77 = load ptr addrspace(1), ptr %v
  %78 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %77, ptr @_Be04root3), !dbg !35
  store ptr addrspace(1) %78, ptr %v.7
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !36
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187995255566945), ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %8
  %87 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !37
  store ptr addrspace(1) null, ptr %9
  br label %88
88:
  %89 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %89, ptr %v.8
  %90 = load ptr addrspace(1), ptr %v
  %91 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %90), !dbg !38
  br i1 %91, label %92, label %104
92:
  %93 = load ptr addrspace(1), ptr %v
  %94 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %93, ptr @_Be04root4), !dbg !39
  store ptr addrspace(1) %94, ptr %v.9
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !40
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431849325), ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %10
  %103 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !41
  store ptr addrspace(1) null, ptr %11
  br label %104
104:
  %105 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %105, ptr %v.10
  ret void
106:
  %107 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %107), !dbg !26
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-typetest/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"p", linkageName:"_B_p", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 17, scope: !5)
!20 = !DILocation(line: 12, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 4, scope: !5)
!22 = !DILocation(line: 13, column: 23, scope: !5)
!23 = !DILocation(line: 14, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
!26 = !DILocation(line: 17, column: 9, scope: !7)
!27 = !DILocation(line: 19, column: 19, scope: !7)
!28 = !DILocation(line: 19, column: 8, scope: !7)
!29 = !DILocation(line: 21, column: 9, scope: !7)
!30 = !DILocation(line: 22, column: 19, scope: !7)
!31 = !DILocation(line: 22, column: 8, scope: !7)
!32 = !DILocation(line: 25, column: 19, scope: !7)
!33 = !DILocation(line: 25, column: 8, scope: !7)
!34 = !DILocation(line: 27, column: 9, scope: !7)
!35 = !DILocation(line: 27, column: 9, scope: !7)
!36 = !DILocation(line: 28, column: 19, scope: !7)
!37 = !DILocation(line: 28, column: 8, scope: !7)
!38 = !DILocation(line: 30, column: 9, scope: !7)
!39 = !DILocation(line: 30, column: 9, scope: !7)
!40 = !DILocation(line: 31, column: 19, scope: !7)
!41 = !DILocation(line: 31, column: 8, scope: !7)
