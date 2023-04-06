@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %43, label %15
15:
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = and i64 72057594037927935, 1
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = and i64 72057594037927935, 2
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 1
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = and i64 72057594037927935, 3
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 2
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 3, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  %36 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %35, i64 72057594037927928)
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  %39 = load i64, ptr addrspace(1) %38, align 8
  %40 = icmp ult i64 2, %39
  br i1 %40, label %45, label %96
41:
  %42 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !19
  unreachable
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !8
  unreachable
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 0
  %47 = load ptr, ptr addrspace(1) %46, align 8
  %48 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = call i64 %49(ptr addrspace(1) %35, i64 2)
  store i64 %50, ptr %2
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i64, ptr %2
  %56 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %55), !dbg !11
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %3
  %61 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !13
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = and i64 72057594037927935, 1
  %67 = or i64 2449958197289549824, %66
  %68 = getelementptr i8, ptr addrspace(1) null, i64 %67
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = and i64 72057594037927935, 2
  %71 = or i64 2449958197289549824, %70
  %72 = getelementptr i8, ptr addrspace(1) null, i64 %71
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 1
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 2, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %5
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 2), !dbg !14
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load ptr addrspace(1), ptr %5
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = and i64 72057594037927935, 3
  %84 = or i64 2449958197289549824, %83
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 1
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 2, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %6
  %90 = load ptr addrspace(1), ptr %6
  %91 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %90, i64 72057594037927928)
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %92, i64 0, i32 1
  %94 = load i64, ptr addrspace(1) %93, align 8
  %95 = icmp ult i64 0, %94
  br i1 %95, label %98, label %111
96:
  %97 = call ptr addrspace(1) @_bal_panic_construct(i64 773), !dbg !7
  store ptr addrspace(1) %97, ptr %11
  br label %41
98:
  %99 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %92, i64 0, i32 0
  %100 = load ptr, ptr addrspace(1) %99, align 8
  %101 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = call ptr addrspace(1) %102(ptr addrspace(1) %90, i64 0)
  %104 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %90, ptr addrspace(1) %103), !dbg !15
  store ptr addrspace(1) %104, ptr %7
  %105 = load ptr addrspace(1), ptr %7
  %106 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %105, i64 72057594037927928)
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  %109 = load i64, ptr addrspace(1) %108, align 8
  %110 = icmp ult i64 1, %109
  br i1 %110, label %113, label %130
111:
  %112 = call ptr addrspace(1) @_bal_panic_construct(i64 1029), !dbg !7
  store ptr addrspace(1) %112, ptr %11
  br label %41
113:
  %114 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 0
  %115 = load ptr, ptr addrspace(1) %114, align 8
  %116 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %115, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8
  %118 = call i64 %117(ptr addrspace(1) %105, i64 1)
  store i64 %118, ptr %8
  %119 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 3
  %121 = load ptr addrspace(1), ptr addrspace(1) %120, align 8
  %122 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %123 = load i64, ptr %8
  %124 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %123), !dbg !17
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %122, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 1
  store i64 1, ptr addrspace(1) %126
  %127 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %128 = getelementptr i8, ptr addrspace(1) %127, i64 864691128455135236
  store ptr addrspace(1) %128, ptr %9
  %129 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %129), !dbg !18
  store ptr addrspace(1) null, ptr %10
  ret void
130:
  %131 = call ptr addrspace(1) @_bal_panic_construct(i64 1029), !dbg !7
  store ptr addrspace(1) %131, ptr %11
  br label %41
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-list/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 3, column: 15, scope: !5)
!11 = !DILocation(line: 3, column: 15, scope: !5)
!12 = !DILocation(line: 3, column: 4, scope: !5)
!13 = !DILocation(line: 4, column: 16, scope: !5)
!14 = !DILocation(line: 4, column: 15, scope: !5)
!15 = !DILocation(line: 4, column: 26, scope: !5)
!16 = !DILocation(line: 4, column: 15, scope: !5)
!17 = !DILocation(line: 4, column: 15, scope: !5)
!18 = !DILocation(line: 4, column: 4, scope: !5)
!19 = !DILocation(line: 5, column: 0, scope: !5)
