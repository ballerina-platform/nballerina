@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i6 = alloca i64
  %i5 = alloca i64
  %i3 = alloca i64
  %i2 = alloca i64
  %i1 = alloca i64
  %t = alloca i1
  %f = alloca i1
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i1
  %18 = alloca i1
  %19 = alloca i1
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i1
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %42, label %36
36:
  store i64 6, i64* %i6
  store i64 5, i64* %i5
  store i64 3, i64* %i3
  store i64 2, i64* %i2
  store i64 1, i64* %i1
  store i1 1, i1* %t
  store i1 0, i1* %f
  %37 = load i64, i64* %i6
  %38 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 12, i64 %37)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %49, label %44
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %43)
  unreachable
44:
  %45 = extractvalue {i64, i1} %38, 0
  store i64 %45, i64* %2
  %46 = load i64, i64* %i3
  %47 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %46, i64 15)
  %48 = extractvalue {i64, i1} %47, 1
  br i1 %48, label %60, label %51
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !9
  store i8 addrspace(1)* %50, i8 addrspace(1)** %32
  br label %40
51:
  %52 = extractvalue {i64, i1} %47, 0
  store i64 %52, i64* %3
  %53 = load i64, i64* %2
  %54 = load i64, i64* %3
  %55 = icmp eq i64 %53, %54
  store i1 %55, i1* %1
  %56 = load i1, i1* %1, !dbg !10
  call void @_B_printBoolean(i1 %56), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !10
  %57 = load i64, i64* %i5
  %58 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %57, i64 2)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %80, label %62
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !9
  store i8 addrspace(1)* %61, i8 addrspace(1)** %32
  br label %40
62:
  %63 = extractvalue {i64, i1} %58, 0
  store i64 %63, i64* %6
  %64 = load i64, i64* %i5
  %65 = load i64, i64* %6
  %66 = icmp ne i64 %64, %65
  store i1 %66, i1* %5
  %67 = load i1, i1* %5, !dbg !11
  call void @_B_printBoolean(i1 %67), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !11
  %68 = load i64, i64* %i5
  %69 = icmp slt i64 %68, 9
  store i1 %69, i1* %9
  %70 = load i64, i64* %i5
  %71 = icmp sgt i64 %70, 2
  store i1 %71, i1* %10
  %72 = load i1, i1* %9
  %73 = load i1, i1* %10
  %74 = icmp eq i1 %72, %73
  store i1 %74, i1* %8
  %75 = load i1, i1* %8, !dbg !12
  call void @_B_printBoolean(i1 %75), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !12
  %76 = load i64, i64* %i1
  %77 = load i64, i64* %i3
  %78 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %76, i64 %77)
  %79 = extractvalue {i64, i1} %78, 1
  br i1 %79, label %87, label %82
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !9
  store i8 addrspace(1)* %81, i8 addrspace(1)** %32
  br label %40
82:
  %83 = extractvalue {i64, i1} %78, 0
  store i64 %83, i64* %13
  %84 = load i64, i64* %i2
  %85 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %84, i64 4)
  %86 = extractvalue {i64, i1} %85, 1
  br i1 %86, label %101, label %89
87:
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !9
  store i8 addrspace(1)* %88, i8 addrspace(1)** %32
  br label %40
89:
  %90 = extractvalue {i64, i1} %85, 0
  store i64 %90, i64* %14
  %91 = load i64, i64* %13
  %92 = load i64, i64* %14
  %93 = icmp sle i64 %91, %92
  store i1 %93, i1* %12
  %94 = load i1, i1* %12, !dbg !13
  call void @_B_printBoolean(i1 %94), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %95 = load i64, i64* %i1
  %96 = load i64, i64* %i5
  %97 = icmp sge i64 %95, %96
  store i1 %97, i1* %18
  %98 = load i64, i64* %i2
  %99 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 1, i64 %98)
  %100 = extractvalue {i64, i1} %99, 1
  br i1 %100, label %118, label %103
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !9
  store i8 addrspace(1)* %102, i8 addrspace(1)** %32
  br label %40
103:
  %104 = extractvalue {i64, i1} %99, 0
  store i64 %104, i64* %20
  %105 = load i64, i64* %20
  %106 = load i64, i64* %i3
  %107 = icmp sge i64 %105, %106
  store i1 %107, i1* %19
  %108 = load i1, i1* %18
  %109 = load i1, i1* %19
  %110 = icmp eq i1 %108, %109
  store i1 %110, i1* %17
  %111 = load i1, i1* %17
  %112 = load i1, i1* %f
  %113 = icmp ne i1 %111, %112
  store i1 %113, i1* %16
  %114 = load i1, i1* %16, !dbg !14
  call void @_B_printBoolean(i1 %114), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !14
  %115 = load i64, i64* %i1
  %116 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 7, i64 %115)
  %117 = extractvalue {i64, i1} %116, 1
  br i1 %117, label %140, label %120
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !9
  store i8 addrspace(1)* %119, i8 addrspace(1)** %32
  br label %40
120:
  %121 = extractvalue {i64, i1} %116, 0
  store i64 %121, i64* %24
  %122 = load i64, i64* %24
  %123 = icmp eq i64 %122, 8
  store i1 %123, i1* %23
  %124 = load i1, i1* %23
  %125 = load i1, i1* %f
  %126 = icmp ne i1 %124, %125
  store i1 %126, i1* %22
  %127 = load i1, i1* %22, !dbg !15
  call void @_B_printBoolean(i1 %127), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !15
  %128 = load i1, i1* %t
  %129 = xor i1 1, %128
  store i1 %129, i1* %27
  %130 = load i1, i1* %27
  %131 = load i1, i1* %f
  %132 = icmp eq i1 %130, %131
  store i1 %132, i1* %26
  %133 = load i1, i1* %26, !dbg !16
  call void @_B_printBoolean(i1 %133), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !16
  %134 = load i1, i1* %t
  %135 = xor i1 1, %134
  store i1 %135, i1* %30
  %136 = load i1, i1* %f
  %137 = load i1, i1* %30
  %138 = icmp eq i1 %136, %137
  store i1 %138, i1* %29
  %139 = load i1, i1* %29, !dbg !17
  call void @_B_printBoolean(i1 %139), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !17
  ret void
140:
  %141 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !9
  store i8 addrspace(1)* %141, i8 addrspace(1)** %32
  br label %40
}
define internal void @_B_printBoolean(i1 %0) !dbg !7 {
  %x = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %x
  %8 = load i1, i1* %x
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !19
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !20
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/op2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 12, column: 2, scope: !5)
!11 = !DILocation(line: 13, column: 2, scope: !5)
!12 = !DILocation(line: 14, column: 2, scope: !5)
!13 = !DILocation(line: 15, column: 2, scope: !5)
!14 = !DILocation(line: 16, column: 2, scope: !5)
!15 = !DILocation(line: 17, column: 2, scope: !5)
!16 = !DILocation(line: 18, column: 2, scope: !5)
!17 = !DILocation(line: 19, column: 2, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 25, column: 4, scope: !7)
!20 = !DILocation(line: 27, column: 4, scope: !7)
