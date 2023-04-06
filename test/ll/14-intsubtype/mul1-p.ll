@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %d = alloca i64
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %10
10:
  store i64 65535, ptr %a
  store i64 65535, ptr %b
  store i64 65535, ptr %c
  store i64 65535, ptr %d
  %11 = load i64, ptr %a
  %12 = load i64, ptr %b
  %13 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %11, i64 %12)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %25, label %19
15:
  %16 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !12
  unreachable
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !8
  unreachable
19:
  %20 = extractvalue {i64, i1} %13, 0
  store i64 %20, ptr %1
  %21 = load i64, ptr %1
  %22 = load i64, ptr %c
  %23 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %21, i64 %22)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %33, label %27
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %26, ptr %6
  br label %15
27:
  %28 = extractvalue {i64, i1} %23, 0
  store i64 %28, ptr %2
  %29 = load i64, ptr %2
  %30 = load i64, ptr %d
  %31 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %29, i64 %30)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %49, label %35
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %34, ptr %6
  br label %15
35:
  %36 = extractvalue {i64, i1} %31, 0
  store i64 %36, ptr %3
  %37 = load i64, ptr %3
  store i64 %37, ptr %x
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = load i64, ptr %x
  %43 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %42), !dbg !10
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %4
  %48 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !11
  store ptr addrspace(1) null, ptr %5
  ret void
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %50, ptr %6
  br label %15
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-intsubtype/mul1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 15, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 0, scope: !5)
