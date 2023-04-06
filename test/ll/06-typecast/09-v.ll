@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca double
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %f = alloca ptr addrspace(1)
  %5 = alloca double
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %23, label %12
12:
  %13 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !9
  store ptr addrspace(1) %13, ptr %x
  %14 = load ptr addrspace(1), ptr %x
  %15 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %14), !dbg !10
  store ptr addrspace(1) %15, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  %17 = addrspacecast ptr addrspace(1) %16 to ptr
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 216172782113783808
  br i1 %20, label %25, label %44
21:
  %22 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !20
  unreachable
23:
  %24 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !8
  unreachable
25:
  %26 = call double @_bal_tagged_to_float(ptr addrspace(1) %16), !dbg !11
  store double %26, ptr %2
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load double, ptr %2
  %32 = call ptr addrspace(1) @_bal_float_to_tagged(double %31), !dbg !13
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %3
  %37 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %38 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.5), !dbg !15
  store ptr addrspace(1) %38, ptr %f
  %39 = load ptr addrspace(1), ptr %f
  %40 = addrspacecast ptr addrspace(1) %39 to ptr
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 216172782113783808
  br i1 %43, label %46, label %59
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 1539), !dbg !7
  store ptr addrspace(1) %45, ptr %8
  br label %21
46:
  %47 = call double @_bal_tagged_to_float(ptr addrspace(1) %39), !dbg !16
  store double %47, ptr %5
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load double, ptr %5
  %53 = call ptr addrspace(1) @_bal_float_to_tagged(double %52), !dbg !18
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %6
  %58 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !19
  store ptr addrspace(1) null, ptr %7
  ret void
59:
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 2051), !dbg !7
  store ptr addrspace(1) %60, ptr %8
  br label %21
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 10, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 13, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 9, column: 0, scope: !5)
