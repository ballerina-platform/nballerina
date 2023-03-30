@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %26, label %10
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
  %18 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 0
  %19 = load ptr, ptr addrspace(1) %18, align 8
  %20 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = call i64 %21(ptr addrspace(1) %15, i64 0, i64 1)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %42
24:
  %25 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !16
  unreachable
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !8
  unreachable
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !11
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %2
  %32 = load ptr addrspace(1), ptr %v
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %32, i64 72057594037927928), !dbg !12
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load ptr addrspace(1), ptr %2
  %36 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 0
  %37 = load ptr, ptr addrspace(1) %36, align 8
  %38 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 %39(ptr addrspace(1) %32, i64 1, ptr addrspace(1) %35)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %57
42:
  %43 = or i64 %22, 2048
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 %43), !dbg !7
  store ptr addrspace(1) %44, ptr %6
  br label %24
45:
  %46 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738034025207654519), i64 10), !dbg !7
  store ptr addrspace(1) %46, ptr %3
  %47 = load ptr addrspace(1), ptr %v
  %48 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %47, i64 72057594037927928), !dbg !13
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load ptr addrspace(1), ptr %3
  %51 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 0
  %52 = load ptr, ptr addrspace(1) %51, align 8
  %53 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8
  %55 = call i64 %54(ptr addrspace(1) %47, i64 2, ptr addrspace(1) %50)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %71
57:
  %58 = or i64 %40, 2304
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 %58), !dbg !7
  store ptr addrspace(1) %59, ptr %6
  br label %24
60:
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = load ptr addrspace(1), ptr %v
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %4
  %70 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !15
  store ptr addrspace(1) null, ptr %5
  ret void
71:
  %72 = or i64 %55, 2560
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 %72), !dbg !7
  store ptr addrspace(1) %73, ptr %6
  br label %24
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-type/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 13, scope: !5)
!10 = !DILocation(line: 8, column: 5, scope: !5)
!11 = !DILocation(line: 9, column: 11, scope: !5)
!12 = !DILocation(line: 9, column: 5, scope: !5)
!13 = !DILocation(line: 10, column: 5, scope: !5)
!14 = !DILocation(line: 11, column: 15, scope: !5)
!15 = !DILocation(line: 11, column: 4, scope: !5)
!16 = !DILocation(line: 12, column: 0, scope: !5)
