@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i1
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %e = alloca double
  %f = alloca i8 addrspace(1)*
  %h = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca double
  %17 = alloca double
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca double
  %22 = alloca i1
  %23 = alloca double
  %24 = alloca double
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8
  %29 = load i8*, i8** @_bal_stack_guard
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %130, label %31
31:
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %a
  store i8 addrspace(1)* null, i8 addrspace(1)** %b
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 0
  store i1 %37, i1* %1
  %38 = load i1, i1* %1
  br i1 %38, label %48, label %39
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %41, i64* %2
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %43 = addrspacecast i8 addrspace(1)* %42 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 0
  store i1 %46, i1* %3
  %47 = load i1, i1* %3
  br i1 %47, label %48, label %49
48:
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %56
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %51 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %50)
  store i64 %51, i64* %4
  %52 = load i64, i64* %2
  %53 = load i64, i64* %4
  %54 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %52, i64 %53)
  %55 = extractvalue {i64, i1} %54, 1
  br i1 %55, label %136, label %132
56:
  %57 = call i8 addrspace(1)* @_B_c(), !dbg !12
  store i8 addrspace(1)* %57, i8 addrspace(1)** %7, !dbg !12
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %59 = addrspacecast i8 addrspace(1)* %58 to i8*
  %60 = ptrtoint i8* %59 to i64
  %61 = and i64 %60, 2233785415175766016
  %62 = icmp eq i64 %61, 0
  store i1 %62, i1* %8
  %63 = load i1, i1* %8
  br i1 %63, label %73, label %64
64:
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %66 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %65)
  store i64 %66, i64* %9
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 0
  store i1 %71, i1* %10
  %72 = load i1, i1* %10
  br i1 %72, label %73, label %74
73:
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %81
74:
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %76 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %75)
  store i64 %76, i64* %11
  %77 = load i64, i64* %9
  %78 = load i64, i64* %11
  %79 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %77, i64 %78)
  %80 = extractvalue {i64, i1} %79, 1
  br i1 %80, label %142, label %138
81:
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  store i8 addrspace(1)* %82, i8 addrspace(1)** %d
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %d, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %83), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !13
  store double 5.5, double* %e
  store i8 addrspace(1)* null, i8 addrspace(1)** %f
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %85 = addrspacecast i8 addrspace(1)* %84 to i8*
  %86 = ptrtoint i8* %85 to i64
  %87 = and i64 %86, 2233785415175766016
  %88 = icmp eq i64 %87, 0
  store i1 %88, i1* %15
  %89 = load i1, i1* %15
  br i1 %89, label %98, label %90
90:
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %92 = call double @_bal_tagged_to_float(i8 addrspace(1)* %91)
  store double %92, double* %16
  %93 = load double, double* %e
  %94 = load double, double* %16
  %95 = fadd double %93, %94
  store double %95, double* %17
  %96 = load double, double* %17
  %97 = call i8 addrspace(1)* @_bal_float_to_tagged(double %96)
  store i8 addrspace(1)* %97, i8 addrspace(1)** %18
  br label %99
98:
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %99
99:
  %100 = call i8 addrspace(1)* @_B_g(), !dbg !14
  store i8 addrspace(1)* %100, i8 addrspace(1)** %19, !dbg !14
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %102 = addrspacecast i8 addrspace(1)* %101 to i8*
  %103 = ptrtoint i8* %102 to i64
  %104 = and i64 %103, 2233785415175766016
  %105 = icmp eq i64 %104, 0
  store i1 %105, i1* %20
  %106 = load i1, i1* %20
  br i1 %106, label %116, label %107
107:
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %109 = call double @_bal_tagged_to_float(i8 addrspace(1)* %108)
  store double %109, double* %21
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %111 = addrspacecast i8 addrspace(1)* %110 to i8*
  %112 = ptrtoint i8* %111 to i64
  %113 = and i64 %112, 2233785415175766016
  %114 = icmp eq i64 %113, 0
  store i1 %114, i1* %22
  %115 = load i1, i1* %22
  br i1 %115, label %116, label %117
116:
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  br label %125
117:
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %119 = call double @_bal_tagged_to_float(i8 addrspace(1)* %118)
  store double %119, double* %23
  %120 = load double, double* %21
  %121 = load double, double* %23
  %122 = fadd double %120, %121
  store double %122, double* %24
  %123 = load double, double* %24
  %124 = call i8 addrspace(1)* @_bal_float_to_tagged(double %123)
  store i8 addrspace(1)* %124, i8 addrspace(1)** %25
  br label %125
125:
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  store i8 addrspace(1)* %126, i8 addrspace(1)** %h
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %h, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %127), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !15
  ret void
128:
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  call void @_bal_panic(i8 addrspace(1)* %129)
  unreachable
130:
  %131 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %131)
  unreachable
132:
  %133 = extractvalue {i64, i1} %54, 0
  store i64 %133, i64* %5
  %134 = load i64, i64* %5
  %135 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %134)
  store i8 addrspace(1)* %135, i8 addrspace(1)** %6
  br label %56
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !11
  store i8 addrspace(1)* %137, i8 addrspace(1)** %27
  br label %128
138:
  %139 = extractvalue {i64, i1} %79, 0
  store i64 %139, i64* %12
  %140 = load i64, i64* %12
  %141 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %140)
  store i8 addrspace(1)* %141, i8 addrspace(1)** %13
  br label %81
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !11
  store i8 addrspace(1)* %143, i8 addrspace(1)** %27
  br label %128
}
define internal i8 addrspace(1)* @_B_c() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091)), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !17
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  ret i8 addrspace(1)* %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i8 addrspace(1)* @_B_g() !dbg !9 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901095)), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !19
  %6 = call i8 addrspace(1)* @_bal_float_to_tagged(double 6.5)
  ret i8 addrspace(1)* %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"c", linkageName:"_B_c", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 21, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 23, scope: !5)
!15 = !DILocation(line: 11, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 15, column: 4, scope: !7)
!18 = !DILocation(line: 0, column: 0, scope: !9)
!19 = !DILocation(line: 20, column: 4, scope: !9)
