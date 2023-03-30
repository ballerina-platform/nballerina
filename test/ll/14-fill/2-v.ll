@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %27, label %11
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %15, ptr %a
  %16 = load ptr addrspace(1), ptr %a
  %17 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %16, i64 72057594037927928), !dbg !10
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 0
  %20 = load ptr, ptr addrspace(1) %19, align 8
  %21 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8
  %23 = call i64 %22(ptr addrspace(1) %16, i64 3, double 1.3)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %50
25:
  %26 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !19
  unreachable
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !8
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = load ptr addrspace(1), ptr %a
  %35 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %34), !dbg !12
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %2
  %40 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %40), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 0), !dbg !14
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %4
  %44 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %44, ptr %b
  %45 = load ptr addrspace(1), ptr %b
  %46 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %45, i64 72057594037927928), !dbg !15
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %45, i64 4)
  %49 = icmp ne ptr addrspace(1) %48, null
  br i1 %49, label %53, label %57
50:
  %51 = or i64 %23, 1024
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 %51), !dbg !7
  store ptr addrspace(1) %52, ptr %7
  br label %25
53:
  %54 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  %55 = load i64, ptr addrspace(1) %54, align 8
  %56 = icmp ult i64 3, %55
  br i1 %56, label %76, label %57
57:
  %58 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 0
  %59 = load ptr, ptr addrspace(1) %58, align 8
  %60 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %59, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8
  %62 = call i64 %61(ptr addrspace(1) %45, i64 3, double 1.4)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %81, label %82
64:
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load ptr addrspace(1), ptr %b
  %70 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %69), !dbg !17
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %5
  %75 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
76:
  %77 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = getelementptr inbounds [0 x double], ptr addrspace(1) %79, i64 0, i64 3
  store double 1.4, ptr addrspace(1) %80
  br label %64
81:
  br label %64
82:
  %83 = or i64 %62, 2048
  %84 = call ptr addrspace(1) @_bal_panic_construct(i64 %83), !dbg !7
  store ptr addrspace(1) %84, ptr %7
  br label %25
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 14, scope: !5)
!10 = !DILocation(line: 4, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 16, scope: !5)
!15 = !DILocation(line: 8, column: 5, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 0, scope: !5)
