@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 5, ptr %a
  store i64 0, ptr %b
  %9 = load i64, ptr %a
  %10 = load i64, ptr %b
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !12
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !8
  unreachable
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 1282), !dbg !7
  store ptr addrspace(1) %17, ptr %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %36, label %22
22:
  %23 = sdiv i64 %9, %10
  store i64 %23, ptr %1
  %24 = load i64, ptr %1
  store i64 %24, ptr %c
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = load i64, ptr %c
  %30 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %29), !dbg !10
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %2
  %35 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !11
  store ptr addrspace(1) null, ptr %3
  ret void
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !7
  store ptr addrspace(1) %37, ptr %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-intsubtype/div-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 0, scope: !5)
