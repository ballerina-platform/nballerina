@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %15, label %9
9:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570860858929), ptr %x
  %10 = load ptr addrspace(1), ptr %x
  %11 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %10), !dbg !9
  %12 = extractvalue {ptr addrspace(1), i1} %11, 1
  br i1 %12, label %24, label %17
13:
  %14 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !14
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !8
  unreachable
17:
  %18 = extractvalue {ptr addrspace(1), i1} %11, 0
  store ptr addrspace(1) %18, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  %20 = addrspacecast ptr addrspace(1) %19 to ptr
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = icmp eq i64 %22, 144115188075855872
  br i1 %23, label %26, label %39
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 1025), !dbg !7
  store ptr addrspace(1) %25, ptr %5
  br label %13
26:
  %27 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %19), !dbg !10
  store i64 %27, ptr %2
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = load i64, ptr %2
  %33 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %32), !dbg !12
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %31, i64 0, i64 0
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %3
  %38 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !13
  store ptr addrspace(1) null, ptr %4
  ret void
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 1027), !dbg !7
  store ptr addrspace(1) %40, ptr %5
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/toint13-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 5, column: 0, scope: !5)
