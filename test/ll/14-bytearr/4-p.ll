@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_1(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %b1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root0, i64 0), !dbg !11
  %8 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %9 = getelementptr i8, ptr addrspace(1) %8, i64 864691128455135236
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %10, ptr %b1
  %11 = load ptr addrspace(1), ptr %b1
  %12 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %11), !dbg !12
  call void @_B_f(ptr addrspace(1) %12), !dbg !13
  store ptr addrspace(1) null, ptr %2
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !10
  unreachable
}
define internal void @_B_f(ptr addrspace(1) %0) !dbg !7 {
  %a = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %14, label %6
6:
  store ptr addrspace(1) %0, ptr %a
  %7 = load ptr addrspace(1), ptr %a
  %8 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %7, i64 72057594037927928), !dbg !16
  %9 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %10 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %7, i64 4)
  %11 = icmp ne ptr addrspace(1) %10, null
  br i1 %11, label %16, label %20
12:
  %13 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !17
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !15
  unreachable
16:
  %17 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  %18 = load i64, ptr addrspace(1) %17, align 8
  %19 = icmp ult i64 0, %18
  br i1 %19, label %28, label %20
20:
  %21 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 0
  %22 = load ptr, ptr addrspace(1) %21, align 8
  %23 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = call i64 %24(ptr addrspace(1) %7, i64 0, i64 256)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %34
27:
  ret void
28:
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = getelementptr inbounds [0 x i64], ptr addrspace(1) %31, i64 0, i64 0
  store i64 256, ptr addrspace(1) %32
  br label %27
33:
  br label %27
34:
  %35 = or i64 %25, 1792
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 %35), !dbg !14
  store ptr addrspace(1) %36, ptr %2
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bytearr/4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 1, column: 16, scope: !5)
!11 = !DILocation(line: 2, column: 16, scope: !5)
!12 = !DILocation(line: 3, column: 4, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 6, column: 9, scope: !7)
!16 = !DILocation(line: 7, column: 5, scope: !7)
!17 = !DILocation(line: 8, column: 0, scope: !7)
