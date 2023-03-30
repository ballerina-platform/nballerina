@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca i1
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %x.3 = alloca ptr addrspace(1)
  %bs = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %59, label %10
10:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223535), ptr %x
  %11 = load ptr addrspace(1), ptr %x
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = lshr i64 %14, 56
  %16 = shl i64 1, %15
  %17 = and i64 %16, 6
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26
19:
  %20 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %20, ptr %x.1
  %21 = load ptr addrspace(1), ptr %x.1
  %22 = addrspacecast ptr addrspace(1) %21 to ptr
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 144115188075855872
  br i1 %25, label %33, label %36
26:
  %27 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %27, ptr %x.2
  %28 = load ptr addrspace(1), ptr %x.2
  %29 = addrspacecast ptr addrspace(1) %28 to ptr
  %30 = ptrtoint ptr %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = icmp eq i64 %31, 216172782113783808
  br i1 %32, label %41, label %44
33:
  %34 = load ptr addrspace(1), ptr %x.1
  %35 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %34), !dbg !12
  store i64 %35, ptr %1
  ret void
36:
  %37 = load ptr addrspace(1), ptr %x.1
  %38 = addrspacecast ptr addrspace(1) %37 to ptr
  %39 = ptrtoint ptr %38 to i64
  %40 = trunc i64 %39 to i1
  store i1 %40, ptr %2
  br label %46
41:
  %42 = load ptr addrspace(1), ptr %x.2
  %43 = call double @_bal_tagged_to_float(ptr addrspace(1) %42), !dbg !9
  store double %43, ptr %3
  ret void
44:
  %45 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %45, ptr %4
  br label %46
46:
  %47 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %47, ptr %x.3
  %48 = load ptr addrspace(1), ptr %x.3
  store ptr addrspace(1) %48, ptr %bs
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load ptr addrspace(1), ptr %bs
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %5
  %58 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !11
  store ptr addrspace(1) null, ptr %6
  ret void
59:
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %60), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 14, column: 4, scope: !5)
!10 = !DILocation(line: 16, column: 15, scope: !5)
!11 = !DILocation(line: 16, column: 4, scope: !5)
!12 = !DILocation(line: 17, column: 0, scope: !5)
