@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal i64 @_B_lower() !dbg !5 {
  %u = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  store i64 2, ptr %u
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = load i64, ptr %u
  %12 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %11), !dbg !14
  %13 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) %12, ptr addrspace(1) %13
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %14
  %15 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %17), !dbg !15
  store ptr addrspace(1) null, ptr %2
  %18 = load i64, ptr %u
  ret i64 %18
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !12
  unreachable
}
define internal i64 @_B_upper() !dbg !7 {
  %u = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  store i64 5, ptr %u
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = load i64, ptr %u
  %12 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %11), !dbg !19
  %13 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) %12, ptr addrspace(1) %13
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %14
  %15 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %17), !dbg !20
  store ptr addrspace(1) null, ptr %2
  %18 = load i64, ptr %u
  ret i64 %18
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !17
  unreachable
}
define void @_B04rootmain() !dbg !9 {
  %1 = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %36, label %10
10:
  %11 = call i64 @_B_lower(), !dbg !23
  store i64 %11, ptr %1
  %12 = call i64 @_B_upper(), !dbg !24
  store i64 %12, ptr %2
  %13 = load i64, ptr %1
  store i64 %13, ptr %i
  br label %14
14:
  %15 = load i64, ptr %i
  %16 = load i64, ptr %2
  %17 = icmp slt i64 %15, %16
  store i1 %17, ptr %3
  %18 = load i1, ptr %3
  br i1 %18, label %20, label %19
19:
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load i64, ptr %i
  %26 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %25), !dbg !26
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %4
  %31 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !27
  store ptr addrspace(1) null, ptr %5
  br label %32
32:
  %33 = load i64, ptr %i
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %6
  %35 = load i64, ptr %6
  store i64 %35, ptr %i
  br label %14
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !22
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"lower", linkageName:"_B_lower", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"upper", linkageName:"_B_upper", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 9, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 10, column: 9, scope: !7)
!18 = !DILocation(line: 12, column: 15, scope: !7)
!19 = !DILocation(line: 12, column: 15, scope: !7)
!20 = !DILocation(line: 12, column: 4, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
!22 = !DILocation(line: 16, column: 16, scope: !9)
!23 = !DILocation(line: 17, column: 21, scope: !9)
!24 = !DILocation(line: 17, column: 33, scope: !9)
!25 = !DILocation(line: 18, column: 19, scope: !9)
!26 = !DILocation(line: 18, column: 19, scope: !9)
!27 = !DILocation(line: 18, column: 8, scope: !9)
