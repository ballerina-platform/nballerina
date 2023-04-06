@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %30, label %19
19:
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %v
  %24 = load ptr addrspace(1), ptr %v
  %25 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %24, i64 3), !dbg !10
  %26 = extractvalue {ptr addrspace(1), i64} %25, 1
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %32
28:
  %29 = load ptr addrspace(1), ptr %15
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !29
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = extractvalue {ptr addrspace(1), i64} %25, 0
  %34 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %24, ptr addrspace(1) %33), !dbg !11
  store ptr addrspace(1) %34, ptr %2
  %35 = load ptr addrspace(1), ptr %2
  %36 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %35, i64 72057594037927928), !dbg !12
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %35, i64 4)
  %39 = icmp ne ptr addrspace(1) %38, null
  br i1 %39, label %43, label %47
40:
  %41 = or i64 %26, 1280
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 %41), !dbg !7
  store ptr addrspace(1) %42, ptr %15
  br label %28
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  %45 = load i64, ptr addrspace(1) %44, align 8
  %46 = icmp ult i64 7, %45
  br i1 %46, label %61, label %47
47:
  %48 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 0
  %49 = load ptr, ptr addrspace(1) %48, align 8
  %50 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8
  %52 = call i64 %51(ptr addrspace(1) %35, i64 7, i64 42)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %66, label %67
54:
  %55 = load ptr addrspace(1), ptr %v
  %56 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %55, i64 72057594037927928)
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  %59 = load i64, ptr addrspace(1) %58, align 8
  %60 = icmp ult i64 3, %59
  br i1 %60, label %70, label %83
61:
  %62 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = getelementptr inbounds [0 x i64], ptr addrspace(1) %64, i64 0, i64 7
  store i64 42, ptr addrspace(1) %65
  br label %54
66:
  br label %54
67:
  %68 = or i64 %52, 1280
  %69 = call ptr addrspace(1) @_bal_panic_construct(i64 %68), !dbg !7
  store ptr addrspace(1) %69, ptr %15
  br label %28
70:
  %71 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 0
  %72 = load ptr, ptr addrspace(1) %71, align 8
  %73 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = call ptr addrspace(1) %74(ptr addrspace(1) %55, i64 3)
  %76 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %55, ptr addrspace(1) %75), !dbg !13
  store ptr addrspace(1) %76, ptr %3
  %77 = load ptr addrspace(1), ptr %3
  %78 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %77, i64 72057594037927928)
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  %81 = load i64, ptr addrspace(1) %80, align 8
  %82 = icmp ult i64 7, %81
  br i1 %82, label %85, label %88
83:
  %84 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %84, ptr %15
  br label %28
85:
  %86 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %77, i64 4)
  %87 = icmp ne ptr addrspace(1) %86, null
  br i1 %87, label %90, label %96
88:
  %89 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %89, ptr %15
  br label %28
90:
  %91 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %92 = load ptr addrspace(1), ptr addrspace(1) %91, align 8
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = getelementptr inbounds [0 x i64], ptr addrspace(1) %93, i64 0, i64 7
  %95 = load i64, ptr addrspace(1) %94, align 8
  store i64 %95, ptr %4
  br label %102
96:
  %97 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 0
  %98 = load ptr, ptr addrspace(1) %97, align 8
  %99 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %98, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = call i64 %100(ptr addrspace(1) %77, i64 7)
  store i64 %101, ptr %4
  br label %102
102:
  %103 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 3
  %105 = load ptr addrspace(1), ptr addrspace(1) %104, align 8
  %106 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %107 = load i64, ptr %4
  %108 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %107), !dbg !15
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %106, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %5
  %113 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %114 = load ptr addrspace(1), ptr %v
  %115 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %114, i64 72057594037927928)
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  %118 = load i64, ptr addrspace(1) %117, align 8
  %119 = icmp ult i64 3, %118
  br i1 %119, label %120, label %147
120:
  %121 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 0
  %122 = load ptr, ptr addrspace(1) %121, align 8
  %123 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = call ptr addrspace(1) %124(ptr addrspace(1) %114, i64 3)
  %126 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %114, ptr addrspace(1) %125), !dbg !17
  store ptr addrspace(1) %126, ptr %7
  %127 = load ptr addrspace(1), ptr %7
  %128 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %127), !dbg !18
  %129 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %128), !dbg !19
  store i64 %129, ptr %8
  %130 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 3
  %132 = load ptr addrspace(1), ptr addrspace(1) %131, align 8
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = load i64, ptr %8
  %135 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %134), !dbg !21
  %136 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %133, i64 0, i64 0
  store ptr addrspace(1) %135, ptr addrspace(1) %136
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 1
  store i64 1, ptr addrspace(1) %137
  %138 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %139 = getelementptr i8, ptr addrspace(1) %138, i64 864691128455135236
  store ptr addrspace(1) %139, ptr %9
  %140 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %140), !dbg !22
  store ptr addrspace(1) null, ptr %10
  %141 = load ptr addrspace(1), ptr %v
  %142 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %141, i64 72057594037927928)
  %143 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %144 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  %145 = load i64, ptr addrspace(1) %144, align 8
  %146 = icmp ult i64 2, %145
  br i1 %146, label %149, label %170
147:
  %148 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %148, ptr %15
  br label %28
149:
  %150 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 0
  %151 = load ptr, ptr addrspace(1) %150, align 8
  %152 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8
  %154 = call ptr addrspace(1) %153(ptr addrspace(1) %141, i64 2)
  %155 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %141, ptr addrspace(1) %154), !dbg !23
  store ptr addrspace(1) %155, ptr %11
  %156 = load ptr addrspace(1), ptr %11
  %157 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %156), !dbg !24
  %158 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %157), !dbg !25
  store i64 %158, ptr %12
  %159 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 3
  %161 = load ptr addrspace(1), ptr addrspace(1) %160, align 8
  %162 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %163 = load i64, ptr %12
  %164 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %163), !dbg !27
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %162, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %13
  %169 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %169), !dbg !28
  store ptr addrspace(1) null, ptr %14
  ret void
170:
  %171 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %171, ptr %15
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/fill1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 16, scope: !5)
!10 = !DILocation(line: 5, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 5, scope: !5)
!12 = !DILocation(line: 5, column: 8, scope: !5)
!13 = !DILocation(line: 6, column: 16, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 16, scope: !5)
!18 = !DILocation(line: 7, column: 20, scope: !5)
!19 = !DILocation(line: 7, column: 20, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 8, column: 16, scope: !5)
!24 = !DILocation(line: 8, column: 20, scope: !5)
!25 = !DILocation(line: 8, column: 20, scope: !5)
!26 = !DILocation(line: 8, column: 15, scope: !5)
!27 = !DILocation(line: 8, column: 15, scope: !5)
!28 = !DILocation(line: 8, column: 4, scope: !5)
!29 = !DILocation(line: 9, column: 0, scope: !5)
