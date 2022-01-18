@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8
  %25 = load i8*, i8** @_bal_stack_guard
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %34, label %27
27:
  store double 0.0, double* %f
  %28 = load double, double* %f
  %29 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %28)
  %30 = extractvalue {i8 addrspace(1)*, i64} %29, 1
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %43, label %36
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i8 addrspace(1)*, i64} %29, 0
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store double 1.0, double* %f
  %39 = load double, double* %f
  %40 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %39)
  %41 = extractvalue {i8 addrspace(1)*, i64} %40, 1
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %46
43:
  %44 = or i64 %30, 1024
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 %44), !dbg !7
  store i8 addrspace(1)* %45, i8 addrspace(1)** %23
  br label %32
46:
  %47 = extractvalue {i8 addrspace(1)*, i64} %40, 0
  store i8 addrspace(1)* %47, i8 addrspace(1)** %3
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store double 1.0, double* %f
  %49 = load double, double* %f
  %50 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %49)
  %51 = extractvalue {i8 addrspace(1)*, i64} %50, 1
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %56
53:
  %54 = or i64 %41, 1536
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 %54), !dbg !7
  store i8 addrspace(1)* %55, i8 addrspace(1)** %23
  br label %32
56:
  %57 = extractvalue {i8 addrspace(1)*, i64} %50, 0
  store i8 addrspace(1)* %57, i8 addrspace(1)** %5
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store double 0x41D26580B4C00000, double* %f
  %59 = load double, double* %f
  %60 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %59)
  %61 = extractvalue {i8 addrspace(1)*, i64} %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %66
63:
  %64 = or i64 %51, 2048
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 %64), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %23
  br label %32
66:
  %67 = extractvalue {i8 addrspace(1)*, i64} %60, 0
  store i8 addrspace(1)* %67, i8 addrspace(1)** %7
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  store double 0x43118B54F22AEB00, double* %f
  %69 = load double, double* %f
  %70 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %69)
  %71 = extractvalue {i8 addrspace(1)*, i64} %70, 1
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %83, label %76
73:
  %74 = or i64 %61, 2560
  %75 = call i8 addrspace(1)* @_bal_panic_construct(i64 %74), !dbg !7
  store i8 addrspace(1)* %75, i8 addrspace(1)** %23
  br label %32
76:
  %77 = extractvalue {i8 addrspace(1)*, i64} %70, 0
  store i8 addrspace(1)* %77, i8 addrspace(1)** %9
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  store double 0x43118B54F22AEB00, double* %f
  %79 = load double, double* %f
  %80 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %79)
  %81 = extractvalue {i8 addrspace(1)*, i64} %80, 1
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %86
83:
  %84 = or i64 %71, 3072
  %85 = call i8 addrspace(1)* @_bal_panic_construct(i64 %84), !dbg !7
  store i8 addrspace(1)* %85, i8 addrspace(1)** %23
  br label %32
86:
  %87 = extractvalue {i8 addrspace(1)*, i64} %80, 0
  store i8 addrspace(1)* %87, i8 addrspace(1)** %11
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  store double 0x43118B54F22AEB04, double* %f
  %89 = load double, double* %f
  %90 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %89)
  %91 = extractvalue {i8 addrspace(1)*, i64} %90, 1
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %96
93:
  %94 = or i64 %81, 3584
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 %94), !dbg !7
  store i8 addrspace(1)* %95, i8 addrspace(1)** %23
  br label %32
96:
  %97 = extractvalue {i8 addrspace(1)*, i64} %90, 0
  store i8 addrspace(1)* %97, i8 addrspace(1)** %13
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %98), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  store double 0x7FEFFFFFFFFFFFFF, double* %f
  %99 = load double, double* %f
  %100 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %99)
  %101 = extractvalue {i8 addrspace(1)*, i64} %100, 1
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %113, label %106
103:
  %104 = or i64 %91, 4096
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 %104), !dbg !7
  store i8 addrspace(1)* %105, i8 addrspace(1)** %23
  br label %32
106:
  %107 = extractvalue {i8 addrspace(1)*, i64} %100, 0
  store i8 addrspace(1)* %107, i8 addrspace(1)** %15
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %108), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  store double 9.0E292, double* %f
  %109 = load double, double* %f
  %110 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %109)
  %111 = extractvalue {i8 addrspace(1)*, i64} %110, 1
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %123, label %116
113:
  %114 = or i64 %101, 4608
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 %114), !dbg !7
  store i8 addrspace(1)* %115, i8 addrspace(1)** %23
  br label %32
116:
  %117 = extractvalue {i8 addrspace(1)*, i64} %110, 0
  store i8 addrspace(1)* %117, i8 addrspace(1)** %17
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %118), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  store double 1.0E-34, double* %f
  %119 = load double, double* %f
  %120 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %119)
  %121 = extractvalue {i8 addrspace(1)*, i64} %120, 1
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %133, label %126
123:
  %124 = or i64 %111, 5120
  %125 = call i8 addrspace(1)* @_bal_panic_construct(i64 %124), !dbg !7
  store i8 addrspace(1)* %125, i8 addrspace(1)** %23
  br label %32
126:
  %127 = extractvalue {i8 addrspace(1)*, i64} %120, 0
  store i8 addrspace(1)* %127, i8 addrspace(1)** %19
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %128), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  store double 0x1, double* %f
  %129 = load double, double* %f
  %130 = call {i8 addrspace(1)*, i64} @_bal_decimal_from_float(double %129)
  %131 = extractvalue {i8 addrspace(1)*, i64} %130, 1
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %136
133:
  %134 = or i64 %121, 5632
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 %134), !dbg !7
  store i8 addrspace(1)* %135, i8 addrspace(1)** %23
  br label %32
136:
  %137 = extractvalue {i8 addrspace(1)*, i64} %130, 0
  store i8 addrspace(1)* %137, i8 addrspace(1)** %21
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %138), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  ret void
139:
  %140 = or i64 %131, 6144
  %141 = call i8 addrspace(1)* @_bal_panic_construct(i64 %140), !dbg !7
  store i8 addrspace(1)* %141, i8 addrspace(1)** %23
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromfloat4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 14, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
!15 = !DILocation(line: 18, column: 4, scope: !5)
!16 = !DILocation(line: 20, column: 4, scope: !5)
!17 = !DILocation(line: 22, column: 4, scope: !5)
!18 = !DILocation(line: 24, column: 4, scope: !5)
