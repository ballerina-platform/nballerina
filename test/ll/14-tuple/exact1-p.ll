@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %t = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %i = alloca i64
  %v = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %53, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = and i64 72057594037927935, 17
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = and i64 72057594037927935, 21
  %26 = or i64 2449958197289549824, %25
  %27 = getelementptr i8, ptr addrspace(1) null, i64 %26
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %2
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !11
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %1
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = load ptr addrspace(1), ptr %2
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 1
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 2, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %3
  %43 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %43, ptr %t
  store i64 0, ptr %i
  %44 = load ptr addrspace(1), ptr %t
  %45 = load i64, ptr %i
  %46 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %44, i64 72057594037927928)
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  %49 = load i64, ptr addrspace(1) %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %55, label %72
51:
  %52 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !14
  unreachable
53:
  %54 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %54), !dbg !8
  unreachable
55:
  %56 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 0
  %57 = load ptr, ptr addrspace(1) %56, align 8
  %58 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = call ptr addrspace(1) %59(ptr addrspace(1) %44, i64 %45)
  %61 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %60), !dbg !12
  store ptr addrspace(1) %61, ptr %4
  %62 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %62, ptr %v
  %63 = load ptr addrspace(1), ptr %v
  %64 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %63, i64 72057594037927928), !dbg !13
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 0
  %67 = load ptr, ptr addrspace(1) %66, align 8
  %68 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %67, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = call i64 %69(ptr addrspace(1) %63, i64 0, ptr addrspace(1) null)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %74, label %75
72:
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 1029), !dbg !7
  store ptr addrspace(1) %73, ptr %5
  br label %51
74:
  ret void
75:
  %76 = or i64 %70, 1280
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 %76), !dbg !7
  store ptr addrspace(1) %77, ptr %5
  br label %51
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/exact1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 2, column: 25, scope: !5)
!10 = !DILocation(line: 2, column: 30, scope: !5)
!11 = !DILocation(line: 2, column: 24, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 5, scope: !5)
!14 = !DILocation(line: 6, column: 0, scope: !5)
