@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %20, label %7
7:
  %8 = call i64 @_B_foo(i64 10), !dbg !11
  store i64 %8, ptr %1
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load i64, ptr %1
  %14 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %13), !dbg !13
  %15 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %14, ptr addrspace(1) %15
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %16
  %17 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 864691128455135236
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %19), !dbg !14
  store ptr addrspace(1) null, ptr %3
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !10
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %48, label %14
14:
  store i64 %0, ptr %x
  %15 = load i64, ptr %x
  store i64 %15, ptr %i
  br label %16
16:
  %17 = load i64, ptr %i
  %18 = icmp sge i64 %17, 0
  store i1 %18, ptr %2
  %19 = load i1, ptr %2
  br i1 %19, label %20, label %24
20:
  %21 = load i64, ptr %i
  %22 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %21, i64 1)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %57, label %50
24:
  %25 = load i64, ptr %i
  %26 = icmp slt i64 %25, 0
  store i1 %26, ptr %8
  %27 = load i1, ptr %8
  br i1 %27, label %41, label %42
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load i64, ptr %i
  %34 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %33), !dbg !18
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %6
  %39 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !19
  store ptr addrspace(1) null, ptr %7
  br label %24
40:
  br label %16
41:
  ret i64 -1
42:
  %43 = load i64, ptr %i
  %44 = call i64 @_B_foo(i64 %43), !dbg !20
  store i64 %44, ptr %9
  %45 = load i64, ptr %9
  ret i64 %45
46:
  %47 = load ptr addrspace(1), ptr %10
  call void @_bal_panic(ptr addrspace(1) %47), !dbg !21
  unreachable
48:
  %49 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %49), !dbg !16
  unreachable
50:
  %51 = extractvalue {i64, i1} %22, 0
  store i64 %51, ptr %3
  %52 = load i64, ptr %3
  store i64 %52, ptr %i
  %53 = load i64, ptr %x
  %54 = load i64, ptr %i
  %55 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %53, i64 %54)
  %56 = extractvalue {i64, i1} %55, 1
  br i1 %56, label %64, label %59
57:
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !15
  store ptr addrspace(1) %58, ptr %10
  br label %46
59:
  %60 = extractvalue {i64, i1} %55, 0
  store i64 %60, ptr %4
  %61 = load i64, ptr %4
  %62 = icmp eq i64 %61, 2
  store i1 %62, ptr %5
  %63 = load i1, ptr %5
  br i1 %63, label %28, label %40
64:
  %65 = call ptr addrspace(1) @_bal_panic_construct(i64 4609), !dbg !15
  store ptr addrspace(1) %65, ptr %10
  br label %46
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/break5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 11, column: 15, scope: !5)
!12 = !DILocation(line: 11, column: 15, scope: !5)
!13 = !DILocation(line: 11, column: 15, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 14, column: 9, scope: !7)
!17 = !DILocation(line: 19, column: 23, scope: !7)
!18 = !DILocation(line: 19, column: 23, scope: !7)
!19 = !DILocation(line: 19, column: 12, scope: !7)
!20 = !DILocation(line: 26, column: 11, scope: !7)
!21 = !DILocation(line: 27, column: 0, scope: !7)
