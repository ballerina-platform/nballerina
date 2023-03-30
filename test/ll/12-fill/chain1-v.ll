@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %41, label %14
14:
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr inbounds [0 x i64], ptr addrspace(1) %18, i64 0, i64 0
  store i64 17, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %1
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load ptr addrspace(1), ptr %1
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %2
  %32 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %32, ptr %v
  %33 = load ptr addrspace(1), ptr %v
  %34 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 72057594037927928)
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  %37 = load i64, ptr addrspace(1) %36, align 8
  %38 = icmp ult i64 0, %37
  br i1 %38, label %43, label %56
39:
  %40 = load ptr addrspace(1), ptr %10
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !17
  unreachable
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !8
  unreachable
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 0
  %45 = load ptr, ptr addrspace(1) %44, align 8
  %46 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr addrspace(1) %47(ptr addrspace(1) %33, i64 0)
  %49 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %33, ptr addrspace(1) %48), !dbg !11
  store ptr addrspace(1) %49, ptr %3
  %50 = load ptr addrspace(1), ptr %3
  %51 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 72057594037927928)
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  %54 = load i64, ptr addrspace(1) %53, align 8
  %55 = icmp ult i64 0, %54
  br i1 %55, label %58, label %61
56:
  %57 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %57, ptr %10
  br label %39
58:
  %59 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 4)
  %60 = icmp ne ptr addrspace(1) %59, null
  br i1 %60, label %63, label %69
61:
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %62, ptr %10
  br label %39
63:
  %64 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = getelementptr inbounds [0 x i64], ptr addrspace(1) %66, i64 0, i64 0
  %68 = load i64, ptr addrspace(1) %67, align 8
  store i64 %68, ptr %4
  br label %75
69:
  %70 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 0
  %71 = load ptr, ptr addrspace(1) %70, align 8
  %72 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8
  %74 = call i64 %73(ptr addrspace(1) %50, i64 0)
  store i64 %74, ptr %4
  br label %75
75:
  %76 = load i64, ptr %4
  %77 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %76, i64 3)
  %78 = extractvalue {i64, i1} %77, 1
  br i1 %78, label %87, label %79
79:
  %80 = extractvalue {i64, i1} %77, 0
  store i64 %80, ptr %5
  %81 = load ptr addrspace(1), ptr %3
  %82 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %81, i64 72057594037927928), !dbg !12
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i64, ptr %5
  %85 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %81, i64 4)
  %86 = icmp ne ptr addrspace(1) %85, null
  br i1 %86, label %89, label %93
87:
  %88 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !7
  store ptr addrspace(1) %88, ptr %10
  br label %39
89:
  %90 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  %91 = load i64, ptr addrspace(1) %90, align 8
  %92 = icmp ult i64 0, %91
  br i1 %92, label %107, label %93
93:
  %94 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 0
  %95 = load ptr, ptr addrspace(1) %94, align 8
  %96 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %95, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8
  %98 = call i64 %97(ptr addrspace(1) %81, i64 0, i64 %84)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %112, label %113
100:
  %101 = load ptr addrspace(1), ptr %v
  %102 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %101, i64 72057594037927928)
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  %105 = load i64, ptr addrspace(1) %104, align 8
  %106 = icmp ult i64 0, %105
  br i1 %106, label %116, label %129
107:
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = getelementptr inbounds [0 x i64], ptr addrspace(1) %110, i64 0, i64 0
  store i64 %84, ptr addrspace(1) %111
  br label %100
112:
  br label %100
113:
  %114 = or i64 %98, 1280
  %115 = call ptr addrspace(1) @_bal_panic_construct(i64 %114), !dbg !7
  store ptr addrspace(1) %115, ptr %10
  br label %39
116:
  %117 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 0
  %118 = load ptr, ptr addrspace(1) %117, align 8
  %119 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8
  %121 = call ptr addrspace(1) %120(ptr addrspace(1) %101, i64 0)
  %122 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %101, ptr addrspace(1) %121), !dbg !13
  store ptr addrspace(1) %122, ptr %6
  %123 = load ptr addrspace(1), ptr %6
  %124 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %123, i64 72057594037927928)
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  %127 = load i64, ptr addrspace(1) %126, align 8
  %128 = icmp ult i64 0, %127
  br i1 %128, label %131, label %134
129:
  %130 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %130, ptr %10
  br label %39
131:
  %132 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %123, i64 4)
  %133 = icmp ne ptr addrspace(1) %132, null
  br i1 %133, label %136, label %142
134:
  %135 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %135, ptr %10
  br label %39
136:
  %137 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = getelementptr inbounds [0 x i64], ptr addrspace(1) %139, i64 0, i64 0
  %141 = load i64, ptr addrspace(1) %140, align 8
  store i64 %141, ptr %7
  br label %148
142:
  %143 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 0
  %144 = load ptr, ptr addrspace(1) %143, align 8
  %145 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %144, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8
  %147 = call i64 %146(ptr addrspace(1) %123, i64 0)
  store i64 %147, ptr %7
  br label %148
148:
  %149 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !14
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 3
  %151 = load ptr addrspace(1), ptr addrspace(1) %150, align 8
  %152 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %153 = load i64, ptr %7
  %154 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %153), !dbg !15
  %155 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %152, i64 0, i64 0
  store ptr addrspace(1) %154, ptr addrspace(1) %155
  %156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 1
  store i64 1, ptr addrspace(1) %156
  %157 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %158 = getelementptr i8, ptr addrspace(1) %157, i64 864691128455135236
  store ptr addrspace(1) %158, ptr %8
  %159 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %159), !dbg !16
  store ptr addrspace(1) null, ptr %9
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/chain1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 17, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 5, scope: !5)
!12 = !DILocation(line: 5, column: 8, scope: !5)
!13 = !DILocation(line: 6, column: 16, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 0, scope: !5)
