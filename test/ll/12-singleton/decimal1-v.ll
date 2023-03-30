@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 128, i64 2452069259614879744], align 8
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal ptr addrspace(1) @_B_foo(ptr addrspace(1) %0) !dbg !5 {
  %d = alloca ptr addrspace(1)
  %d.1 = alloca ptr addrspace(1)
  %d.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %23, label %7
7:
  store ptr addrspace(1) %0, ptr %d
  %8 = load ptr addrspace(1), ptr %d
  %9 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %8), !dbg !11
  br i1 %9, label %10, label %18
10:
  %11 = load ptr addrspace(1), ptr %d
  store ptr addrspace(1) %11, ptr %d.1
  %12 = load ptr addrspace(1), ptr %d.1
  %13 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 288230376151711744
  %15 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %12, ptr addrspace(1) %14), !dbg !12
  %16 = extractvalue {ptr addrspace(1), i64} %15, 1
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %25
18:
  %19 = load ptr addrspace(1), ptr %d
  store ptr addrspace(1) %19, ptr %d.2
  %20 = load ptr addrspace(1), ptr %d.2
  ret ptr addrspace(1) %20
21:
  %22 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !13
  unreachable
23:
  %24 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !10
  unreachable
25:
  %26 = extractvalue {ptr addrspace(1), i64} %15, 0
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %27
28:
  %29 = or i64 %16, 1536
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 %29), !dbg !9
  store ptr addrspace(1) %30, ptr %3
  br label %21
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %21, label %7
7:
  %8 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %9 = getelementptr i8, ptr addrspace(1) %8, i64 288230376151711744
  %10 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %9), !dbg !16
  store ptr addrspace(1) %10, ptr %1
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = load ptr addrspace(1), ptr %1
  %16 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %14, i64 0, i64 0
  store ptr addrspace(1) %15, ptr addrspace(1) %16
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 1, ptr addrspace(1) %17
  %18 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %2
  %20 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %20), !dbg !18
  store ptr addrspace(1) null, ptr %3
  ret void
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !15
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-singleton/decimal1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 9, scope: !5)
!11 = !DILocation(line: 5, column: 9, scope: !5)
!12 = !DILocation(line: 6, column: 17, scope: !5)
!13 = !DILocation(line: 9, column: 0, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 11, column: 16, scope: !7)
!16 = !DILocation(line: 12, column: 15, scope: !7)
!17 = !DILocation(line: 12, column: 15, scope: !7)
!18 = !DILocation(line: 12, column: 4, scope: !7)
