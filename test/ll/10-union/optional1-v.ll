@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
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
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr inbounds [0 x i64], ptr addrspace(1) %14, i64 0, i64 0
  store i64 1, ptr addrspace(1) %15
  %16 = getelementptr inbounds [0 x i64], ptr addrspace(1) %14, i64 0, i64 1
  store i64 2, ptr addrspace(1) %16
  %17 = getelementptr inbounds [0 x i64], ptr addrspace(1) %14, i64 0, i64 2
  store i64 3, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 3, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %x
  %22 = load ptr addrspace(1), ptr %x
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 864691128455135232
  br i1 %26, label %31, label %39
27:
  %28 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !13
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  store ptr addrspace(1) %22, ptr %2
  %32 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %32, ptr %y
  %33 = load ptr addrspace(1), ptr %y
  %34 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 72057594037927928)
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  %37 = load i64, ptr addrspace(1) %36, align 8
  %38 = icmp ult i64 1, %37
  br i1 %38, label %41, label %44
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !7
  store ptr addrspace(1) %40, ptr %6
  br label %27
41:
  %42 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 4)
  %43 = icmp ne ptr addrspace(1) %42, null
  br i1 %43, label %46, label %52
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %45, ptr %6
  br label %27
46:
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x i64], ptr addrspace(1) %49, i64 0, i64 1
  %51 = load i64, ptr addrspace(1) %50, align 8
  store i64 %51, ptr %3
  br label %58
52:
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 0
  %54 = load ptr, ptr addrspace(1) %53, align 8
  %55 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = call i64 %56(ptr addrspace(1) %33, i64 1)
  store i64 %57, ptr %3
  br label %58
58:
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = load i64, ptr %3
  %64 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %63), !dbg !11
  %65 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %64, ptr addrspace(1) %65
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %66
  %67 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %68 = getelementptr i8, ptr addrspace(1) %67, i64 864691128455135236
  store ptr addrspace(1) %68, ptr %4
  %69 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %69), !dbg !12
  store ptr addrspace(1) null, ptr %5
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/optional1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 0, scope: !5)
