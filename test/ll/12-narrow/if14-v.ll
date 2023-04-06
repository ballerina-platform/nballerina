@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca double
  %x.3 = alloca double
  %x.4 = alloca ptr addrspace(1)
  %bf1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %47, label %6
6:
  %7 = and i64 72057594037927935, 8
  %8 = or i64 2449958197289549824, %7
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  store ptr addrspace(1) %9, ptr %x
  %10 = load ptr addrspace(1), ptr %x
  %11 = addrspacecast ptr addrspace(1) %10 to ptr
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = lshr i64 %13, 56
  %15 = shl i64 1, %14
  %16 = and i64 %15, 6
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28
18:
  %19 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %19, ptr %x.1
  %20 = and i64 72057594037927935, 40
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  store ptr addrspace(1) %22, ptr %x
  %23 = load ptr addrspace(1), ptr %x
  %24 = addrspacecast ptr addrspace(1) %23 to ptr
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 216172782113783808
  br i1 %27, label %31, label %34
28:
  %29 = load ptr addrspace(1), ptr %x
  %30 = call double @_bal_tagged_to_float(ptr addrspace(1) %29), !dbg !9
  store double %30, ptr %x.2
  ret void
31:
  %32 = load ptr addrspace(1), ptr %x
  %33 = call double @_bal_tagged_to_float(ptr addrspace(1) %32), !dbg !12
  store double %33, ptr %x.3
  ret void
34:
  %35 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %35, ptr %x.4
  %36 = load ptr addrspace(1), ptr %x.4
  store ptr addrspace(1) %36, ptr %bf1
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = load ptr addrspace(1), ptr %bf1
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %1
  %46 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !11
  store ptr addrspace(1) null, ptr %2
  ret void
47:
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %48), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 9, scope: !5)
!10 = !DILocation(line: 15, column: 15, scope: !5)
!11 = !DILocation(line: 15, column: 4, scope: !5)
!12 = !DILocation(line: 16, column: 0, scope: !5)
