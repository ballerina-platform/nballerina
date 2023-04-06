@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B04rootfoo(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431787366)), !dbg !11
  store ptr addrspace(1) null, ptr %1
  ret void
6:
  %7 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %7), !dbg !10
  unreachable
}
define void @_B04rootfoo(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %33, label %9
9:
  store ptr addrspace(1) %0, ptr %x
  %10 = load ptr addrspace(1), ptr %x
  %11 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %10), !dbg !14
  br i1 %11, label %clause.0, label %gard.0
clause.0:
  %12 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %12, ptr %x.1
  %13 = load ptr addrspace(1), ptr %x.1
  %14 = addrspacecast ptr addrspace(1) %13 to ptr
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 360287970189639680
  br i1 %17, label %19, label %30
gard.0:
  %18 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %18, ptr %x.2
  br label %32
19:
  %20 = load ptr addrspace(1), ptr %x.1
  store ptr addrspace(1) %20, ptr %2
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188569707245414), ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %4
  %29 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %29), !dbg !16
  store ptr addrspace(1) null, ptr %5
  br label %30
30:
  %31 = load ptr addrspace(1), ptr %x.1
  store ptr addrspace(1) %31, ptr %3
  br label %32
32:
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !13
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B04rootfoo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 8, column: 16, scope: !7)
!14 = !DILocation(line: 10, column: 22, scope: !7)
!15 = !DILocation(line: 12, column: 27, scope: !7)
!16 = !DILocation(line: 12, column: 16, scope: !7)
