@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_1(ptr, i64)
define void @_B04rootmain() !dbg !5 {
  %signs = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %bytes = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %32, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %1
  %20 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %20, ptr %signs
  %21 = load ptr addrspace(1), ptr %signs
  %22 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %21, i64 72057594037927928), !dbg !10
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 0
  %25 = load ptr, ptr addrspace(1) %24, align 8
  %26 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = call i64 %27(ptr addrspace(1) %21, i64 1, i64 1)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %41
30:
  %31 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !19
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !8
  unreachable
34:
  %35 = load ptr addrspace(1), ptr %signs
  %36 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %35, i64 72057594037927928)
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  %39 = load i64, ptr addrspace(1) %38, align 8
  %40 = icmp ult i64 0, %39
  br i1 %40, label %44, label %72
41:
  %42 = or i64 %28, 1792
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 %42), !dbg !7
  store ptr addrspace(1) %43, ptr %12
  br label %30
44:
  %45 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 0
  %46 = load ptr, ptr addrspace(1) %45, align 8
  %47 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 %48(ptr addrspace(1) %35, i64 0)
  store i64 %49, ptr %2
  %50 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 3
  %52 = load ptr addrspace(1), ptr addrspace(1) %51, align 8
  %53 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %54 = load i64, ptr %2
  %55 = and i64 72057594037927935, %54
  %56 = or i64 2449958197289549824, %55
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %53, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %3
  %62 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %63 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root2, i64 0), !dbg !13
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %5
  %66 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %66, ptr %bytes
  %67 = load ptr addrspace(1), ptr %bytes
  %68 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %67, i64 72057594037927928), !dbg !14
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %67, i64 4)
  %71 = icmp ne ptr addrspace(1) %70, null
  br i1 %71, label %74, label %78
72:
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %73, ptr %12
  br label %30
74:
  %75 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 1
  %76 = load i64, ptr addrspace(1) %75, align 8
  %77 = icmp ult i64 17, %76
  br i1 %77, label %92, label %78
78:
  %79 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 0
  %80 = load ptr, ptr addrspace(1) %79, align 8
  %81 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %80, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8
  %83 = call i64 %82(ptr addrspace(1) %67, i64 17, i64 42)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %98, label %99
85:
  %86 = load ptr addrspace(1), ptr %bytes
  %87 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %86, i64 72057594037927928)
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  %90 = load i64, ptr addrspace(1) %89, align 8
  %91 = icmp ult i64 17, %90
  br i1 %91, label %102, label %105
92:
  %93 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 3
  %94 = load ptr addrspace(1), ptr addrspace(1) %93, align 8
  %95 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %96 = trunc i64 42 to i8
  %97 = getelementptr inbounds [0 x i8], ptr addrspace(1) %95, i64 0, i64 17
  store i8 %96, ptr addrspace(1) %97
  br label %85
98:
  br label %85
99:
  %100 = or i64 %83, 2560
  %101 = call ptr addrspace(1) @_bal_panic_construct(i64 %100), !dbg !7
  store ptr addrspace(1) %101, ptr %12
  br label %30
102:
  %103 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %86, i64 4)
  %104 = icmp ne ptr addrspace(1) %103, null
  br i1 %104, label %107, label %114
105:
  %106 = call ptr addrspace(1) @_bal_panic_construct(i64 2821), !dbg !7
  store ptr addrspace(1) %106, ptr %12
  br label %30
107:
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = getelementptr inbounds [0 x i8], ptr addrspace(1) %110, i64 0, i64 17
  %112 = load i8, ptr addrspace(1) %111, align 8
  %113 = zext i8 %112 to i64
  store i64 %113, ptr %6
  br label %120
114:
  %115 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 0
  %116 = load ptr, ptr addrspace(1) %115, align 8
  %117 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %116, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8
  %119 = call i64 %118(ptr addrspace(1) %86, i64 17)
  store i64 %119, ptr %6
  br label %120
120:
  %121 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %123 = load ptr addrspace(1), ptr addrspace(1) %122, align 8
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = load i64, ptr %6
  %126 = and i64 72057594037927935, %125
  %127 = or i64 2449958197289549824, %126
  %128 = getelementptr i8, ptr addrspace(1) null, i64 %127
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 0
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  store i64 1, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %7
  %133 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %133), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %134 = load ptr addrspace(1), ptr %bytes
  %135 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %134, i64 72057594037927928)
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  %138 = load i64, ptr addrspace(1) %137, align 8
  %139 = icmp ult i64 16, %138
  br i1 %139, label %140, label %143
140:
  %141 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %134, i64 4)
  %142 = icmp ne ptr addrspace(1) %141, null
  br i1 %142, label %145, label %152
143:
  %144 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %144, ptr %12
  br label %30
145:
  %146 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %147 = load ptr addrspace(1), ptr addrspace(1) %146, align 8
  %148 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %149 = getelementptr inbounds [0 x i8], ptr addrspace(1) %148, i64 0, i64 16
  %150 = load i8, ptr addrspace(1) %149, align 8
  %151 = zext i8 %150 to i64
  store i64 %151, ptr %9
  br label %158
152:
  %153 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 0
  %154 = load ptr, ptr addrspace(1) %153, align 8
  %155 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %154, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8
  %157 = call i64 %156(ptr addrspace(1) %134, i64 16)
  store i64 %157, ptr %9
  br label %158
158:
  %159 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 3
  %161 = load ptr addrspace(1), ptr addrspace(1) %160, align 8
  %162 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %163 = load i64, ptr %9
  %164 = and i64 72057594037927935, %163
  %165 = or i64 2449958197289549824, %164
  %166 = getelementptr i8, ptr addrspace(1) null, i64 %165
  %167 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %162, i64 0, i64 0
  store ptr addrspace(1) %166, ptr addrspace(1) %167
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 1
  store i64 1, ptr addrspace(1) %168
  %169 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %170 = getelementptr i8, ptr addrspace(1) %169, i64 864691128455135236
  store ptr addrspace(1) %170, ptr %10
  %171 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %171), !dbg !18
  store ptr addrspace(1) null, ptr %11
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/fill1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 19, scope: !5)
!10 = !DILocation(line: 7, column: 9, scope: !5)
!11 = !DILocation(line: 8, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 9, column: 19, scope: !5)
!14 = !DILocation(line: 10, column: 9, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 15, scope: !5)
!18 = !DILocation(line: 12, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 0, scope: !5)
