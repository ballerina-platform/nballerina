@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec2 = internal unnamed_addr constant [5 x i8] c"1000\00", align 8
@.dec3 = internal unnamed_addr constant [3 x i8] c"-1\00", align 8
@.dec4 = internal unnamed_addr constant [35 x i8] c"1234567890123456789012345678901234\00", align 8
@.dec5 = internal unnamed_addr constant [35 x i8] c"1234567890123456789012345678901231\00", align 8
@.dec6 = internal unnamed_addr constant [36 x i8] c"-1234567890123456789012345678901231\00", align 8
@.dec7 = internal unnamed_addr constant [36 x i8] c"-1234567890123456789012345678901234\00", align 8
@.dec8 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999998E+6144\00", align 8
@.dec9 = internal unnamed_addr constant [9 x i8] c"-1E+6111\00", align 8
@.dec10 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999998E+6144\00", align 8
@.dec11 = internal unnamed_addr constant [8 x i8] c"1E+6111\00", align 8
@.dec12 = internal unnamed_addr constant [8 x i8] c"2E-6143\00", align 8
@.dec13 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %d2 = alloca i8 addrspace(1)*
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
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %35, label %25
25:
  %26 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %26, i8 addrspace(1)** %d1
  %27 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %27, i8 addrspace(1)** %d2
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %30 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  %31 = extractvalue {i8 addrspace(1)*, i64} %30, 1
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %47, label %37
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = extractvalue {i8 addrspace(1)*, i64} %30, 0
  store i8 addrspace(1)* %38, i8 addrspace(1)** %1
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %40 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %40, i8 addrspace(1)** %d1
  %41 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %41, i8 addrspace(1)** %d2
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %44 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %42, i8 addrspace(1)* %43)
  %45 = extractvalue {i8 addrspace(1)*, i64} %44, 1
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %60, label %50
47:
  %48 = or i64 %31, 1280
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 %48), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %21
  br label %33
50:
  %51 = extractvalue {i8 addrspace(1)*, i64} %44, 0
  store i8 addrspace(1)* %51, i8 addrspace(1)** %3
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %52), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %53 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %53, i8 addrspace(1)** %d1
  %54 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %54, i8 addrspace(1)** %d2
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %57 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %55, i8 addrspace(1)* %56)
  %58 = extractvalue {i8 addrspace(1)*, i64} %57, 1
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %73, label %63
60:
  %61 = or i64 %45, 2304
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 %61), !dbg !7
  store i8 addrspace(1)* %62, i8 addrspace(1)** %21
  br label %33
63:
  %64 = extractvalue {i8 addrspace(1)*, i64} %57, 0
  store i8 addrspace(1)* %64, i8 addrspace(1)** %5
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %66 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %66, i8 addrspace(1)** %d1
  %67 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %67, i8 addrspace(1)** %d2
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %70 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %68, i8 addrspace(1)* %69)
  %71 = extractvalue {i8 addrspace(1)*, i64} %70, 1
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %86, label %76
73:
  %74 = or i64 %58, 3328
  %75 = call i8 addrspace(1)* @_bal_panic_construct(i64 %74), !dbg !7
  store i8 addrspace(1)* %75, i8 addrspace(1)** %21
  br label %33
76:
  %77 = extractvalue {i8 addrspace(1)*, i64} %70, 0
  store i8 addrspace(1)* %77, i8 addrspace(1)** %7
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %79 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %79, i8 addrspace(1)** %d1
  %80 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %80, i8 addrspace(1)** %d2
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %83 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %81, i8 addrspace(1)* %82)
  %84 = extractvalue {i8 addrspace(1)*, i64} %83, 1
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %99, label %89
86:
  %87 = or i64 %71, 4352
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 %87), !dbg !7
  store i8 addrspace(1)* %88, i8 addrspace(1)** %21
  br label %33
