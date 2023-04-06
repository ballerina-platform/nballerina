@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %sum = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %77, label %17
17:
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %v
  store i64 0, ptr %i
  br label %22
22:
  %23 = load i64, ptr %i
  %24 = icmp slt i64 %23, 1000000
  store i1 %24, ptr %2
  %25 = load i1, ptr %2
  br i1 %25, label %26, label %37
26:
  %27 = load ptr addrspace(1), ptr %v
  %28 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %27, i64 72057594037927928), !dbg !19
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %i
  %31 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 0
  %32 = load ptr, ptr addrspace(1) %31, align 8
  %33 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8
  %35 = call i64 %34(ptr addrspace(1) %27, i64 %30, i64 1)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %125, label %129
37:
  %38 = load ptr addrspace(1), ptr %v
  %39 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %38, i64 72057594037927928), !dbg !10
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 0
  %42 = load ptr, ptr addrspace(1) %41, align 8
  %43 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = call i64 %44(ptr addrspace(1) %38, i64 123000, i64 1001)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %79, label %80
47:
  %48 = load ptr addrspace(1), ptr %v
  %49 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %48), !dbg !11
  %50 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %49), !dbg !12
  store i64 %50, ptr %4
  %51 = load i64, ptr %i
  %52 = load i64, ptr %4
  %53 = icmp slt i64 %51, %52
  store i1 %53, ptr %5
  %54 = load i1, ptr %5
  br i1 %54, label %55, label %63
55:
  %56 = load ptr addrspace(1), ptr %v
  %57 = load i64, ptr %i
  %58 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %56, i64 72057594037927928)
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  %61 = load i64, ptr addrspace(1) %60, align 8
  %62 = icmp ult i64 %57, %61
  br i1 %62, label %83, label %93
63:
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load i64, ptr %sum
  %69 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %68), !dbg !14
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %11
  %74 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !15
  store ptr addrspace(1) null, ptr %12
  ret void
75:
  %76 = load ptr addrspace(1), ptr %13
  call void @_bal_panic(ptr addrspace(1) %76), !dbg !20
  unreachable
77:
  %78 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %78), !dbg !8
  unreachable
79:
  store i64 0, ptr %i
  store i64 0, ptr %sum
  br label %47
80:
  %81 = or i64 %45, 2816
  %82 = call ptr addrspace(1) @_bal_panic_construct(i64 %81), !dbg !7
  store ptr addrspace(1) %82, ptr %13
  br label %75
83:
  %84 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 0
  %85 = load ptr, ptr addrspace(1) %84, align 8
  %86 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = call ptr addrspace(1) %87(ptr addrspace(1) %56, i64 %57)
  %89 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %56, ptr addrspace(1) %88), !dbg !16
  store ptr addrspace(1) %89, ptr %6
  %90 = load ptr addrspace(1), ptr %6
  %91 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %90), !dbg !17
  %92 = extractvalue {ptr addrspace(1), i1} %91, 1
  br i1 %92, label %102, label %95
93:
  %94 = call ptr addrspace(1) @_bal_panic_construct(i64 3845), !dbg !7
  store ptr addrspace(1) %94, ptr %13
  br label %75
95:
  %96 = extractvalue {ptr addrspace(1), i1} %91, 0
  store ptr addrspace(1) %96, ptr %7
  %97 = load ptr addrspace(1), ptr %7
  %98 = addrspacecast ptr addrspace(1) %97 to ptr
  %99 = ptrtoint ptr %98 to i64
  %100 = and i64 %99, 2233785415175766016
  %101 = icmp eq i64 %100, 144115188075855872
  br i1 %101, label %104, label %110
102:
  %103 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !7
  store ptr addrspace(1) %103, ptr %13
  br label %75
104:
  %105 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %97), !dbg !18
  store i64 %105, ptr %8
  %106 = load i64, ptr %sum
  %107 = load i64, ptr %8
  %108 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %106, i64 %107)
  %109 = extractvalue {i64, i1} %108, 1
  br i1 %109, label %118, label %112
110:
  %111 = call ptr addrspace(1) @_bal_panic_construct(i64 3843), !dbg !7
  store ptr addrspace(1) %111, ptr %13
  br label %75
112:
  %113 = extractvalue {i64, i1} %108, 0
  store i64 %113, ptr %9
  %114 = load i64, ptr %9
  store i64 %114, ptr %sum
  %115 = load i64, ptr %i
  %116 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %115, i64 1)
  %117 = extractvalue {i64, i1} %116, 1
  br i1 %117, label %123, label %120
118:
  %119 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !7
  store ptr addrspace(1) %119, ptr %13
  br label %75
120:
  %121 = extractvalue {i64, i1} %116, 0
  store i64 %121, ptr %10
  %122 = load i64, ptr %10
  store i64 %122, ptr %i
  br label %47
123:
  %124 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !7
  store ptr addrspace(1) %124, ptr %13
  br label %75
125:
  %126 = load i64, ptr %i
  %127 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %126, i64 1)
  %128 = extractvalue {i64, i1} %127, 1
  br i1 %128, label %135, label %132
129:
  %130 = or i64 %35, 2048
  %131 = call ptr addrspace(1) @_bal_panic_construct(i64 %130), !dbg !7
  store ptr addrspace(1) %131, ptr %13
  br label %75
132:
  %133 = extractvalue {i64, i1} %127, 0
  store i64 %133, ptr %3
  %134 = load i64, ptr %3
  store i64 %134, ptr %i
  br label %22
135:
  %136 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %136, ptr %13
  br label %75
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 14, scope: !5)
!10 = !DILocation(line: 11, column: 5, scope: !5)
!11 = !DILocation(line: 14, column: 16, scope: !5)
!12 = !DILocation(line: 14, column: 16, scope: !5)
!13 = !DILocation(line: 18, column: 15, scope: !5)
!14 = !DILocation(line: 18, column: 15, scope: !5)
!15 = !DILocation(line: 18, column: 4, scope: !5)
!16 = !DILocation(line: 15, column: 26, scope: !5)
!17 = !DILocation(line: 15, column: 20, scope: !5)
!18 = !DILocation(line: 15, column: 20, scope: !5)
!19 = !DILocation(line: 8, column: 9, scope: !5)
!20 = !DILocation(line: 19, column: 0, scope: !5)
