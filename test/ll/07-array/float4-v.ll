@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %20, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr i8, ptr addrspace(1) %10, i64 864691128455135236
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %x
  %13 = load ptr addrspace(1), ptr %x
  %14 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %13, i64 72057594037927928), !dbg !10
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %13, i64 4)
  %17 = icmp ne ptr addrspace(1) %16, null
  br i1 %17, label %22, label %26
18:
  %19 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !15
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !8
  unreachable
22:
  %23 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  %24 = load i64, ptr addrspace(1) %23, align 8
  %25 = icmp ult i64 1, %24
  br i1 %25, label %39, label %26
26:
  %27 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 0
  %28 = load ptr, ptr addrspace(1) %27, align 8
  %29 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %28, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8
  %31 = call i64 %30(ptr addrspace(1) %13, i64 1, double 1.5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %44, label %45
33:
  %34 = load ptr addrspace(1), ptr %x
  %35 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %34, i64 72057594037927928), !dbg !11
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %34, i64 4)
  %38 = icmp ne ptr addrspace(1) %37, null
  br i1 %38, label %48, label %52
39:
  %40 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = getelementptr inbounds [0 x double], ptr addrspace(1) %42, i64 0, i64 1
  store double 1.5, ptr addrspace(1) %43
  br label %33
44:
  br label %33
45:
  %46 = or i64 %31, 1536
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 %46), !dbg !7
  store ptr addrspace(1) %47, ptr %4
  br label %18
48:
  %49 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  %50 = load i64, ptr addrspace(1) %49, align 8
  %51 = icmp ult i64 3, %50
  br i1 %51, label %71, label %52
52:
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 0
  %54 = load ptr, ptr addrspace(1) %53, align 8
  %55 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %54, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8
  %57 = call i64 %56(ptr addrspace(1) %34, i64 3, double 2.5)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %76, label %77
59:
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load ptr addrspace(1), ptr %x
  %65 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %64), !dbg !13
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %2
  %70 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !14
  store ptr addrspace(1) null, ptr %3
  ret void
71:
  %72 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = getelementptr inbounds [0 x double], ptr addrspace(1) %74, i64 0, i64 3
  store double 2.5, ptr addrspace(1) %75
  br label %59
76:
  br label %59
77:
  %78 = or i64 %57, 1792
  %79 = call ptr addrspace(1) @_bal_panic_construct(i64 %78), !dbg !7
  store ptr addrspace(1) %79, ptr %4
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/float4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 16, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 5, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 0, scope: !5)
