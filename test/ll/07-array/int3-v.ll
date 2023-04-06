@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %30, label %11
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = getelementptr inbounds [0 x i64], ptr addrspace(1) %15, i64 0, i64 0
  store i64 3, ptr addrspace(1) %16
  %17 = getelementptr inbounds [0 x i64], ptr addrspace(1) %15, i64 0, i64 1
  store i64 7, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 2, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %v
  %22 = load ptr addrspace(1), ptr %v
  %23 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %22, i64 72057594037927928)
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  %26 = load i64, ptr addrspace(1) %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %32, label %35
28:
  %29 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !13
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %22, i64 4)
  %34 = icmp ne ptr addrspace(1) %33, null
  br i1 %34, label %37, label %43
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %36, ptr %7
  br label %28
37:
  %38 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = getelementptr inbounds [0 x i64], ptr addrspace(1) %40, i64 0, i64 0
  %42 = load i64, ptr addrspace(1) %41, align 8
  store i64 %42, ptr %2
  br label %49
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 0
  %45 = load ptr, ptr addrspace(1) %44, align 8
  %46 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %45, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = call i64 %47(ptr addrspace(1) %22, i64 0)
  store i64 %48, ptr %2
  br label %49
49:
  %50 = load ptr addrspace(1), ptr %v
  %51 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 72057594037927928)
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  %54 = load i64, ptr addrspace(1) %53, align 8
  %55 = icmp ult i64 1, %54
  br i1 %55, label %56, label %59
56:
  %57 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 4)
  %58 = icmp ne ptr addrspace(1) %57, null
  br i1 %58, label %61, label %67
59:
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %60, ptr %7
  br label %28
61:
  %62 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = getelementptr inbounds [0 x i64], ptr addrspace(1) %64, i64 0, i64 1
  %66 = load i64, ptr addrspace(1) %65, align 8
  store i64 %66, ptr %3
  br label %73
67:
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 0
  %69 = load ptr, ptr addrspace(1) %68, align 8
  %70 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %69, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = call i64 %71(ptr addrspace(1) %50, i64 1)
  store i64 %72, ptr %3
  br label %73
73:
  %74 = load i64, ptr %2
  %75 = load i64, ptr %3
  %76 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %74, i64 %75)
  %77 = extractvalue {i64, i1} %76, 1
  br i1 %77, label %91, label %78
78:
  %79 = extractvalue {i64, i1} %76, 0
  store i64 %79, ptr %4
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i64, ptr %4
  %85 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %84), !dbg !11
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %5
  %90 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !12
  store ptr addrspace(1) null, ptr %6
  ret void
91:
  %92 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !7
  store ptr addrspace(1) %92, ptr %7
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 0, scope: !5)
