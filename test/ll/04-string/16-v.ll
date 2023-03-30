@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_Bb0m4lang6stringlength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %str = alloca ptr addrspace(1)
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %37, label %10
10:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr %str
  store i64 0, ptr %i
  br label %11
11:
  %12 = load i64, ptr %i
  %13 = icmp slt i64 %12, 9
  store i1 %13, ptr %1
  %14 = load i1, ptr %1
  br i1 %14, label %29, label %15
15:
  %16 = load ptr addrspace(1), ptr %str
  %17 = call i64 @_Bb0m4lang6stringlength(ptr addrspace(1) %16), !dbg !11
  store i64 %17, ptr %4
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = load i64, ptr %4
  %23 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %22), !dbg !13
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %5
  %28 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !14
  store ptr addrspace(1) null, ptr %6
  ret void
29:
  %30 = load ptr addrspace(1), ptr %str
  %31 = call ptr addrspace(1) @_B_double(ptr addrspace(1) %30), !dbg !15
  store ptr addrspace(1) %31, ptr %2
  %32 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %32, ptr %str
  br label %33
33:
  %34 = load i64, ptr %i
  %35 = add nsw i64 %34, 1
  store i64 %35, ptr %3
  %36 = load i64, ptr %3
  store i64 %36, ptr %i
  br label %11
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_double(ptr addrspace(1) %0) !dbg !7 {
  %s = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %11, label %6
6:
  store ptr addrspace(1) %0, ptr %s
  %7 = load ptr addrspace(1), ptr %s
  %8 = load ptr addrspace(1), ptr %s
  %9 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %7, ptr addrspace(1) %8), !dbg !18
  store ptr addrspace(1) %9, ptr %2
  %10 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %10
11:
  %12 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !17
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"double", linkageName:"_B_double", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 8, column: 19, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 14, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 11, column: 9, scope: !7)
!18 = !DILocation(line: 12, column: 13, scope: !7)
