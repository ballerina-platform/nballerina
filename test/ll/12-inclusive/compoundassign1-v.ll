@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca double
  %3 = alloca double
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca double
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %35, label %16
16:
  %17 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %18 = and i64 72057594037927935, 5
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  call void @_bal_mapping_init_member(ptr addrspace(1) %17, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422), ptr addrspace(1) %20), !dbg !10
  %21 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %17, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %21), !dbg !12
  store ptr addrspace(1) %17, ptr %1
  %22 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %22, ptr %r
  %23 = load ptr addrspace(1), ptr %r
  %24 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %23, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !13
  %25 = call double @_bal_tagged_to_float(ptr addrspace(1) %24), !dbg !14
  store double %25, ptr %2
  %26 = load double, ptr %2
  %27 = fadd double %26, 1.0
  store double %27, ptr %3
  %28 = load ptr addrspace(1), ptr %r
  %29 = load double, ptr %3
  %30 = call ptr addrspace(1) @_bal_float_to_tagged(double %29), !dbg !15
  %31 = call i64 @_bal_mapping_set(ptr addrspace(1) %28, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %30), !dbg !16
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %44
33:
  %34 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !31
  unreachable
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !8
  unreachable
37:
  %38 = load ptr addrspace(1), ptr %r
  %39 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %38, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422)), !dbg !17
  %40 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %39), !dbg !18
  store i64 %40, ptr %4
  %41 = load i64, ptr %4
  %42 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %41, i64 2)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %54, label %47
44:
  %45 = or i64 %31, 2560
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 %45), !dbg !7
  store ptr addrspace(1) %46, ptr %12
  br label %33
47:
  %48 = extractvalue {i64, i1} %42, 0
  store i64 %48, ptr %5
  %49 = load ptr addrspace(1), ptr %r
  %50 = load i64, ptr %5
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !19
  %52 = call i64 @_bal_mapping_set(ptr addrspace(1) %49, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422), ptr addrspace(1) %51), !dbg !20
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %56, label %85
54:
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !7
  store ptr addrspace(1) %55, ptr %12
  br label %33
56:
  %57 = load ptr addrspace(1), ptr %r
  %58 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %57, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !21
  %59 = call double @_bal_tagged_to_float(ptr addrspace(1) %58), !dbg !22
  store double %59, ptr %6
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load double, ptr %6
  %65 = call ptr addrspace(1) @_bal_float_to_tagged(double %64), !dbg !24
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %7
  %70 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !25
  store ptr addrspace(1) null, ptr %8
  %71 = load ptr addrspace(1), ptr %r
  %72 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %71, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422)), !dbg !26
  %73 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %72), !dbg !27
  store i64 %73, ptr %9
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load i64, ptr %9
  %79 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %78), !dbg !29
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %10
  %84 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !30
  store ptr addrspace(1) null, ptr %11
  ret void
85:
  %86 = or i64 %52, 2816
  %87 = call ptr addrspace(1) @_bal_panic_construct(i64 %86), !dbg !7
  store ptr addrspace(1) %87, ptr %12
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/compoundassign1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 10, scope: !5)
!10 = !DILocation(line: 9, column: 10, scope: !5)
!11 = !DILocation(line: 9, column: 10, scope: !5)
!12 = !DILocation(line: 9, column: 10, scope: !5)
!13 = !DILocation(line: 10, column: 11, scope: !5)
!14 = !DILocation(line: 10, column: 11, scope: !5)
!15 = !DILocation(line: 10, column: 5, scope: !5)
!16 = !DILocation(line: 10, column: 5, scope: !5)
!17 = !DILocation(line: 11, column: 11, scope: !5)
!18 = !DILocation(line: 11, column: 11, scope: !5)
!19 = !DILocation(line: 11, column: 5, scope: !5)
!20 = !DILocation(line: 11, column: 5, scope: !5)
!21 = !DILocation(line: 12, column: 16, scope: !5)
!22 = !DILocation(line: 12, column: 16, scope: !5)
!23 = !DILocation(line: 12, column: 15, scope: !5)
!24 = !DILocation(line: 12, column: 15, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 13, column: 16, scope: !5)
!27 = !DILocation(line: 13, column: 16, scope: !5)
!28 = !DILocation(line: 13, column: 15, scope: !5)
!29 = !DILocation(line: 13, column: 15, scope: !5)
!30 = !DILocation(line: 13, column: 4, scope: !5)
!31 = !DILocation(line: 14, column: 0, scope: !5)
