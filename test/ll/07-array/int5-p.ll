@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %vi = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %va = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %28, label %10
10:
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr i8, ptr addrspace(1) %12, i64 864691128455135236
  store ptr addrspace(1) %13, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %vi
  %15 = load ptr addrspace(1), ptr %vi
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !10
  store ptr addrspace(1) %16, ptr %va
  %17 = load ptr addrspace(1), ptr %va
  %18 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %17, i64 72057594037927928), !dbg !11
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 0
  %21 = load ptr, ptr addrspace(1) %20, align 8
  %22 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = call i64 %23(ptr addrspace(1) %17, i64 0, ptr addrspace(1) null)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %37
26:
  %27 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !15
  unreachable
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !8
  unreachable
30:
  %31 = load ptr addrspace(1), ptr %vi
  %32 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %31, i64 72057594037927928)
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  %35 = load i64, ptr addrspace(1) %34, align 8
  %36 = icmp ult i64 0, %35
  br i1 %36, label %40, label %43
37:
  %38 = or i64 %24, 1536
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 %38), !dbg !7
  store ptr addrspace(1) %39, ptr %6
  br label %26
40:
  %41 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %31, i64 4)
  %42 = icmp ne ptr addrspace(1) %41, null
  br i1 %42, label %45, label %51
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %44, ptr %6
  br label %26
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 0
  %50 = load i64, ptr addrspace(1) %49, align 8
  store i64 %50, ptr %2
  br label %57
51:
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = call i64 %55(ptr addrspace(1) %31, i64 0)
  store i64 %56, ptr %2
  br label %57
57:
  %58 = load i64, ptr %2
  %59 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %58, i64 1)
  %60 = extractvalue {i64, i1} %59, 1
  br i1 %60, label %74, label %61
61:
  %62 = extractvalue {i64, i1} %59, 0
  store i64 %62, ptr %3
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load i64, ptr %3
  %68 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %67), !dbg !13
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %4
  %73 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !14
  store ptr addrspace(1) null, ptr %5
  ret void
74:
  %75 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %75, ptr %6
  br label %26
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int5-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 13, scope: !5)
!11 = !DILocation(line: 6, column: 6, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 0, scope: !5)