89:
  %90 = extractvalue {i8 addrspace(1)*, i64} %83, 0
  store i8 addrspace(1)* %90, i8 addrspace(1)** %9
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %92 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %92, i8 addrspace(1)** %d1
  %93 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([36 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %93, i8 addrspace(1)** %d2
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %96 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %94, i8 addrspace(1)* %95)
  %97 = extractvalue {i8 addrspace(1)*, i64} %96, 1
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %112, label %102
99:
  %100 = or i64 %84, 5376
  %101 = call i8 addrspace(1)* @_bal_panic_construct(i64 %100), !dbg !7
  store i8 addrspace(1)* %101, i8 addrspace(1)** %21
  br label %33
102:
  %103 = extractvalue {i8 addrspace(1)*, i64} %96, 0
  store i8 addrspace(1)* %103, i8 addrspace(1)** %11
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %104), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %105 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([36 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %105, i8 addrspace(1)** %d1
  %106 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %106, i8 addrspace(1)** %d2
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %109 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %107, i8 addrspace(1)* %108)
  %110 = extractvalue {i8 addrspace(1)*, i64} %109, 1
  %111 = icmp ugt i64 %110, 0
  br i1 %111, label %125, label %115
112:
  %113 = or i64 %97, 6400
  %114 = call i8 addrspace(1)* @_bal_panic_construct(i64 %113), !dbg !7
  store i8 addrspace(1)* %114, i8 addrspace(1)** %21
  br label %33
115:
  %116 = extractvalue {i8 addrspace(1)*, i64} %109, 0
  store i8 addrspace(1)* %116, i8 addrspace(1)** %13
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %117), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %118 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %118, i8 addrspace(1)** %d1
  %119 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec9 to i8*))
  store i8 addrspace(1)* %119, i8 addrspace(1)** %d2
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %122 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %120, i8 addrspace(1)* %121)
  %123 = extractvalue {i8 addrspace(1)*, i64} %122, 1
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %138, label %128
125:
  %126 = or i64 %110, 7424
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 %126), !dbg !7
  store i8 addrspace(1)* %127, i8 addrspace(1)** %21
  br label %33
128:
  %129 = extractvalue {i8 addrspace(1)*, i64} %122, 0
  store i8 addrspace(1)* %129, i8 addrspace(1)** %15
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %130), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  %131 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec10 to i8*))
  store i8 addrspace(1)* %131, i8 addrspace(1)** %d1
  %132 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %132, i8 addrspace(1)** %d2
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %135 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %133, i8 addrspace(1)* %134)
  %136 = extractvalue {i8 addrspace(1)*, i64} %135, 1
  %137 = icmp ugt i64 %136, 0
  br i1 %137, label %151, label %141
138:
  %139 = or i64 %123, 8448
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 %139), !dbg !7
  store i8 addrspace(1)* %140, i8 addrspace(1)** %21
  br label %33
141:
  %142 = extractvalue {i8 addrspace(1)*, i64} %135, 0
  store i8 addrspace(1)* %142, i8 addrspace(1)** %17
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %143), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  %144 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %144, i8 addrspace(1)** %d1
  %145 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %145, i8 addrspace(1)** %d2
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %148 = call {i8 addrspace(1)*, i64} @_bal_decimal_sub(i8 addrspace(1)* %146, i8 addrspace(1)* %147)
  %149 = extractvalue {i8 addrspace(1)*, i64} %148, 1
  %150 = icmp ugt i64 %149, 0
  br i1 %150, label %157, label %154
151:
  %152 = or i64 %136, 9472
  %153 = call i8 addrspace(1)* @_bal_panic_construct(i64 %152), !dbg !7
  store i8 addrspace(1)* %153, i8 addrspace(1)** %21
  br label %33
154:
  %155 = extractvalue {i8 addrspace(1)*, i64} %148, 0
  store i8 addrspace(1)* %155, i8 addrspace(1)** %19
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %156), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  ret void
157:
  %158 = or i64 %149, 10496
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 %158), !dbg !7
  store i8 addrspace(1)* %159, i8 addrspace(1)** %21
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/sub4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 13, column: 4, scope: !5)
!11 = !DILocation(line: 17, column: 4, scope: !5)
!12 = !DILocation(line: 21, column: 4, scope: !5)
!13 = !DILocation(line: 25, column: 4, scope: !5)
!14 = !DILocation(line: 29, column: 4, scope: !5)
!15 = !DILocation(line: 33, column: 4, scope: !5)
!16 = !DILocation(line: 37, column: 4, scope: !5)
!17 = !DILocation(line: 41, column: 4, scope: !5)
