@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca double
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %22, label %10
10:
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr i8, ptr addrspace(1) %12, i64 864691128455135236
  store ptr addrspace(1) %13, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %v
  %15 = load ptr addrspace(1), ptr %v
  %16 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %15, i64 72057594037927928), !dbg !10
  %17 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %18 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %15, i64 4)
  %19 = icmp ne ptr addrspace(1) %18, null
  br i1 %19, label %24, label %28
20:
  %21 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !14
  unreachable
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !8
  unreachable
24:
  %25 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  %26 = load i64, ptr addrspace(1) %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %42, label %28
28:
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 0
  %30 = load ptr, ptr addrspace(1) %29, align 8
  %31 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 %32(ptr addrspace(1) %15, i64 0, double 2.0)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %47, label %48
35:
  %36 = load ptr addrspace(1), ptr %v
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 72057594037927928)
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  %40 = load i64, ptr addrspace(1) %39, align 8
  %41 = icmp ult i64 0, %40
  br i1 %41, label %51, label %54
42:
  %43 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = getelementptr inbounds [0 x double], ptr addrspace(1) %45, i64 0, i64 0
  store double 2.0, ptr addrspace(1) %46
  br label %35
47:
  br label %35
48:
  %49 = or i64 %33, 1536
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %6
  br label %20
51:
  %52 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 4)
  %53 = icmp ne ptr addrspace(1) %52, null
  br i1 %53, label %56, label %62
54:
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %55, ptr %6
  br label %20
56:
  %57 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = getelementptr inbounds [0 x double], ptr addrspace(1) %59, i64 0, i64 0
  %61 = load double, ptr addrspace(1) %60, align 8
  store double %61, ptr %2
  br label %68
62:
  %63 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 0
  %64 = load ptr, ptr addrspace(1) %63, align 8
  %65 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8
  %67 = call double %66(ptr addrspace(1) %36, i64 0)
  store double %67, ptr %2
  br label %68
68:
  %69 = load double, ptr %2
  %70 = fadd double %69, 0.5
  store double %70, ptr %3
  %71 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = load double, ptr %3
  %76 = call ptr addrspace(1) @_bal_float_to_tagged(double %75), !dbg !12
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %74, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %4
  %81 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !13
  store ptr addrspace(1) null, ptr %5
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/float3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 16, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 0, scope: !5)
