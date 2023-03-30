@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bi04root4 = external constant {i32}
@_Be04root5 = external constant i32
@_Be04root6 = external constant i32
@_Be04root7 = external constant i32
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
define void @_B04rootmain() !dbg !5 {
  %ns = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %u = alloca ptr addrspace(1)
  %u.1 = alloca ptr addrspace(1)
  %u.2 = alloca ptr addrspace(1)
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
  %_ = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %u.3 = alloca ptr addrspace(1)
  %u.4 = alloca ptr addrspace(1)
  %u.5 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %97, label %17
17:
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431985267), ptr addrspace(1) %22
  %23 = and i64 72057594037927935, 3
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 1
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 2, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %1
  %30 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %30, ptr %ns
  %31 = load ptr addrspace(1), ptr %ns
  %32 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %31), !dbg !10
  store ptr addrspace(1) %32, ptr %u
  %33 = load ptr addrspace(1), ptr %u
  %34 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %33), !dbg !11
  br i1 %34, label %35, label %47
35:
  %36 = load ptr addrspace(1), ptr %u
  %37 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %36, ptr @_Be04root7), !dbg !22
  store ptr addrspace(1) %37, ptr %u.1
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !23
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441216078), ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %2
  %46 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !24
  store ptr addrspace(1) null, ptr %3
  br label %95
47:
  %48 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %48, ptr %u.2
  %49 = load ptr addrspace(1), ptr %u.2
  %50 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %49), !dbg !12
  br i1 %50, label %51, label %63
51:
  %52 = load ptr addrspace(1), ptr %u.2
  %53 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %52, ptr @_Be04root6), !dbg !19
  store ptr addrspace(1) %53, ptr %4
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !20
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441217363), ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %6
  %62 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !21
  store ptr addrspace(1) null, ptr %7
  br label %93
63:
  %64 = load ptr addrspace(1), ptr %u.2
  store ptr addrspace(1) %64, ptr %5
  %65 = load ptr addrspace(1), ptr %5
  %66 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %65), !dbg !13
  br i1 %66, label %67, label %79
67:
  %68 = load ptr addrspace(1), ptr %5
  %69 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %68, ptr @_Be04root5), !dbg !16
  store ptr addrspace(1) %69, ptr %8
  %70 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !17
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 3
  %72 = load ptr addrspace(1), ptr addrspace(1) %71, align 8
  %73 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %73, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441217358), ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %10
  %78 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !18
  store ptr addrspace(1) null, ptr %11
  br label %91
79:
  %80 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %80, ptr %9
  %81 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %81, ptr %_
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !14
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441216083), ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %12
  %90 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !15
  store ptr addrspace(1) null, ptr %13
  br label %91
91:
  %92 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %92, ptr %u.3
  br label %93
93:
  %94 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %94, ptr %u.4
  br label %95
95:
  %96 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %96, ptr %u.5
  ret void
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %98), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-mutate/listif2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 16, scope: !5)
!9 = !DILocation(line: 16, column: 12, scope: !5)
!10 = !DILocation(line: 17, column: 8, scope: !5)
!11 = !DILocation(line: 19, column: 9, scope: !5)
!12 = !DILocation(line: 21, column: 16, scope: !5)
!13 = !DILocation(line: 23, column: 16, scope: !5)
!14 = !DILocation(line: 27, column: 19, scope: !5)
!15 = !DILocation(line: 27, column: 8, scope: !5)
!16 = !DILocation(line: 28, column: 4, scope: !5)
!17 = !DILocation(line: 24, column: 19, scope: !5)
!18 = !DILocation(line: 24, column: 8, scope: !5)
!19 = !DILocation(line: 25, column: 4, scope: !5)
!20 = !DILocation(line: 22, column: 19, scope: !5)
!21 = !DILocation(line: 22, column: 8, scope: !5)
!22 = !DILocation(line: 23, column: 4, scope: !5)
!23 = !DILocation(line: 20, column: 19, scope: !5)
!24 = !DILocation(line: 20, column: 8, scope: !5)
