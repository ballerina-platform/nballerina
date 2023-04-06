@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %k = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %60, label %13
13:
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 3
  %16 = load ptr addrspace(1), ptr addrspace(1) %15, align 8
  %17 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %18 = getelementptr inbounds [0 x i64], ptr addrspace(1) %17, i64 0, i64 0
  store i64 1, ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %1
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = getelementptr inbounds [0 x i64], ptr addrspace(1) %25, i64 0, i64 0
  store i64 2, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %2
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !11
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 3), !dbg !12
  %34 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %33, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %34), !dbg !13
  %35 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %33, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %35), !dbg !14
  %36 = load ptr addrspace(1), ptr %3
  call void @_bal_mapping_init_member(ptr addrspace(1) %33, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %36), !dbg !15
  store ptr addrspace(1) %33, ptr %4
  %37 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %37, ptr %r
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr %k
  %38 = load ptr addrspace(1), ptr %k
  %39 = load ptr addrspace(1), ptr %r
  %40 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %39, ptr addrspace(1) %38), !dbg !16
  %41 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %39, ptr addrspace(1) %40), !dbg !17
  store ptr addrspace(1) %41, ptr %5
  %42 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %42, ptr %x
  %43 = load ptr addrspace(1), ptr %x
  %44 = addrspacecast ptr addrspace(1) %43 to ptr
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 864691128455135232
  br i1 %47, label %48, label %56
48:
  %49 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %49, ptr %x.1
  %50 = load ptr addrspace(1), ptr %x.1
  %51 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 72057594037927928)
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  %54 = load i64, ptr addrspace(1) %53, align 8
  %55 = icmp ult i64 0, %54
  br i1 %55, label %62, label %65
56:
  %57 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %57, ptr %x.2
  ret void
58:
  %59 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %59), !dbg !21
  unreachable
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !8
  unreachable
62:
  %63 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 4)
  %64 = icmp ne ptr addrspace(1) %63, null
  br i1 %64, label %67, label %73
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 4101), !dbg !7
  store ptr addrspace(1) %66, ptr %9
  br label %58
67:
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = getelementptr inbounds [0 x i64], ptr addrspace(1) %70, i64 0, i64 0
  %72 = load i64, ptr addrspace(1) %71, align 8
  store i64 %72, ptr %6
  br label %79
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 0
  %75 = load ptr, ptr addrspace(1) %74, align 8
  %76 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8
  %78 = call i64 %77(ptr addrspace(1) %50, i64 0)
  store i64 %78, ptr %6
  br label %79
79:
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !18
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i64, ptr %6
  %85 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %84), !dbg !19
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %7
  %90 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !20
  store ptr addrspace(1) null, ptr %8
  br label %56
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/exact1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 16, scope: !5)
!9 = !DILocation(line: 12, column: 15, scope: !5)
!10 = !DILocation(line: 12, column: 23, scope: !5)
!11 = !DILocation(line: 12, column: 31, scope: !5)
!12 = !DILocation(line: 12, column: 10, scope: !5)
!13 = !DILocation(line: 12, column: 10, scope: !5)
!14 = !DILocation(line: 12, column: 10, scope: !5)
!15 = !DILocation(line: 12, column: 10, scope: !5)
!16 = !DILocation(line: 14, column: 16, scope: !5)
!17 = !DILocation(line: 14, column: 16, scope: !5)
!18 = !DILocation(line: 16, column: 19, scope: !5)
!19 = !DILocation(line: 16, column: 19, scope: !5)
!20 = !DILocation(line: 16, column: 8, scope: !5)
!21 = !DILocation(line: 18, column: 0, scope: !5)
