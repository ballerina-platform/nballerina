@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %sub1 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %sub2 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %37, label %10
10:
  %11 = call i64 @_B_sub(i64 5, i64 2), !dbg !11
  store i64 %11, ptr %1
  %12 = load i64, ptr %1
  store i64 %12, ptr %sub1
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load i64, ptr %sub1
  %18 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %17), !dbg !13
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %24 = call i64 @_B_sub(i64 0, i64 1), !dbg !15
  store i64 %24, ptr %4
  %25 = load i64, ptr %4
  store i64 %25, ptr %sub2
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %sub2
  %31 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %30), !dbg !17
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %5
  %36 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !10
  unreachable
}
define internal i64 @_B_sub(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %9 = load i64, ptr %x
  %10 = load i64, ptr %y
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !21
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !20
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !19
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/sub1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sub", linkageName:"_B_sub", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 13, scope: !5)
!12 = !DILocation(line: 5, column: 13, scope: !5)
!13 = !DILocation(line: 5, column: 13, scope: !5)
!14 = !DILocation(line: 5, column: 2, scope: !5)
!15 = !DILocation(line: 6, column: 13, scope: !5)
!16 = !DILocation(line: 7, column: 13, scope: !5)
!17 = !DILocation(line: 7, column: 13, scope: !5)
!18 = !DILocation(line: 7, column: 2, scope: !5)
!19 = !DILocation(line: 0, column: 0, scope: !7)
!20 = !DILocation(line: 10, column: 9, scope: !7)
!21 = !DILocation(line: 12, column: 0, scope: !7)
