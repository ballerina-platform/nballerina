@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca double
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %26, label %15
15:
  %16 = call ptr addrspace(1) @_B_g(i1 1), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  %18 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %17), !dbg !12
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  %20 = addrspacecast ptr addrspace(1) %19 to ptr
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = icmp eq i64 %22, 216172782113783808
  br i1 %23, label %28, label %49
24:
  %25 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !23
  unreachable
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !10
  unreachable
28:
  %29 = call double @_bal_tagged_to_float(ptr addrspace(1) %19), !dbg !13
  store double %29, ptr %3
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = load double, ptr %3
  %35 = call ptr addrspace(1) @_bal_float_to_tagged(double %34), !dbg !15
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %4
  %40 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %40), !dbg !16
  store ptr addrspace(1) null, ptr %5
  %41 = call ptr addrspace(1) @_B_g(i1 0), !dbg !17
  store ptr addrspace(1) %41, ptr %6
  %42 = load ptr addrspace(1), ptr %6
  %43 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %42), !dbg !18
  store ptr addrspace(1) %43, ptr %7
  %44 = load ptr addrspace(1), ptr %7
  %45 = addrspacecast ptr addrspace(1) %44 to ptr
  %46 = ptrtoint ptr %45 to i64
  %47 = and i64 %46, 2233785415175766016
  %48 = icmp eq i64 %47, 216172782113783808
  br i1 %48, label %51, label %64
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !9
  store ptr addrspace(1) %50, ptr %11
  br label %24
51:
  %52 = call double @_bal_tagged_to_float(ptr addrspace(1) %44), !dbg !19
  store double %52, ptr %8
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load double, ptr %8
  %58 = call ptr addrspace(1) @_bal_float_to_tagged(double %57), !dbg !21
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %9
  %63 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !22
  store ptr addrspace(1) null, ptr %10
  ret void
64:
  %65 = call ptr addrspace(1) @_bal_panic_construct(i64 1539), !dbg !9
  store ptr addrspace(1) %65, ptr %11
  br label %24
}
define internal ptr addrspace(1) @_B_g(i1 %0) !dbg !7 {
  %isInt = alloca i1
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %13, label %5
5:
  store i1 %0, ptr %isInt
  %6 = load i1, ptr %isInt
  br i1 %6, label %7, label %11
7:
  %8 = and i64 72057594037927935, 8
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  ret ptr addrspace(1) %10
11:
  %12 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.5), !dbg !26
  ret ptr addrspace(1) %12
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !24
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !25
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 22, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 4, scope: !5)
!17 = !DILocation(line: 6, column: 22, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 15, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 4, scope: !5)
!23 = !DILocation(line: 7, column: 0, scope: !5)
!24 = !DILocation(line: 0, column: 0, scope: !7)
!25 = !DILocation(line: 9, column: 9, scope: !7)
!26 = !DILocation(line: 14, column: 8, scope: !7)
