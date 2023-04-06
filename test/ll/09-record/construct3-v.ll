@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %y = alloca double
  %5 = alloca double
  %6 = alloca double
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %51, label %12
12:
  %13 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %14 = and i64 72057594037927935, 17
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  call void @_bal_mapping_init_member(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %16), !dbg !10
  %17 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %17), !dbg !12
  store ptr addrspace(1) %13, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %r
  %19 = load ptr addrspace(1), ptr %r
  %20 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %19, i64 0), !dbg !13
  %21 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %20), !dbg !14
  store i64 %21, ptr %2
  %22 = load i64, ptr %2
  store i64 %22, ptr %x
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load i64, ptr %x
  %28 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %27), !dbg !16
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !17
  store ptr addrspace(1) null, ptr %4
  %34 = load ptr addrspace(1), ptr %r
  %35 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %34, i64 1), !dbg !18
  %36 = call double @_bal_tagged_to_float(ptr addrspace(1) %35), !dbg !19
  store double %36, ptr %5
  %37 = load double, ptr %5
  store double %37, ptr %y
  %38 = load double, ptr %y
  %39 = fadd double %38, 0.5
  store double %39, ptr %6
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load double, ptr %6
  %45 = call ptr addrspace(1) @_bal_float_to_tagged(double %44), !dbg !21
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %7
  %50 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !22
  store ptr addrspace(1) null, ptr %8
  ret void
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/construct3-v.bal", directory:"")
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
!13 = !DILocation(line: 10, column: 13, scope: !5)
!14 = !DILocation(line: 10, column: 13, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 15, scope: !5)
!20 = !DILocation(line: 13, column: 15, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 4, scope: !5)
