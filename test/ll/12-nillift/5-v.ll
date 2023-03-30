@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca ptr addrspace(1)
  %b.1 = alloca ptr addrspace(1)
  %b.2 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %c.1 = alloca ptr addrspace(1)
  %c.2 = alloca ptr addrspace(1)
  %d.1 = alloca ptr addrspace(1)
  %d.2 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %78, label %12
12:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr %a
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr %b
  %13 = load ptr addrspace(1), ptr %a
  %14 = addrspacecast ptr addrspace(1) %13 to ptr
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18
18:
  %19 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %19, ptr %a.2
  %20 = load ptr addrspace(1), ptr %b
  %21 = addrspacecast ptr addrspace(1) %20 to ptr
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28
25:
  %26 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %26, ptr %a.1
  %27 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %27, ptr %b.1
  store ptr addrspace(1) null, ptr %2
  br label %34
28:
  %29 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %29, ptr %b.2
  %30 = load ptr addrspace(1), ptr %a.2
  %31 = load ptr addrspace(1), ptr %b.2
  %32 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %30, ptr addrspace(1) %31), !dbg !9
  store ptr addrspace(1) %32, ptr %1
  %33 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %33, ptr %2
  br label %34
34:
  %35 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %35, ptr %c
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load ptr addrspace(1), ptr %c
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %3
  %45 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !11
  store ptr addrspace(1) null, ptr %4
  store ptr addrspace(1) null, ptr %d
  %46 = load ptr addrspace(1), ptr %c
  %47 = addrspacecast ptr addrspace(1) %46 to ptr
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %58, label %51
51:
  %52 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %52, ptr %c.2
  %53 = load ptr addrspace(1), ptr %d
  %54 = addrspacecast ptr addrspace(1) %53 to ptr
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 2233785415175766016
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61
58:
  %59 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %59, ptr %c.1
  %60 = load ptr addrspace(1), ptr %d
  store ptr addrspace(1) %60, ptr %d.1
  store ptr addrspace(1) null, ptr %6
  br label %67
61:
  %62 = load ptr addrspace(1), ptr %d
  store ptr addrspace(1) %62, ptr %d.2
  %63 = load ptr addrspace(1), ptr %c.2
  %64 = load ptr addrspace(1), ptr %d.2
  %65 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %63, ptr addrspace(1) %64), !dbg !12
  store ptr addrspace(1) %65, ptr %5
  %66 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %66, ptr %6
  br label %67
67:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = load ptr addrspace(1), ptr %6
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %7
  %77 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !14
  store ptr addrspace(1) null, ptr %8
  ret void
78:
  %79 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %79), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 18, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 17, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
