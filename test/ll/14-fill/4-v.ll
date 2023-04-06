@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 19, i64 2452139628359057408], align 8
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 20, i64 2452139628359057408], align 8
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
  br i1 %10, label %29, label %11
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
  %19 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 288230376151711744
  %21 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 0
  %22 = load ptr, ptr addrspace(1) %21, align 8
  %23 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = call i64 %24(ptr addrspace(1) %16, i64 3, ptr addrspace(1) %20)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %58
27:
  %28 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !19
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %a
  %37 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %36), !dbg !12
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %2
  %42 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %42), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 0), !dbg !14
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %4
  %46 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %46, ptr %b
  %47 = load ptr addrspace(1), ptr %b
  %48 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %47, i64 72057594037927928), !dbg !15
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 288230376151711744
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8
  %56 = call i64 %55(ptr addrspace(1) %47, i64 3, ptr addrspace(1) %51)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %61, label %73
58:
  %59 = or i64 %25, 1024
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 %59), !dbg !7
  store ptr addrspace(1) %60, ptr %7
  br label %27
61:
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load ptr addrspace(1), ptr %b
  %67 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %66), !dbg !17
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %5
  %72 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
73:
  %74 = or i64 %56, 2048
  %75 = call ptr addrspace(1) @_bal_panic_construct(i64 %74), !dbg !7
  store ptr addrspace(1) %75, ptr %7
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/4-v.bal", directory:"")
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
