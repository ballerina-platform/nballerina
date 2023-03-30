@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_1(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %bytes = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %38, label %15
15:
  %16 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root0, i64 3), !dbg !9
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = trunc i64 0 to i8
  %21 = getelementptr inbounds [0 x i8], ptr addrspace(1) %19, i64 0, i64 0
  store i8 %20, ptr addrspace(1) %21
  %22 = trunc i64 255 to i8
  %23 = getelementptr inbounds [0 x i8], ptr addrspace(1) %19, i64 0, i64 1
  store i8 %22, ptr addrspace(1) %23
  %24 = trunc i64 17 to i8
  %25 = getelementptr inbounds [0 x i8], ptr addrspace(1) %19, i64 0, i64 2
  store i8 %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 3, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %1
  %29 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %29, ptr %bytes
  %30 = load ptr addrspace(1), ptr %bytes
  %31 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %30, i64 72057594037927928)
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  %34 = load i64, ptr addrspace(1) %33, align 8
  %35 = icmp ult i64 1, %34
  br i1 %35, label %40, label %43
36:
  %37 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !16
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !8
  unreachable
40:
  %41 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %30, i64 4)
  %42 = icmp ne ptr addrspace(1) %41, null
  br i1 %42, label %45, label %52
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %44, ptr %11
  br label %36
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i8], ptr addrspace(1) %48, i64 0, i64 1
  %50 = load i8, ptr addrspace(1) %49, align 8
  %51 = zext i8 %50 to i64
  store i64 %51, ptr %2
  br label %58
52:
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 0
  %54 = load ptr, ptr addrspace(1) %53, align 8
  %55 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = call i64 %56(ptr addrspace(1) %30, i64 1)
  store i64 %57, ptr %2
  br label %58
58:
  %59 = load i64, ptr %2
  store i64 %59, ptr %b
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load i64, ptr %b
  %65 = and i64 72057594037927935, %64
  %66 = or i64 2449958197289549824, %65
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %3
  %72 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !11
  store ptr addrspace(1) null, ptr %4
  %73 = load ptr addrspace(1), ptr %bytes
  %74 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %73, i64 72057594037927928)
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  %77 = load i64, ptr addrspace(1) %76, align 8
  %78 = icmp ult i64 2, %77
  br i1 %78, label %79, label %82
79:
  %80 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %73, i64 4)
  %81 = icmp ne ptr addrspace(1) %80, null
  br i1 %81, label %84, label %91
82:
  %83 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %83, ptr %11
  br label %36
84:
  %85 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = getelementptr inbounds [0 x i8], ptr addrspace(1) %87, i64 0, i64 2
  %89 = load i8, ptr addrspace(1) %88, align 8
  %90 = zext i8 %89 to i64
  store i64 %90, ptr %5
  br label %97
91:
  %92 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 0
  %93 = load ptr, ptr addrspace(1) %92, align 8
  %94 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %93, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8
  %96 = call i64 %95(ptr addrspace(1) %73, i64 2)
  store i64 %96, ptr %5
  br label %97
97:
  %98 = load i64, ptr %5
  store i64 %98, ptr %b
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i64, ptr %b
  %104 = and i64 72057594037927935, %103
  %105 = or i64 2449958197289549824, %104
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %6
  %111 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !13
  store ptr addrspace(1) null, ptr %7
  %112 = load ptr addrspace(1), ptr %bytes
  %113 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %112, i64 72057594037927928)
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  %116 = load i64, ptr addrspace(1) %115, align 8
  %117 = icmp ult i64 0, %116
  br i1 %117, label %118, label %121
118:
  %119 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %112, i64 4)
  %120 = icmp ne ptr addrspace(1) %119, null
  br i1 %120, label %123, label %130
121:
  %122 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %122, ptr %11
  br label %36
123:
  %124 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = getelementptr inbounds [0 x i8], ptr addrspace(1) %126, i64 0, i64 0
  %128 = load i8, ptr addrspace(1) %127, align 8
  %129 = zext i8 %128 to i64
  store i64 %129, ptr %8
  br label %136
130:
  %131 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 0
  %132 = load ptr, ptr addrspace(1) %131, align 8
  %133 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %132, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8
  %135 = call i64 %134(ptr addrspace(1) %112, i64 0)
  store i64 %135, ptr %8
  br label %136
136:
  %137 = load i64, ptr %8
  store i64 %137, ptr %b
  %138 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 3
  %140 = load ptr addrspace(1), ptr addrspace(1) %139, align 8
  %141 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %142 = load i64, ptr %b
  %143 = and i64 72057594037927935, %142
  %144 = or i64 2449958197289549824, %143
  %145 = getelementptr i8, ptr addrspace(1) null, i64 %144
  %146 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %141, i64 0, i64 0
  store ptr addrspace(1) %145, ptr addrspace(1) %146
  %147 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 1
  store i64 1, ptr addrspace(1) %147
  %148 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %149 = getelementptr i8, ptr addrspace(1) %148, i64 864691128455135236
  store ptr addrspace(1) %149, ptr %9
  %150 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %150), !dbg !15
  store ptr addrspace(1) null, ptr %10
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/bytearray1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 19, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 15, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 0, scope: !5)
