@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i6 = alloca i64
  %i5 = alloca i64
  %i3 = alloca i64
  %i2 = alloca i64
  %i1 = alloca i64
  %t = alloca i1
  %f = alloca i1
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca i64
  %18 = alloca i1
  %19 = alloca i1
  %20 = alloca i1
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca i1
  %24 = alloca i1
  %25 = alloca ptr addrspace(1)
  %26 = alloca i1
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca i1
  %30 = alloca i1
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i8
  %34 = load ptr, ptr @_bal_stack_guard
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %42, label %36
36:
  store i64 6, ptr %i6
  store i64 5, ptr %i5
  store i64 3, ptr %i3
  store i64 2, ptr %i2
  store i64 1, ptr %i1
  store i1 1, ptr %t
  store i1 0, ptr %f
  %37 = load i64, ptr %i6
  %38 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 12, i64 %37)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %49, label %44
40:
  %41 = load ptr addrspace(1), ptr %32
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !19
  unreachable
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !10
  unreachable
44:
  %45 = extractvalue {i64, i1} %38, 0
  store i64 %45, ptr %1
  %46 = load i64, ptr %i3
  %47 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %46, i64 15)
  %48 = extractvalue {i64, i1} %47, 1
  br i1 %48, label %60, label %51
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !9
  store ptr addrspace(1) %50, ptr %32
  br label %40
51:
  %52 = extractvalue {i64, i1} %47, 0
  store i64 %52, ptr %2
  %53 = load i64, ptr %1
  %54 = load i64, ptr %2
  %55 = icmp eq i64 %53, %54
  store i1 %55, ptr %3
  %56 = load i1, ptr %3
  call void @_B_printBoolean(i1 %56), !dbg !11
  store ptr addrspace(1) null, ptr %4
  %57 = load i64, ptr %i5
  %58 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %57, i64 2)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %80, label %62
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !9
  store ptr addrspace(1) %61, ptr %32
  br label %40
62:
  %63 = extractvalue {i64, i1} %58, 0
  store i64 %63, ptr %5
  %64 = load i64, ptr %i5
  %65 = load i64, ptr %5
  %66 = icmp ne i64 %64, %65
  store i1 %66, ptr %6
  %67 = load i1, ptr %6
  call void @_B_printBoolean(i1 %67), !dbg !12
  store ptr addrspace(1) null, ptr %7
  %68 = load i64, ptr %i5
  %69 = icmp slt i64 %68, 9
  store i1 %69, ptr %8
  %70 = load i64, ptr %i5
  %71 = icmp sgt i64 %70, 2
  store i1 %71, ptr %9
  %72 = load i1, ptr %8
  %73 = load i1, ptr %9
  %74 = icmp eq i1 %72, %73
  store i1 %74, ptr %10
  %75 = load i1, ptr %10
  call void @_B_printBoolean(i1 %75), !dbg !13
  store ptr addrspace(1) null, ptr %11
  %76 = load i64, ptr %i1
  %77 = load i64, ptr %i3
  %78 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %76, i64 %77)
  %79 = extractvalue {i64, i1} %78, 1
  br i1 %79, label %87, label %82
80:
  %81 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !9
  store ptr addrspace(1) %81, ptr %32
  br label %40
82:
  %83 = extractvalue {i64, i1} %78, 0
  store i64 %83, ptr %12
  %84 = load i64, ptr %i2
  %85 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %84, i64 4)
  %86 = extractvalue {i64, i1} %85, 1
  br i1 %86, label %101, label %89
87:
  %88 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !9
  store ptr addrspace(1) %88, ptr %32
  br label %40
89:
  %90 = extractvalue {i64, i1} %85, 0
  store i64 %90, ptr %13
  %91 = load i64, ptr %12
  %92 = load i64, ptr %13
  %93 = icmp sle i64 %91, %92
  store i1 %93, ptr %14
  %94 = load i1, ptr %14
  call void @_B_printBoolean(i1 %94), !dbg !14
  store ptr addrspace(1) null, ptr %15
  %95 = load i64, ptr %i1
  %96 = load i64, ptr %i5
  %97 = icmp sge i64 %95, %96
  store i1 %97, ptr %16
  %98 = load i64, ptr %i2
  %99 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 1, i64 %98)
  %100 = extractvalue {i64, i1} %99, 1
  br i1 %100, label %118, label %103
