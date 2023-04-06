@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca double
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %55, label %13
13:
  %14 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !11
  %15 = call double @_B_foo(ptr addrspace(1) %14), !dbg !12
  store double %15, ptr %1
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = load double, ptr %1
  %21 = call ptr addrspace(1) @_bal_float_to_tagged(double %20), !dbg !14
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %21, ptr addrspace(1) %22
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 1, ptr addrspace(1) %23
  %24 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %26), !dbg !15
  store ptr addrspace(1) null, ptr %3
  %27 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.5), !dbg !16
  %28 = call double @_B_foo(ptr addrspace(1) %27), !dbg !17
  store double %28, ptr %4
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load double, ptr %4
  %34 = call ptr addrspace(1) @_bal_float_to_tagged(double %33), !dbg !19
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %5
  %39 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %40 = and i64 72057594037927935, 17
  %41 = or i64 2449958197289549824, %40
  %42 = getelementptr i8, ptr addrspace(1) null, i64 %41
  %43 = call double @_B_foo(ptr addrspace(1) %42), !dbg !21
  store double %43, ptr %7
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load double, ptr %7
  %49 = call ptr addrspace(1) @_bal_float_to_tagged(double %48), !dbg !23
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %8
  %54 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !24
  store ptr addrspace(1) null, ptr %9
  ret void
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %56), !dbg !10
  unreachable
}
define internal double @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %v.1 = alloca double
  %v.2 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %17, label %5
5:
  store ptr addrspace(1) %0, ptr %v
  %6 = load ptr addrspace(1), ptr %v
  %7 = addrspacecast ptr addrspace(1) %6 to ptr
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 2233785415175766016
  %10 = icmp eq i64 %9, 216172782113783808
  br i1 %10, label %11, label %15
11:
  %12 = load ptr addrspace(1), ptr %v
  %13 = call double @_bal_tagged_to_float(ptr addrspace(1) %12), !dbg !27
  store double %13, ptr %v.1
  %14 = load double, ptr %v.1
  ret double %14
15:
  %16 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %16, ptr %v.2
  ret double 2.5
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !26
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-narrow/05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 4, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 15, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
!26 = !DILocation(line: 10, column: 9, scope: !7)
!27 = !DILocation(line: 15, column: 8, scope: !7)
