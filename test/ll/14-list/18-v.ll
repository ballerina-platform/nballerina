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
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %58, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 10), !dbg !9
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 0
  store i64 1, ptr addrspace(1) %21
  %22 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 1
  store i64 2, ptr addrspace(1) %22
  %23 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 2
  store i64 3, ptr addrspace(1) %23
  %24 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 3
  store i64 4, ptr addrspace(1) %24
  %25 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 4
  store i64 5, ptr addrspace(1) %25
  %26 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 5
  store i64 6, ptr addrspace(1) %26
  %27 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 6
  store i64 7, ptr addrspace(1) %27
  %28 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 7
  store i64 8, ptr addrspace(1) %28
  %29 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 8
  store i64 9, ptr addrspace(1) %29
  %30 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 9
  store i64 10, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 10, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %1
  %34 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %34, ptr %a
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = and i64 72057594037927935, 0
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = and i64 72057594037927935, 1
  %44 = or i64 2449958197289549824, %43
  %45 = getelementptr i8, ptr addrspace(1) null, i64 %44
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 1
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 2, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %2
  %50 = load ptr addrspace(1), ptr %2
  %51 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 72057594037927928)
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  %54 = load i64, ptr addrspace(1) %53, align 8
  %55 = icmp ult i64 0, %54
  br i1 %55, label %60, label %73
56:
  %57 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %57), !dbg !22
  unreachable
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %59), !dbg !8
  unreachable
60:
  %61 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 0
  %62 = load ptr, ptr addrspace(1) %61, align 8
  %63 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8
  %65 = call i64 %64(ptr addrspace(1) %50, i64 0)
  store i64 %65, ptr %3
  %66 = load ptr addrspace(1), ptr %a
  %67 = load i64, ptr %3
  %68 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %66, i64 72057594037927928)
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 1
  %71 = load i64, ptr addrspace(1) %70, align 8
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %75, label %78
73:
  %74 = call ptr addrspace(1) @_bal_panic_construct(i64 1029), !dbg !7
  store ptr addrspace(1) %74, ptr %12
  br label %56
75:
  %76 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %66, i64 4)
  %77 = icmp ne ptr addrspace(1) %76, null
  br i1 %77, label %80, label %86
78:
  %79 = call ptr addrspace(1) @_bal_panic_construct(i64 1029), !dbg !7
  store ptr addrspace(1) %79, ptr %12
  br label %56
80:
  %81 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = getelementptr inbounds [0 x i64], ptr addrspace(1) %83, i64 0, i64 %67
  %85 = load i64, ptr addrspace(1) %84, align 8
  store i64 %85, ptr %4
  br label %92
86:
  %87 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 0
  %88 = load ptr, ptr addrspace(1) %87, align 8
  %89 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %88, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8
  %91 = call i64 %90(ptr addrspace(1) %66, i64 %67)
  store i64 %91, ptr %4
  br label %92
92:
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !11
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i64, ptr %4
  %98 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %97), !dbg !12
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %5
  %103 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !13
  store ptr addrspace(1) null, ptr %6
  %104 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 2), !dbg !14
  %105 = and i64 72057594037927935, 1
  %106 = or i64 2449958197289549824, %105
  %107 = getelementptr i8, ptr addrspace(1) null, i64 %106
  call void @_bal_mapping_init_member(ptr addrspace(1) %104, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %107), !dbg !15
  %108 = and i64 72057594037927935, 2
  %109 = or i64 2449958197289549824, %108
  %110 = getelementptr i8, ptr addrspace(1) null, i64 %109
  call void @_bal_mapping_init_member(ptr addrspace(1) %104, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %110), !dbg !16
  store ptr addrspace(1) %104, ptr %7
  %111 = load ptr addrspace(1), ptr %7
  %112 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %111, i64 0), !dbg !17
  %113 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %112), !dbg !18
  store i64 %113, ptr %8
  %114 = load ptr addrspace(1), ptr %a
  %115 = load i64, ptr %8
  %116 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %114, i64 72057594037927928)
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 1
  %119 = load i64, ptr addrspace(1) %118, align 8
  %120 = icmp ult i64 %115, %119
  br i1 %120, label %121, label %124
121:
  %122 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %114, i64 4)
  %123 = icmp ne ptr addrspace(1) %122, null
  br i1 %123, label %126, label %132
124:
  %125 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %125, ptr %12
  br label %56
126:
  %127 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = getelementptr inbounds [0 x i64], ptr addrspace(1) %129, i64 0, i64 %115
  %131 = load i64, ptr addrspace(1) %130, align 8
  store i64 %131, ptr %9
  br label %138
132:
  %133 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 0
  %134 = load ptr, ptr addrspace(1) %133, align 8
  %135 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %134, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8
  %137 = call i64 %136(ptr addrspace(1) %114, i64 %115)
  store i64 %137, ptr %9
  br label %138
138:
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i64, ptr %9
  %144 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %143), !dbg !20
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %10
  %149 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !21
  store ptr addrspace(1) null, ptr %11
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-list/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 14, scope: !5)
!10 = !DILocation(line: 4, column: 17, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 5, column: 17, scope: !5)
!15 = !DILocation(line: 5, column: 17, scope: !5)
!16 = !DILocation(line: 5, column: 17, scope: !5)
!17 = !DILocation(line: 5, column: 29, scope: !5)
!18 = !DILocation(line: 5, column: 29, scope: !5)
!19 = !DILocation(line: 5, column: 15, scope: !5)
!20 = !DILocation(line: 5, column: 15, scope: !5)
!21 = !DILocation(line: 5, column: 4, scope: !5)
!22 = !DILocation(line: 6, column: 0, scope: !5)
