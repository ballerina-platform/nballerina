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
  br i1 %10, label %30, label %11
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
  %19 = zext i1 1 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, ptr addrspace(1) null, i64 %20
  %22 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 0
  %23 = load ptr, ptr addrspace(1) %22, align 8
  %24 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = call i64 %25(ptr addrspace(1) %16, i64 3, ptr addrspace(1) %21)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %60
28:
  %29 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !19
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load ptr addrspace(1), ptr %a
  %38 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %37), !dbg !12
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %2
  %43 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 0), !dbg !14
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %4
  %47 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %47, ptr %b
  %48 = load ptr addrspace(1), ptr %b
  %49 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %48, i64 72057594037927928), !dbg !15
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = zext i1 1 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 0
  %55 = load ptr, ptr addrspace(1) %54, align 8
  %56 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = call i64 %57(ptr addrspace(1) %48, i64 3, ptr addrspace(1) %53)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %75
60:
  %61 = or i64 %26, 1024
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 %61), !dbg !7
  store ptr addrspace(1) %62, ptr %7
  br label %28
63:
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load ptr addrspace(1), ptr %b
  %69 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %68), !dbg !17
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %5
  %74 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
75:
  %76 = or i64 %58, 2048
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 %76), !dbg !7
  store ptr addrspace(1) %77, ptr %7
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 18, scope: !5)
!15 = !DILocation(line: 8, column: 5, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 0, scope: !5)
