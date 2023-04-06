@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %z = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %y.1 = alloca double
  %y.2 = alloca i1
  %z.1 = alloca i64
  %z.2 = alloca double
  %_ = alloca i64
  %_.1 = alloca double
  %_.2 = alloca i64
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %47, label %4
4:
  %5 = and i64 72057594037927935, 1
  %6 = or i64 2449958197289549824, %5
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  store ptr addrspace(1) %7, ptr %x
  %8 = zext i1 1 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  store ptr addrspace(1) %10, ptr %y
  %11 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.2), !dbg !9
  store ptr addrspace(1) %11, ptr %z
  %12 = load ptr addrspace(1), ptr %x
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 144115188075855872
  br i1 %16, label %17, label %25
17:
  %18 = load ptr addrspace(1), ptr %x
  %19 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %18), !dbg !10
  store i64 %19, ptr %x.1
  %20 = load ptr addrspace(1), ptr %y
  %21 = addrspacecast ptr addrspace(1) %20 to ptr
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 216172782113783808
  br i1 %24, label %33, label %25
25:
  %26 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %26, ptr %x.2
  %27 = load ptr addrspace(1), ptr %y
  %28 = addrspacecast ptr addrspace(1) %27 to ptr
  %29 = ptrtoint ptr %28 to i64
  %30 = trunc i64 %29 to i1
  store i1 %30, ptr %y.2
  %31 = load ptr addrspace(1), ptr %z
  %32 = call double @_bal_tagged_to_float(ptr addrspace(1) %31), !dbg !13
  store double %32, ptr %z.2
  ret void
33:
  %34 = load ptr addrspace(1), ptr %y
  %35 = call double @_bal_tagged_to_float(ptr addrspace(1) %34), !dbg !11
  store double %35, ptr %y.1
  %36 = load ptr addrspace(1), ptr %z
  %37 = addrspacecast ptr addrspace(1) %36 to ptr
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 2233785415175766016
  %40 = icmp eq i64 %39, 144115188075855872
  br i1 %40, label %41, label %25
41:
  %42 = load ptr addrspace(1), ptr %z
  %43 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %42), !dbg !12
  store i64 %43, ptr %z.1
  %44 = load i64, ptr %x.1
  store i64 %44, ptr %_
  %45 = load double, ptr %y.1
  store double %45, ptr %_.1
  %46 = load i64, ptr %z.1
  store i64 %46, ptr %_.2
  br label %25
47:
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %48), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 16, scope: !5)
!10 = !DILocation(line: 5, column: 9, scope: !5)
!11 = !DILocation(line: 5, column: 21, scope: !5)
!12 = !DILocation(line: 5, column: 35, scope: !5)
!13 = !DILocation(line: 5, column: 7, scope: !5)
