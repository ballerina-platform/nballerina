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
  %7 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root0, i64 0), !dbg !13
  %8 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %9 = getelementptr i8, ptr addrspace(1) %8, i64 864691128455135236
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %10, ptr %b1
  %11 = load ptr addrspace(1), ptr %b1
  %12 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %11), !dbg !14
  call void @_B_f(ptr addrspace(1) %12), !dbg !15
  store ptr addrspace(1) null, ptr %2
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !12
  unreachable
}
define internal void @_B_f(ptr addrspace(1) %0) !dbg !7 {
  %a = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %25, label %8
8:
  store ptr addrspace(1) %0, ptr %a
  %9 = and i64 72057594037927935, 1
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  %12 = call ptr addrspace(1) @_B_asAny(ptr addrspace(1) %11), !dbg !18
  store ptr addrspace(1) %12, ptr %2
  %13 = load ptr addrspace(1), ptr %a
  %14 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %13, i64 72057594037927928), !dbg !19
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load ptr addrspace(1), ptr %2
  %17 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 0
  %18 = load ptr, ptr addrspace(1) %17, align 8
  %19 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 %20(ptr addrspace(1) %13, i64 100, ptr addrspace(1) %16)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %42
23:
  %24 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !22
  unreachable
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !17
  unreachable
27:
  %28 = and i64 72057594037927935, 256
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = call ptr addrspace(1) @_B_asAny(ptr addrspace(1) %30), !dbg !20
  store ptr addrspace(1) %31, ptr %3
  %32 = load ptr addrspace(1), ptr %a
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %32, i64 72057594037927928), !dbg !21
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load ptr addrspace(1), ptr %3
  %36 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 0
  %37 = load ptr, ptr addrspace(1) %36, align 8
  %38 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 %39(ptr addrspace(1) %32, i64 1, ptr addrspace(1) %35)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %46
42:
  %43 = or i64 %21, 1792
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 %43), !dbg !16
  store ptr addrspace(1) %44, ptr %4
  br label %23
45:
  ret void
46:
  %47 = or i64 %40, 2304
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 %47), !dbg !16
  store ptr addrspace(1) %48, ptr %4
  br label %23
}
define internal ptr addrspace(1) @_B_asAny(ptr addrspace(1) %0) !dbg !9 {
  %a = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store ptr addrspace(1) %0, ptr %a
  %6 = load ptr addrspace(1), ptr %a
  ret ptr addrspace(1) %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !23
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !24
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bytearr/3-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"asAny", linkageName:"_B_asAny", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 1, column: 16, scope: !5)
!13 = !DILocation(line: 2, column: 16, scope: !5)
!14 = !DILocation(line: 3, column: 4, scope: !5)
!15 = !DILocation(line: 3, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 6, column: 9, scope: !7)
!18 = !DILocation(line: 7, column: 13, scope: !7)
!19 = !DILocation(line: 7, column: 5, scope: !7)
!20 = !DILocation(line: 9, column: 11, scope: !7)
!21 = !DILocation(line: 9, column: 5, scope: !7)
!22 = !DILocation(line: 10, column: 0, scope: !7)
!23 = !DILocation(line: 0, column: 0, scope: !9)
!24 = !DILocation(line: 12, column: 9, scope: !9)
