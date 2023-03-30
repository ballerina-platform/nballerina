@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_foo(i64 1, i64 1), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_foo(i64 2, i64 1), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_foo(i64 5, i64 4), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_foo(i64 12, i64 10), !dbg !14
  store ptr addrspace(1) null, ptr %4
  ret void
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !10
  unreachable
}
define internal void @_B_foo(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %49, label %15
15:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %16 = load i64, ptr %x
  %17 = load i64, ptr %y
  %18 = icmp sgt i64 %16, %17
  store i1 %18, ptr %3
  %19 = load i1, ptr %3
  br i1 %19, label %20, label %24
20:
  %21 = load i64, ptr %x
  %22 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %21, i64 1)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %61, label %57
24:
  %25 = load i64, ptr %x
  %26 = load i64, ptr %y
  %27 = icmp slt i64 %25, %26
  store i1 %27, ptr %6
  %28 = load i1, ptr %6
  br i1 %28, label %29, label %33
29:
  %30 = load i64, ptr %y
  %31 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %30, i64 1)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %55, label %51
33:
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load i64, ptr %x
  %39 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %38), !dbg !18
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %9
  %44 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !19
  store ptr addrspace(1) null, ptr %10
  br label %45
45:
  br label %46
46:
  ret void
47:
  %48 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %48), !dbg !22
  unreachable
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %50), !dbg !16
  unreachable
51:
  %52 = extractvalue {i64, i1} %31, 0
  store i64 %52, ptr %7
  %53 = load i64, ptr %x
  %54 = load i64, ptr %7
  call void @_B_foo(i64 %53, i64 %54), !dbg !20
  store ptr addrspace(1) null, ptr %8
  br label %45
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !15
  store ptr addrspace(1) %56, ptr %11
  br label %47
57:
  %58 = extractvalue {i64, i1} %22, 0
  store i64 %58, ptr %4
  %59 = load i64, ptr %4
  %60 = load i64, ptr %y
  call void @_B_foo(i64 %59, i64 %60), !dbg !21
  store ptr addrspace(1) null, ptr %5
  br label %46
61:
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !15
  store ptr addrspace(1) %62, ptr %11
  br label %47
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 11, column: 9, scope: !7)
!17 = !DILocation(line: 17, column: 19, scope: !7)
!18 = !DILocation(line: 17, column: 19, scope: !7)
!19 = !DILocation(line: 17, column: 8, scope: !7)
!20 = !DILocation(line: 15, column: 8, scope: !7)
!21 = !DILocation(line: 13, column: 8, scope: !7)
!22 = !DILocation(line: 19, column: 0, scope: !7)
