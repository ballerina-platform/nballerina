@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i1
  %x.2 = alloca i64
  %b = alloca i1
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %i = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %51, label %8
8:
  %9 = and i64 72057594037927935, 2
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  store ptr addrspace(1) %11, ptr %x
  %12 = load ptr addrspace(1), ptr %x
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 72057594037927936
  br i1 %16, label %17, label %36
17:
  %18 = load ptr addrspace(1), ptr %x
  %19 = addrspacecast ptr addrspace(1) %18 to ptr
  %20 = ptrtoint ptr %19 to i64
  %21 = trunc i64 %20 to i1
  store i1 %21, ptr %x.1
  %22 = load i1, ptr %x.1
  store i1 %22, ptr %b
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load i1, ptr %b
  %28 = zext i1 %27 to i64
  %29 = or i64 %28, 72057594037927936
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !14
  store ptr addrspace(1) null, ptr %2
  ret void
36:
  %37 = load ptr addrspace(1), ptr %x
  %38 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %37), !dbg !9
  store i64 %38, ptr %x.2
  %39 = load i64, ptr %x.2
  store i64 %39, ptr %i
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load i64, ptr %i
  %45 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %44), !dbg !11
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %3
  %50 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !12
  store ptr addrspace(1) null, ptr %4
  ret void
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 9, scope: !5)
!10 = !DILocation(line: 11, column: 15, scope: !5)
!11 = !DILocation(line: 11, column: 15, scope: !5)
!12 = !DILocation(line: 11, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 19, scope: !5)
!14 = !DILocation(line: 7, column: 8, scope: !5)
