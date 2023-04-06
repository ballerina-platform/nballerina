@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca double
  %x.3 = alloca ptr addrspace(1)
  %x.4 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %1 = alloca i1
  %2 = alloca i64
  %_.1 = alloca i64
  %x.5 = alloca ptr addrspace(1)
  %_.2 = alloca ptr addrspace(1)
  %x.6 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %62, label %8
8:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431789428), ptr %x
  %9 = load ptr addrspace(1), ptr %x
  %10 = addrspacecast ptr addrspace(1) %9 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = lshr i64 %12, 56
  %14 = shl i64 1, %13
  %15 = and i64 %14, 38
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30
17:
  %18 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %18, ptr %x.1
  %19 = and i64 72057594037927935, 2
  %20 = or i64 2449958197289549824, %19
  %21 = getelementptr i8, ptr addrspace(1) null, i64 %20
  store ptr addrspace(1) %21, ptr %x
  %22 = load ptr addrspace(1), ptr %x
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = lshr i64 %25, 56
  %27 = shl i64 1, %26
  %28 = and i64 %27, 6
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %50
30:
  %31 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %31, ptr %x.6
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %x.6
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %3
  %41 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !11
  store ptr addrspace(1) null, ptr %4
  ret void
42:
  %43 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %43, ptr %x.3
  %44 = load ptr addrspace(1), ptr %x.3
  store ptr addrspace(1) %44, ptr %_
  %45 = load ptr addrspace(1), ptr %x.3
  %46 = addrspacecast ptr addrspace(1) %45 to ptr
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %47, 2233785415175766016
  %49 = icmp eq i64 %48, 72057594037927936
  br i1 %49, label %53, label %58
50:
  %51 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %51, ptr %x.5
  %52 = load ptr addrspace(1), ptr %x.5
  store ptr addrspace(1) %52, ptr %_.2
  br label %30
53:
  %54 = load ptr addrspace(1), ptr %x.3
  %55 = addrspacecast ptr addrspace(1) %54 to ptr
  %56 = ptrtoint ptr %55 to i64
  %57 = trunc i64 %56 to i1
  store i1 %57, ptr %1
  ret void
58:
  %59 = load ptr addrspace(1), ptr %x.3
  %60 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %59), !dbg !9
  store i64 %60, ptr %2
  %61 = load i64, ptr %2
  store i64 %61, ptr %_.1
  br label %50
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %63), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if21-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 17, scope: !5)
!10 = !DILocation(line: 15, column: 15, scope: !5)
!11 = !DILocation(line: 15, column: 4, scope: !5)
