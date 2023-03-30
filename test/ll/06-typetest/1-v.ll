@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 12, i16 12, [12 x i8] c"boolean|int?"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %19, label %10
10:
  %11 = and i64 72057594037927935, 1
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  call void @_B_bin(ptr addrspace(1) %13), !dbg !11
  store ptr addrspace(1) null, ptr %1
  %14 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !12
  call void @_B_bin(ptr addrspace(1) %14), !dbg !13
  store ptr addrspace(1) null, ptr %2
  %15 = zext i1 1 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_B_bin(ptr addrspace(1) %17), !dbg !14
  store ptr addrspace(1) null, ptr %3
  call void @_B_bin(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !15
  store ptr addrspace(1) null, ptr %4
  call void @_B_bin(ptr addrspace(1) null), !dbg !16
  store ptr addrspace(1) null, ptr %5
  %18 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !17
  call void @_B_bin(ptr addrspace(1) %18), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !10
  unreachable
}
define internal void @_B_bin(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %x.3 = alloca ptr addrspace(1)
  %x.4 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %62, label %11
11:
  store ptr addrspace(1) %0, ptr %x
  %12 = load ptr addrspace(1), ptr %x
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %28
17:
  %18 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %18, ptr %x.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431589230), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !24
  store ptr addrspace(1) null, ptr %3
  br label %40
28:
  %29 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %29, ptr %x.2
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = load ptr addrspace(1), ptr %x.2
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %4
  %39 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !22
  store ptr addrspace(1) null, ptr %5
  br label %40
40:
  %41 = load ptr addrspace(1), ptr %x
  %42 = addrspacecast ptr addrspace(1) %41 to ptr
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 2233785415175766016
  %45 = lshr i64 %44, 56
  %46 = shl i64 1, %45
  %47 = and i64 %46, 7
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60
49:
  %50 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %50, ptr %x.3
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %6
  %59 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !26
  store ptr addrspace(1) null, ptr %7
  br label %60
60:
  %61 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %61, ptr %x.4
  ret void
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %63), !dbg !20
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typetest/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bin", linkageName:"_B_bin", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 13, column: 4, scope: !5)
!15 = !DILocation(line: 15, column: 4, scope: !5)
!16 = !DILocation(line: 18, column: 4, scope: !5)
!17 = !DILocation(line: 20, column: 4, scope: !5)
!18 = !DILocation(line: 20, column: 4, scope: !5)
!19 = !DILocation(line: 0, column: 0, scope: !7)
!20 = !DILocation(line: 23, column: 9, scope: !7)
!21 = !DILocation(line: 28, column: 19, scope: !7)
!22 = !DILocation(line: 28, column: 8, scope: !7)
!23 = !DILocation(line: 25, column: 19, scope: !7)
!24 = !DILocation(line: 25, column: 8, scope: !7)
!25 = !DILocation(line: 31, column: 19, scope: !7)
!26 = !DILocation(line: 31, column: 8, scope: !7)
