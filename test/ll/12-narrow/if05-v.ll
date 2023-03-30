@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca double
  %1 = alloca i64
  %2 = alloca i1
  %b = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %x.3 = alloca ptr addrspace(1)
  %bf = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %62, label %10
10:
  %11 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !9
  store ptr addrspace(1) %11, ptr %x
  %12 = load ptr addrspace(1), ptr %x
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = lshr i64 %15, 56
  %17 = shl i64 1, %16
  %18 = and i64 %17, 6
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27
20:
  %21 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %21, ptr %x.1
  %22 = load ptr addrspace(1), ptr %x.1
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 144115188075855872
  br i1 %26, label %40, label %43
27:
  %28 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %28, ptr %x.3
  %29 = load ptr addrspace(1), ptr %x.3
  store ptr addrspace(1) %29, ptr %bf
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = load ptr addrspace(1), ptr %bf
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %5
  %39 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !13
  store ptr addrspace(1) null, ptr %6
  ret void
40:
  %41 = load ptr addrspace(1), ptr %x.1
  %42 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %41), !dbg !14
  store i64 %42, ptr %1
  ret void
43:
  %44 = load ptr addrspace(1), ptr %x.1
  %45 = addrspacecast ptr addrspace(1) %44 to ptr
  %46 = ptrtoint ptr %45 to i64
  %47 = trunc i64 %46 to i1
  store i1 %47, ptr %2
  %48 = load i1, ptr %2
  store i1 %48, ptr %b
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load i1, ptr %b
  %54 = zext i1 %53 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, ptr addrspace(1) null, i64 %55
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %3
  %61 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !11
  store ptr addrspace(1) null, ptr %4
  br label %27
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %63), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 24, scope: !5)
!10 = !DILocation(line: 10, column: 19, scope: !5)
!11 = !DILocation(line: 10, column: 8, scope: !5)
!12 = !DILocation(line: 14, column: 15, scope: !5)
!13 = !DILocation(line: 14, column: 4, scope: !5)
!14 = !DILocation(line: 15, column: 0, scope: !5)
