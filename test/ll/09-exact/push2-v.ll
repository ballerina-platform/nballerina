@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %x2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %29, label %10
10:
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr i8, ptr addrspace(1) %12, i64 864691128455135236
  store ptr addrspace(1) %13, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %x1
  %15 = load ptr addrspace(1), ptr %x1
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !10
  store ptr addrspace(1) %16, ptr %x2
  %17 = load ptr addrspace(1), ptr %x2
  %18 = and i64 72057594037927935, 255
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %17, ptr addrspace(1) %20), !dbg !11
  store ptr addrspace(1) null, ptr %2
  %21 = load ptr addrspace(1), ptr %x1
  %22 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %21, i64 72057594037927928)
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  %25 = load i64, ptr addrspace(1) %24, align 8
  %26 = icmp ult i64 0, %25
  br i1 %26, label %31, label %34
27:
  %28 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !15
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  %32 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %21, i64 4)
  %33 = icmp ne ptr addrspace(1) %32, null
  br i1 %33, label %36, label %42
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %35, ptr %6
  br label %27
36:
  %37 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = getelementptr inbounds [0 x i64], ptr addrspace(1) %39, i64 0, i64 0
  %41 = load i64, ptr addrspace(1) %40, align 8
  store i64 %41, ptr %3
  br label %48
42:
  %43 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 0
  %44 = load ptr, ptr addrspace(1) %43, align 8
  %45 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %44, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = call i64 %46(ptr addrspace(1) %21, i64 0)
  store i64 %47, ptr %3
  br label %48
48:
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load i64, ptr %3
  %54 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %53), !dbg !13
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %4
  %59 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !14
  store ptr addrspace(1) null, ptr %5
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/push2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 21, scope: !5)
!11 = !DILocation(line: 5, column: 7, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 0, scope: !5)
