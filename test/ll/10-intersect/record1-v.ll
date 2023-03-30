@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %rr = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %y = alloca double
  %5 = alloca double
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %52, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %13 = and i64 72057594037927935, 3
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %15), !dbg !10
  %16 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.5), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %16), !dbg !12
  store ptr addrspace(1) %12, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %17, ptr %r
  %18 = load ptr addrspace(1), ptr %r
  store ptr addrspace(1) %18, ptr %rr
  %19 = load ptr addrspace(1), ptr %rr
  store ptr addrspace(1) %19, ptr %r
  %20 = load ptr addrspace(1), ptr %r
  %21 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %20), !dbg !13
  store ptr addrspace(1) %21, ptr %_
  %22 = load ptr addrspace(1), ptr %rr
  %23 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %22, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !14
  %24 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %23), !dbg !15
  store i64 %24, ptr %2
  %25 = load i64, ptr %2
  store i64 %25, ptr %x
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %x
  %31 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %30), !dbg !17
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %3
  %36 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !18
  store ptr addrspace(1) null, ptr %4
  %37 = load ptr addrspace(1), ptr %rr
  %38 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %37, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !19
  %39 = call double @_bal_tagged_to_float(ptr addrspace(1) %38), !dbg !20
  store double %39, ptr %5
  %40 = load double, ptr %5
  store double %40, ptr %y
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load double, ptr %y
  %46 = call ptr addrspace(1) @_bal_float_to_tagged(double %45), !dbg !22
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %6
  %51 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !23
  store ptr addrspace(1) null, ptr %7
  ret void
52:
  %53 = call ptr addrspace(1) @_bal_panic_construct(i64 4612), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %53), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-intersect/record1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 18, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 18, column: 16, scope: !5)
!9 = !DILocation(line: 19, column: 10, scope: !5)
!10 = !DILocation(line: 19, column: 10, scope: !5)
!11 = !DILocation(line: 19, column: 10, scope: !5)
!12 = !DILocation(line: 19, column: 10, scope: !5)
!13 = !DILocation(line: 22, column: 6, scope: !5)
!14 = !DILocation(line: 23, column: 14, scope: !5)
!15 = !DILocation(line: 23, column: 14, scope: !5)
!16 = !DILocation(line: 24, column: 15, scope: !5)
!17 = !DILocation(line: 24, column: 15, scope: !5)
!18 = !DILocation(line: 24, column: 4, scope: !5)
!19 = !DILocation(line: 25, column: 16, scope: !5)
!20 = !DILocation(line: 25, column: 16, scope: !5)
!21 = !DILocation(line: 26, column: 15, scope: !5)
!22 = !DILocation(line: 26, column: 15, scope: !5)
!23 = !DILocation(line: 26, column: 4, scope: !5)
