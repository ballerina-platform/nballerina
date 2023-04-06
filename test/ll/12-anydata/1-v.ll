@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %val = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %61, label %12
12:
  store ptr addrspace(1) null, ptr %val
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load ptr addrspace(1), ptr %val
  %18 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %17), !dbg !10
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !11
  store ptr addrspace(1) null, ptr %2
  %24 = and i64 72057594037927935, 5
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  store ptr addrspace(1) %26, ptr %val
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load ptr addrspace(1), ptr %val
  %32 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %31), !dbg !13
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
  %38 = call ptr addrspace(1) @_bal_float_to_tagged(double 7.5), !dbg !15
  store ptr addrspace(1) %38, ptr %val
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load ptr addrspace(1), ptr %val
  %44 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %43), !dbg !17
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %5
  %49 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !18
  store ptr addrspace(1) null, ptr %6
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr %val
  %50 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 3
  %52 = load ptr addrspace(1), ptr addrspace(1) %51, align 8
  %53 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %54 = load ptr addrspace(1), ptr %val
  %55 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %54), !dbg !20
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %53, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %7
  %60 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !21
  store ptr addrspace(1) null, ptr %8
  ret void
61:
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %62), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-anydata/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 8, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 15, scope: !5)
!21 = !DILocation(line: 10, column: 4, scope: !5)
