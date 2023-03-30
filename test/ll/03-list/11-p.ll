@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %val = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %38, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %16, ptr %v
  store i64 1, ptr %val
  store i64 0, ptr %i
  br label %17
17:
  %18 = load i64, ptr %i
  %19 = icmp slt i64 %18, 62
  store i1 %19, ptr %2
  %20 = load i1, ptr %2
  br i1 %20, label %21, label %25
21:
  %22 = load i64, ptr %val
  %23 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %22, i64 2)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %76, label %70
25:
  %26 = load ptr addrspace(1), ptr %v
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 72057594037927928), !dbg !10
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = load i64, ptr %val
  %30 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %31 = load ptr, ptr addrspace(1) %30, align 8
  %32 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %31, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8
  %34 = call i64 %33(ptr addrspace(1) %26, i64 %29, i64 0)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %48
36:
  %37 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !14
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !8
  unreachable
40:
  %41 = load ptr addrspace(1), ptr %v
  %42 = load i64, ptr %val
  %43 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %41, i64 72057594037927928)
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  %46 = load i64, ptr addrspace(1) %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %51, label %68
48:
  %49 = or i64 %34, 3072
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %8
  br label %36
51:
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = call ptr addrspace(1) %55(ptr addrspace(1) %41, i64 %42)
  %57 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %41, ptr addrspace(1) %56), !dbg !11
  store ptr addrspace(1) %57, ptr %5
  %58 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %60 = load ptr addrspace(1), ptr addrspace(1) %59, align 8
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = load ptr addrspace(1), ptr %5
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %61, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %6
  %67 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !13
  store ptr addrspace(1) null, ptr %7
  ret void
68:
  %69 = call ptr addrspace(1) @_bal_panic_construct(i64 3333), !dbg !7
  store ptr addrspace(1) %69, ptr %8
  br label %36
70:
  %71 = extractvalue {i64, i1} %23, 0
  store i64 %71, ptr %3
  %72 = load i64, ptr %3
  store i64 %72, ptr %val
  %73 = load i64, ptr %i
  %74 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %73, i64 1)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %81, label %78
76:
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %77, ptr %8
  br label %36
78:
  %79 = extractvalue {i64, i1} %74, 0
  store i64 %79, ptr %4
  %80 = load i64, ptr %4
  store i64 %80, ptr %i
  br label %17
81:
  %82 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %82, ptr %8
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/11-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 12, column: 5, scope: !5)
!11 = !DILocation(line: 13, column: 16, scope: !5)
!12 = !DILocation(line: 13, column: 15, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
!14 = !DILocation(line: 14, column: 0, scope: !5)
