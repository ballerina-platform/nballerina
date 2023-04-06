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
  br i1 %9, label %31, label %10
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
  %20 = zext i1 1 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  %23 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 0
  %24 = load ptr, ptr addrspace(1) %23, align 8
  %25 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = call i64 %26(ptr addrspace(1) %17, i64 0, ptr addrspace(1) %22)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %40
29:
  %30 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !15
  unreachable
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !8
  unreachable
33:
  %34 = load ptr addrspace(1), ptr %vi
  %35 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %34, i64 72057594037927928)
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  %38 = load i64, ptr addrspace(1) %37, align 8
  %39 = icmp ult i64 0, %38
  br i1 %39, label %43, label %46
40:
  %41 = or i64 %27, 1536
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 %41), !dbg !7
  store ptr addrspace(1) %42, ptr %6
  br label %29
43:
  %44 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %34, i64 4)
  %45 = icmp ne ptr addrspace(1) %44, null
  br i1 %45, label %48, label %54
46:
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %47, ptr %6
  br label %29
48:
  %49 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr inbounds [0 x i64], ptr addrspace(1) %51, i64 0, i64 0
  %53 = load i64, ptr addrspace(1) %52, align 8
  store i64 %53, ptr %2
  br label %60
54:
  %55 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 0
  %56 = load ptr, ptr addrspace(1) %55, align 8
  %57 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = call i64 %58(ptr addrspace(1) %34, i64 0)
  store i64 %59, ptr %2
  br label %60
60:
  %61 = load i64, ptr %2
  %62 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %61, i64 1)
  %63 = extractvalue {i64, i1} %62, 1
  br i1 %63, label %77, label %64
64:
  %65 = extractvalue {i64, i1} %62, 0
  store i64 %65, ptr %3
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i64, ptr %3
  %71 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %70), !dbg !13
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %4
  %76 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !14
  store ptr addrspace(1) null, ptr %5
  ret void
77:
  %78 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %78, ptr %6
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int2-p.bal", directory:"")
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
