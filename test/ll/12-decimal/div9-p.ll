@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca ptr addrspace(1)
  %d2 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %20, label %8
8:
  %9 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %10 = getelementptr i8, ptr addrspace(1) %9, i64 288230376151711744
  store ptr addrspace(1) %10, ptr %d1
  %11 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 288230376151711744
  store ptr addrspace(1) %12, ptr %d2
  %13 = load ptr addrspace(1), ptr %d1
  %14 = load ptr addrspace(1), ptr %d2
  %15 = call {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1) %13, ptr addrspace(1) %14), !dbg !9
  %16 = extractvalue {ptr addrspace(1), i64} %15, 1
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %34, label %22
18:
  %19 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !12
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !8
  unreachable
22:
  %23 = extractvalue {ptr addrspace(1), i64} %15, 0
  store ptr addrspace(1) %23, ptr %1
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load ptr addrspace(1), ptr %1
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %2
  %33 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !11
  store ptr addrspace(1) null, ptr %3
  ret void
34:
  %35 = or i64 %16, 1536
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 %35), !dbg !7
  store ptr addrspace(1) %36, ptr %4
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/div9-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 18, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 0, scope: !5)
