@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %29, label %15
15:
  store i64 1, ptr %x
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %17 = load i64, ptr %x
  %18 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %17), !dbg !10
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %18), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %19, ptr %r
  %20 = load ptr addrspace(1), ptr %r
  %21 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %20, i64 0), !dbg !12
  %22 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %21), !dbg !13
  store i64 %22, ptr %2
  %23 = load i64, ptr %x
  %24 = load i64, ptr %2
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %23, i64 %24)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %62, label %31
27:
  %28 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !26
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  %32 = extractvalue {i64, i1} %25, 0
  store i64 %32, ptr %3
  %33 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !14
  %34 = load i64, ptr %3
  %35 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %34), !dbg !15
  call void @_bal_mapping_init_member(ptr addrspace(1) %33, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %35), !dbg !16
  store ptr addrspace(1) %33, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %36, ptr %r
  %37 = load ptr addrspace(1), ptr %r
  %38 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %37, i64 0), !dbg !17
  %39 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %38), !dbg !18
  store i64 %39, ptr %5
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load i64, ptr %5
  %45 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %44), !dbg !20
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %6
  %50 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !21
  store ptr addrspace(1) null, ptr %7
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824), ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %8
  %59 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !23
  store ptr addrspace(1) null, ptr %9
  %60 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !24
  call void @_bal_mapping_init_member(ptr addrspace(1) %60, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) null), !dbg !25
  store ptr addrspace(1) %60, ptr %10
  %61 = load ptr addrspace(1), ptr %10
  store ptr addrspace(1) %61, ptr %_
  ret void
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !7
  store ptr addrspace(1) %63, ptr %11
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-colon/field1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 28, scope: !5)
!10 = !DILocation(line: 5, column: 28, scope: !5)
!11 = !DILocation(line: 5, column: 28, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 8, scope: !5)
!15 = !DILocation(line: 6, column: 8, scope: !5)
!16 = !DILocation(line: 6, column: 8, scope: !5)
!17 = !DILocation(line: 7, column: 16, scope: !5)
!18 = !DILocation(line: 7, column: 16, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 4, scope: !5)
!22 = !DILocation(line: 8, column: 43, scope: !5)
!23 = !DILocation(line: 8, column: 32, scope: !5)
!24 = !DILocation(line: 8, column: 29, scope: !5)
!25 = !DILocation(line: 8, column: 29, scope: !5)
!26 = !DILocation(line: 9, column: 0, scope: !5)
