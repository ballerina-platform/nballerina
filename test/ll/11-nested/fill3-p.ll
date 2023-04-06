@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v0 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %33, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr i8, ptr addrspace(1) %10, i64 864691128455135236
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %v
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 0
  store i64 17, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %v
  %22 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %21, i64 72057594037927928), !dbg !11
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load ptr addrspace(1), ptr %2
  %25 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 0
  %26 = load ptr, ptr addrspace(1) %25, align 8
  %27 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = call i64 %28(ptr addrspace(1) %21, i64 1, ptr addrspace(1) %24)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %42
31:
  %32 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !15
  unreachable
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !8
  unreachable
35:
  %36 = load ptr addrspace(1), ptr %v
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 72057594037927928)
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  %40 = load i64, ptr addrspace(1) %39, align 8
  %41 = icmp ult i64 0, %40
  br i1 %41, label %45, label %63
42:
  %43 = or i64 %29, 1024
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 %43), !dbg !7
  store ptr addrspace(1) %44, ptr %4
  br label %31
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 0
  %47 = load ptr, ptr addrspace(1) %46, align 8
  %48 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = call ptr addrspace(1) %49(ptr addrspace(1) %36, i64 0)
  %51 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %36, ptr addrspace(1) %50), !dbg !12
  store ptr addrspace(1) %51, ptr %3
  %52 = load ptr addrspace(1), ptr %3
  %53 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %52), !dbg !13
  store ptr addrspace(1) %53, ptr %v0
  %54 = load ptr addrspace(1), ptr %v0
  %55 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 72057594037927928), !dbg !14
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 0
  %58 = load ptr, ptr addrspace(1) %57, align 8
  %59 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8
  %61 = call i64 %60(ptr addrspace(1) %54, i64 0, ptr addrspace(1) null)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %66
63:
  %64 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %64, ptr %4
  br label %31
65:
  ret void
66:
  %67 = or i64 %61, 1536
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 %67), !dbg !7
  store ptr addrspace(1) %68, ptr %4
  br label %31
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fill3-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 16, scope: !5)
!10 = !DILocation(line: 4, column: 11, scope: !5)
!11 = !DILocation(line: 4, column: 5, scope: !5)
!12 = !DILocation(line: 5, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 13, scope: !5)
!14 = !DILocation(line: 6, column: 6, scope: !5)
!15 = !DILocation(line: 7, column: 0, scope: !5)
