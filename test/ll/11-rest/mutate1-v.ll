@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %29, label %15
15:
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %17 = and i64 72057594037927935, 1
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %19), !dbg !10
  %20 = zext i1 0 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %22), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %r
  %24 = load ptr addrspace(1), ptr %r
  %25 = call i64 @_bal_mapping_set(ptr addrspace(1) %24, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187913735271539), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187995675523448)), !dbg !12
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %35
27:
  %28 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !27
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  %32 = load ptr addrspace(1), ptr %r
  %33 = call i64 @_bal_mapping_set(ptr addrspace(1) %32, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187913735271539), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573430997601)), !dbg !13
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %45
35:
  %36 = or i64 %25, 2816
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 %36), !dbg !7
  store ptr addrspace(1) %37, ptr %11
  br label %27
38:
  %39 = load ptr addrspace(1), ptr %r
  %40 = and i64 72057594037927935, 2
  %41 = or i64 2449958197289549824, %40
  %42 = getelementptr i8, ptr addrspace(1) null, i64 %41
  %43 = call i64 @_bal_mapping_set(ptr addrspace(1) %39, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %42), !dbg !14
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %55
45:
  %46 = or i64 %33, 3072
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 %46), !dbg !7
  store ptr addrspace(1) %47, ptr %11
  br label %27
48:
  %49 = load ptr addrspace(1), ptr %r
  %50 = zext i1 1 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  %53 = call i64 @_bal_mapping_set(ptr addrspace(1) %49, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %52), !dbg !15
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %103
55:
  %56 = or i64 %43, 3328
  %57 = call ptr addrspace(1) @_bal_panic_construct(i64 %56), !dbg !7
  store ptr addrspace(1) %57, ptr %11
  br label %27
58:
  %59 = load ptr addrspace(1), ptr %r
  %60 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %59, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !16
  %61 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %60), !dbg !17
  store i64 %61, ptr %2
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i64, ptr %2
  %67 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %66), !dbg !19
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %3
  %72 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !20
  store ptr addrspace(1) null, ptr %4
  %73 = load ptr addrspace(1), ptr %r
  %74 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %73, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !21
  %75 = addrspacecast ptr addrspace(1) %74 to ptr
  %76 = ptrtoint ptr %75 to i64
  %77 = trunc i64 %76 to i1
  store i1 %77, ptr %5
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load i1, ptr %5
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %6
  %90 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !23
  store ptr addrspace(1) null, ptr %7
  %91 = load ptr addrspace(1), ptr %r
  %92 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %91, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187913735271539)), !dbg !24
  store ptr addrspace(1) %92, ptr %8
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load ptr addrspace(1), ptr %8
  %98 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %97, ptr addrspace(1) %98
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %99
  %100 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %101 = getelementptr i8, ptr addrspace(1) %100, i64 864691128455135236
  store ptr addrspace(1) %101, ptr %9
  %102 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %102), !dbg !26
  store ptr addrspace(1) null, ptr %10
  ret void
103:
  %104 = or i64 %53, 3584
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 %104), !dbg !7
  store ptr addrspace(1) %105, ptr %11
  br label %27
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
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 10, scope: !5)
!10 = !DILocation(line: 10, column: 10, scope: !5)
!11 = !DILocation(line: 10, column: 10, scope: !5)
!12 = !DILocation(line: 11, column: 5, scope: !5)
!13 = !DILocation(line: 12, column: 5, scope: !5)
!14 = !DILocation(line: 13, column: 5, scope: !5)
!15 = !DILocation(line: 14, column: 5, scope: !5)
!16 = !DILocation(line: 15, column: 16, scope: !5)
!17 = !DILocation(line: 15, column: 16, scope: !5)
!18 = !DILocation(line: 15, column: 15, scope: !5)
!19 = !DILocation(line: 15, column: 15, scope: !5)
!20 = !DILocation(line: 15, column: 4, scope: !5)
!21 = !DILocation(line: 16, column: 16, scope: !5)
!22 = !DILocation(line: 16, column: 15, scope: !5)
!23 = !DILocation(line: 16, column: 4, scope: !5)
!24 = !DILocation(line: 17, column: 16, scope: !5)
!25 = !DILocation(line: 17, column: 15, scope: !5)
!26 = !DILocation(line: 17, column: 4, scope: !5)
!27 = !DILocation(line: 18, column: 0, scope: !5)