101:
  %102 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !9
  store ptr addrspace(1) %102, ptr %32
  br label %40
103:
  %104 = extractvalue {i64, i1} %99, 0
  store i64 %104, ptr %17
  %105 = load i64, ptr %17
  %106 = load i64, ptr %i3
  %107 = icmp sge i64 %105, %106
  store i1 %107, ptr %18
  %108 = load i1, ptr %16
  %109 = load i1, ptr %18
  %110 = icmp eq i1 %108, %109
  store i1 %110, ptr %19
  %111 = load i1, ptr %19
  %112 = load i1, ptr %f
  %113 = icmp ne i1 %111, %112
  store i1 %113, ptr %20
  %114 = load i1, ptr %20
  call void @_B_printBoolean(i1 %114), !dbg !15
  store ptr addrspace(1) null, ptr %21
  %115 = load i64, ptr %i1
  %116 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 7, i64 %115)
  %117 = extractvalue {i64, i1} %116, 1
  br i1 %117, label %140, label %120
118:
  %119 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !9
  store ptr addrspace(1) %119, ptr %32
  br label %40
120:
  %121 = extractvalue {i64, i1} %116, 0
  store i64 %121, ptr %22
  %122 = load i64, ptr %22
  %123 = icmp eq i64 %122, 8
  store i1 %123, ptr %23
  %124 = load i1, ptr %23
  %125 = load i1, ptr %f
  %126 = icmp ne i1 %124, %125
  store i1 %126, ptr %24
  %127 = load i1, ptr %24
  call void @_B_printBoolean(i1 %127), !dbg !16
  store ptr addrspace(1) null, ptr %25
  %128 = load i1, ptr %t
  %129 = xor i1 1, %128
  store i1 %129, ptr %26
  %130 = load i1, ptr %26
  %131 = load i1, ptr %f
  %132 = icmp eq i1 %130, %131
  store i1 %132, ptr %27
  %133 = load i1, ptr %27
  call void @_B_printBoolean(i1 %133), !dbg !17
  store ptr addrspace(1) null, ptr %28
  %134 = load i1, ptr %t
  %135 = xor i1 1, %134
  store i1 %135, ptr %29
  %136 = load i1, ptr %f
  %137 = load i1, ptr %29
  %138 = icmp eq i1 %136, %137
  store i1 %138, ptr %30
  %139 = load i1, ptr %30
  call void @_B_printBoolean(i1 %139), !dbg !18
  store ptr addrspace(1) null, ptr %31
  ret void
140:
  %141 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !9
  store ptr addrspace(1) %141, ptr %32
  br label %40
}
define internal void @_B_printBoolean(i1 %0) !dbg !7 {
  %x = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %38, label %9
9:
  store i1 %0, ptr %x
  %10 = load i1, ptr %x
  br i1 %10, label %11, label %24
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = and i64 72057594037927935, 1
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !25
  store ptr addrspace(1) null, ptr %3
  br label %37
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = and i64 72057594037927935, 0
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !23
  store ptr addrspace(1) null, ptr %5
  br label %37
37:
  ret void
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !20
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !21
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/op2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 12, column: 2, scope: !5)
!12 = !DILocation(line: 13, column: 2, scope: !5)
!13 = !DILocation(line: 14, column: 2, scope: !5)
!14 = !DILocation(line: 15, column: 2, scope: !5)
!15 = !DILocation(line: 16, column: 2, scope: !5)
!16 = !DILocation(line: 17, column: 2, scope: !5)
!17 = !DILocation(line: 18, column: 2, scope: !5)
!18 = !DILocation(line: 19, column: 2, scope: !5)
!19 = !DILocation(line: 20, column: 0, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 23, column: 9, scope: !7)
!22 = !DILocation(line: 27, column: 15, scope: !7)
!23 = !DILocation(line: 27, column: 4, scope: !7)
!24 = !DILocation(line: 25, column: 15, scope: !7)
!25 = !DILocation(line: 25, column: 4, scope: !7)
