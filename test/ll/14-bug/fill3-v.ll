@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %signs = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %29, label %13
13:
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %17, ptr %signs
  %18 = load ptr addrspace(1), ptr %signs
  %19 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %18, i64 72057594037927928), !dbg !10
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 0
  %22 = load ptr, ptr addrspace(1) %21, align 8
  %23 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = call i64 %24(ptr addrspace(1) %18, i64 2, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261357))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %41
27:
  %28 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !16
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  %32 = load ptr addrspace(1), ptr %signs
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %32, i64 72057594037927928), !dbg !11
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 0
  %36 = load ptr, ptr addrspace(1) %35, align 8
  %37 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 %38(ptr addrspace(1) %32, i64 0, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261355))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %51
41:
  %42 = or i64 %25, 1792
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 %42), !dbg !7
  store ptr addrspace(1) %43, ptr %9
  br label %27
44:
  %45 = load ptr addrspace(1), ptr %signs
  %46 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %45, i64 72057594037927928)
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  %49 = load i64, ptr addrspace(1) %48, align 8
  %50 = icmp ult i64 0, %49
  br i1 %50, label %54, label %66
51:
  %52 = or i64 %39, 2048
  %53 = call ptr addrspace(1) @_bal_panic_construct(i64 %52), !dbg !7
  store ptr addrspace(1) %53, ptr %9
  br label %27
54:
  %55 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 0
  %56 = load ptr, ptr addrspace(1) %55, align 8
  %57 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr addrspace(1) %58(ptr addrspace(1) %45, i64 0)
  store ptr addrspace(1) %59, ptr %2
  %60 = load ptr addrspace(1), ptr %signs
  %61 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %60, i64 72057594037927928)
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  %64 = load i64, ptr addrspace(1) %63, align 8
  %65 = icmp ult i64 1, %64
  br i1 %65, label %68, label %83
66:
  %67 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %67, ptr %9
  br label %27
68:
  %69 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 0
  %70 = load ptr, ptr addrspace(1) %69, align 8
  %71 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = call ptr addrspace(1) %72(ptr addrspace(1) %60, i64 1)
  store ptr addrspace(1) %73, ptr %3
  %74 = load ptr addrspace(1), ptr %2
  %75 = load ptr addrspace(1), ptr %3
  %76 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %74, ptr addrspace(1) %75), !dbg !12
  store ptr addrspace(1) %76, ptr %4
  %77 = load ptr addrspace(1), ptr %signs
  %78 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %77, i64 72057594037927928)
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  %81 = load i64, ptr addrspace(1) %80, align 8
  %82 = icmp ult i64 2, %81
  br i1 %82, label %85, label %104
83:
  %84 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %84, ptr %9
  br label %27
85:
  %86 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 0
  %87 = load ptr, ptr addrspace(1) %86, align 8
  %88 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = call ptr addrspace(1) %89(ptr addrspace(1) %77, i64 2)
  store ptr addrspace(1) %90, ptr %5
  %91 = load ptr addrspace(1), ptr %4
  %92 = load ptr addrspace(1), ptr %5
  %93 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %91, ptr addrspace(1) %92), !dbg !13
  store ptr addrspace(1) %93, ptr %6
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load ptr addrspace(1), ptr %6
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %7
  %103 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !15
  store ptr addrspace(1) null, ptr %8
  ret void
104:
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %105, ptr %9
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/fill3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 19, scope: !5)
!10 = !DILocation(line: 7, column: 9, scope: !5)
!11 = !DILocation(line: 8, column: 9, scope: !5)
!12 = !DILocation(line: 9, column: 24, scope: !5)
!13 = !DILocation(line: 9, column: 35, scope: !5)
!14 = !DILocation(line: 9, column: 15, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 10, column: 0, scope: !5)
