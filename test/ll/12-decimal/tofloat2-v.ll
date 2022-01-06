@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [36 x i8] c"1.000000000000000000000000000000000\00", align 8
@.dec2 = internal unnamed_addr constant [4 x i8] c"1.1\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"9.1\00", align 8
@.dec4 = internal unnamed_addr constant [36 x i8] c"9.999999999999999999999999999999999\00", align 8
@.dec5 = internal unnamed_addr constant [35 x i8] c"9.99999999999999999999999999999999\00", align 8
@.dec6 = internal unnamed_addr constant [34 x i8] c"9.9999999999999999999999999999999\00", align 8
@.dec7 = internal unnamed_addr constant [30 x i8] c"10.00000000000000000000000000\00", align 8
@.dec8 = internal unnamed_addr constant [30 x i8] c"10.00000000000000000000000001\00", align 8
@.dec9 = internal unnamed_addr constant [36 x i8] c"99.99999999999999999999999999999999\00", align 8
@.dec10 = internal unnamed_addr constant [5 x i8] c"1E+2\00", align 8
@.dec11 = internal unnamed_addr constant [7 x i8] c"1.9E+2\00", align 8
@.dec12 = internal unnamed_addr constant [41 x i8] c"9.999999999999999999999999999999999E+100\00", align 8
@.dec13 = internal unnamed_addr constant [41 x i8] c"9.999999999999999999999999999999999E+133\00", align 8
@.dec14 = internal unnamed_addr constant [7 x i8] c"1E+308\00", align 8
@.dec15 = internal unnamed_addr constant [25 x i8] c"1.79769313486231571E+308\00", align 8
@.dec16 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec17 = internal unnamed_addr constant [7 x i8] c"1E-322\00", align 8
@.dec18 = internal unnamed_addr constant [7 x i8] c"1E-323\00", align 8
@.dec19 = internal unnamed_addr constant [7 x i8] c"1E-324\00", align 8
@.dec20 = internal unnamed_addr constant [8 x i8] c"-1E-324\00", align 8
@.dec21 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec22 = internal unnamed_addr constant [9 x i8] c"-1E-6143\00", align 8
@.dec23 = internal unnamed_addr constant [7 x i8] c"1E+309\00", align 8
@.dec24 = internal unnamed_addr constant [24 x i8] c"1.7976931348623156E+309\00", align 8
@.dec25 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6144\00", align 8
@.dec26 = internal unnamed_addr constant [8 x i8] c"-1E+309\00", align 8
@.dec27 = internal unnamed_addr constant [8 x i8] c"-2E+309\00", align 8
@.dec28 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999999E+6144\00", align 8
@.dec29 = internal unnamed_addr constant [25 x i8] c"-1.7976931348623156E+309\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare double @_bal_decimal_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d = alloca i8 addrspace(1)*
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca double
  %14 = alloca i8 addrspace(1)*
  %15 = alloca double
  %16 = alloca i8 addrspace(1)*
  %17 = alloca double
  %18 = alloca i8 addrspace(1)*
  %19 = alloca double
  %20 = alloca i8 addrspace(1)*
  %21 = alloca double
  %22 = alloca i8 addrspace(1)*
  %23 = alloca double
  %24 = alloca i8 addrspace(1)*
  %25 = alloca double
  %26 = alloca i8 addrspace(1)*
  %27 = alloca double
  %28 = alloca i8 addrspace(1)*
  %29 = alloca double
  %30 = alloca i8 addrspace(1)*
  %31 = alloca double
  %32 = alloca i8 addrspace(1)*
  %33 = alloca double
  %34 = alloca i8 addrspace(1)*
  %35 = alloca double
  %36 = alloca i8 addrspace(1)*
  %37 = alloca double
  %38 = alloca i8 addrspace(1)*
  %39 = alloca double
  %40 = alloca i8 addrspace(1)*
  %41 = alloca double
  %42 = alloca i8 addrspace(1)*
  %43 = alloca double
  %44 = alloca i8 addrspace(1)*
  %45 = alloca double
  %46 = alloca i8 addrspace(1)*
  %47 = alloca double
  %48 = alloca i8 addrspace(1)*
  %49 = alloca double
  %50 = alloca i8 addrspace(1)*
  %51 = alloca double
  %52 = alloca i8 addrspace(1)*
  %53 = alloca double
  %54 = alloca i8 addrspace(1)*
  %55 = alloca double
  %56 = alloca i8 addrspace(1)*
  %57 = alloca double
  %58 = alloca i8 addrspace(1)*
  %59 = alloca double
  %60 = alloca i8 addrspace(1)*
  %61 = alloca double
  %62 = alloca i8 addrspace(1)*
  %63 = alloca i8
  %64 = load i8*, i8** @_bal_stack_guard
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %222, label %66
66:
  %67 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %67, i8 addrspace(1)** %d
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %69 = call double @_bal_decimal_to_float(i8 addrspace(1)* %68)
  store double %69, double* %1
  %70 = load double, double* %1, !dbg !8
  %71 = call i8 addrspace(1)* @_bal_float_to_tagged(double %70), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %72 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([36 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %72, i8 addrspace(1)** %d
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %74 = call double @_bal_decimal_to_float(i8 addrspace(1)* %73)
  store double %74, double* %3
  %75 = load double, double* %3, !dbg !9
  %76 = call i8 addrspace(1)* @_bal_float_to_tagged(double %75), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %76), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %77 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %77, i8 addrspace(1)** %d
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %79 = call double @_bal_decimal_to_float(i8 addrspace(1)* %78)
  store double %79, double* %5
  %80 = load double, double* %5, !dbg !10
  %81 = call i8 addrspace(1)* @_bal_float_to_tagged(double %80), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %82 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %82, i8 addrspace(1)** %d
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %84 = call double @_bal_decimal_to_float(i8 addrspace(1)* %83)
  store double %84, double* %7
  %85 = load double, double* %7, !dbg !11
  %86 = call i8 addrspace(1)* @_bal_float_to_tagged(double %85), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %87 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([36 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %87, i8 addrspace(1)** %d
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %89 = call double @_bal_decimal_to_float(i8 addrspace(1)* %88)
  store double %89, double* %9
  %90 = load double, double* %9, !dbg !12
  %91 = call i8 addrspace(1)* @_bal_float_to_tagged(double %90), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %92 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %92, i8 addrspace(1)** %d
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %94 = call double @_bal_decimal_to_float(i8 addrspace(1)* %93)
  store double %94, double* %11
  %95 = load double, double* %11, !dbg !13
  %96 = call i8 addrspace(1)* @_bal_float_to_tagged(double %95), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %97 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([34 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %97, i8 addrspace(1)** %d
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %99 = call double @_bal_decimal_to_float(i8 addrspace(1)* %98)
  store double %99, double* %13
  %100 = load double, double* %13, !dbg !14
  %101 = call i8 addrspace(1)* @_bal_float_to_tagged(double %100), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %102 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([30 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %102, i8 addrspace(1)** %d
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %104 = call double @_bal_decimal_to_float(i8 addrspace(1)* %103)
  store double %104, double* %15
  %105 = load double, double* %15, !dbg !15
  %106 = call i8 addrspace(1)* @_bal_float_to_tagged(double %105), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  %107 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([30 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %107, i8 addrspace(1)** %d
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %109 = call double @_bal_decimal_to_float(i8 addrspace(1)* %108)
  store double %109, double* %17
  %110 = load double, double* %17, !dbg !16
  %111 = call i8 addrspace(1)* @_bal_float_to_tagged(double %110), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  %112 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([30 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %112, i8 addrspace(1)** %d
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %114 = call double @_bal_decimal_to_float(i8 addrspace(1)* %113)
  store double %114, double* %19
  %115 = load double, double* %19, !dbg !17
  %116 = call i8 addrspace(1)* @_bal_float_to_tagged(double %115), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  %117 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([36 x i8]* @.dec9 to i8*))
  store i8 addrspace(1)* %117, i8 addrspace(1)** %d
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %119 = call double @_bal_decimal_to_float(i8 addrspace(1)* %118)
  store double %119, double* %21
  %120 = load double, double* %21, !dbg !18
  %121 = call i8 addrspace(1)* @_bal_float_to_tagged(double %120), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %121), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  %122 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec10 to i8*))
  store i8 addrspace(1)* %122, i8 addrspace(1)** %d
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %124 = call double @_bal_decimal_to_float(i8 addrspace(1)* %123)
  store double %124, double* %23
  %125 = load double, double* %23, !dbg !19
  %126 = call i8 addrspace(1)* @_bal_float_to_tagged(double %125), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %126), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !19
  %127 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %127, i8 addrspace(1)** %d
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %129 = call double @_bal_decimal_to_float(i8 addrspace(1)* %128)
  store double %129, double* %25
  %130 = load double, double* %25, !dbg !20
  %131 = call i8 addrspace(1)* @_bal_float_to_tagged(double %130), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %131), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !20
  %132 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([41 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %132, i8 addrspace(1)** %d
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %134 = call double @_bal_decimal_to_float(i8 addrspace(1)* %133)
  store double %134, double* %27
  %135 = load double, double* %27, !dbg !21
  %136 = call i8 addrspace(1)* @_bal_float_to_tagged(double %135), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %136), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !21
  %137 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([41 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %137, i8 addrspace(1)** %d
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %139 = call double @_bal_decimal_to_float(i8 addrspace(1)* %138)
  store double %139, double* %29
  %140 = load double, double* %29, !dbg !22
  %141 = call i8 addrspace(1)* @_bal_float_to_tagged(double %140), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %141), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !22
  %142 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %142, i8 addrspace(1)** %d
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %144 = call double @_bal_decimal_to_float(i8 addrspace(1)* %143)
  store double %144, double* %31
  %145 = load double, double* %31, !dbg !23
  %146 = call i8 addrspace(1)* @_bal_float_to_tagged(double %145), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %146), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !23
  %147 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([25 x i8]* @.dec15 to i8*))
  store i8 addrspace(1)* %147, i8 addrspace(1)** %d
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %149 = call double @_bal_decimal_to_float(i8 addrspace(1)* %148)
  store double %149, double* %33
  %150 = load double, double* %33, !dbg !24
  %151 = call i8 addrspace(1)* @_bal_float_to_tagged(double %150), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %151), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !24
  %152 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec16 to i8*))
  store i8 addrspace(1)* %152, i8 addrspace(1)** %d
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %154 = call double @_bal_decimal_to_float(i8 addrspace(1)* %153)
  store double %154, double* %35
  %155 = load double, double* %35, !dbg !25
  %156 = call i8 addrspace(1)* @_bal_float_to_tagged(double %155), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %156), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !25
  %157 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec17 to i8*))
  store i8 addrspace(1)* %157, i8 addrspace(1)** %d
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %159 = call double @_bal_decimal_to_float(i8 addrspace(1)* %158)
  store double %159, double* %37
  %160 = load double, double* %37, !dbg !26
  %161 = call i8 addrspace(1)* @_bal_float_to_tagged(double %160), !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %161), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !26
  %162 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec18 to i8*))
  store i8 addrspace(1)* %162, i8 addrspace(1)** %d
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %164 = call double @_bal_decimal_to_float(i8 addrspace(1)* %163)
  store double %164, double* %39
  %165 = load double, double* %39, !dbg !27
  %166 = call i8 addrspace(1)* @_bal_float_to_tagged(double %165), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %166), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !27
  %167 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec19 to i8*))
  store i8 addrspace(1)* %167, i8 addrspace(1)** %d
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %169 = call double @_bal_decimal_to_float(i8 addrspace(1)* %168)
  store double %169, double* %41
  %170 = load double, double* %41, !dbg !28
  %171 = call i8 addrspace(1)* @_bal_float_to_tagged(double %170), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %171), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !28
  %172 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec20 to i8*))
  store i8 addrspace(1)* %172, i8 addrspace(1)** %d
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %174 = call double @_bal_decimal_to_float(i8 addrspace(1)* %173)
  store double %174, double* %43
  %175 = load double, double* %43, !dbg !29
  %176 = call i8 addrspace(1)* @_bal_float_to_tagged(double %175), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %176), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !29
  %177 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec21 to i8*))
  store i8 addrspace(1)* %177, i8 addrspace(1)** %d
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %179 = call double @_bal_decimal_to_float(i8 addrspace(1)* %178)
  store double %179, double* %45
  %180 = load double, double* %45, !dbg !30
  %181 = call i8 addrspace(1)* @_bal_float_to_tagged(double %180), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %181), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !30
  %182 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec22 to i8*))
  store i8 addrspace(1)* %182, i8 addrspace(1)** %d
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %184 = call double @_bal_decimal_to_float(i8 addrspace(1)* %183)
  store double %184, double* %47
  %185 = load double, double* %47, !dbg !31
  %186 = call i8 addrspace(1)* @_bal_float_to_tagged(double %185), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %186), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !31
  %187 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec23 to i8*))
  store i8 addrspace(1)* %187, i8 addrspace(1)** %d
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %189 = call double @_bal_decimal_to_float(i8 addrspace(1)* %188)
  store double %189, double* %49
  %190 = load double, double* %49, !dbg !32
  %191 = call i8 addrspace(1)* @_bal_float_to_tagged(double %190), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %191), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !32
  %192 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([24 x i8]* @.dec24 to i8*))
  store i8 addrspace(1)* %192, i8 addrspace(1)** %d
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %194 = call double @_bal_decimal_to_float(i8 addrspace(1)* %193)
  store double %194, double* %51
  %195 = load double, double* %51, !dbg !33
  %196 = call i8 addrspace(1)* @_bal_float_to_tagged(double %195), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %196), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !33
  %197 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec25 to i8*))
  store i8 addrspace(1)* %197, i8 addrspace(1)** %d
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %199 = call double @_bal_decimal_to_float(i8 addrspace(1)* %198)
  store double %199, double* %53
  %200 = load double, double* %53, !dbg !34
  %201 = call i8 addrspace(1)* @_bal_float_to_tagged(double %200), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %201), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !34
  %202 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec26 to i8*))
  store i8 addrspace(1)* %202, i8 addrspace(1)** %d
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %204 = call double @_bal_decimal_to_float(i8 addrspace(1)* %203)
  store double %204, double* %55
  %205 = load double, double* %55, !dbg !35
  %206 = call i8 addrspace(1)* @_bal_float_to_tagged(double %205), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %206), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !35
  %207 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec27 to i8*))
  store i8 addrspace(1)* %207, i8 addrspace(1)** %d
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %209 = call double @_bal_decimal_to_float(i8 addrspace(1)* %208)
  store double %209, double* %57
  %210 = load double, double* %57, !dbg !36
  %211 = call i8 addrspace(1)* @_bal_float_to_tagged(double %210), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %211), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !36
  %212 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec28 to i8*))
  store i8 addrspace(1)* %212, i8 addrspace(1)** %d
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %214 = call double @_bal_decimal_to_float(i8 addrspace(1)* %213)
  store double %214, double* %59
  %215 = load double, double* %59, !dbg !37
  %216 = call i8 addrspace(1)* @_bal_float_to_tagged(double %215), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %216), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !37
  %217 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([25 x i8]* @.dec29 to i8*))
  store i8 addrspace(1)* %217, i8 addrspace(1)** %d
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %219 = call double @_bal_decimal_to_float(i8 addrspace(1)* %218)
  store double %219, double* %61
  %220 = load double, double* %61, !dbg !38
  %221 = call i8 addrspace(1)* @_bal_float_to_tagged(double %220), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %221), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !38
  ret void
222:
  %223 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %223)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/tofloat2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 11, column: 4, scope: !5)
!11 = !DILocation(line: 14, column: 4, scope: !5)
!12 = !DILocation(line: 17, column: 4, scope: !5)
!13 = !DILocation(line: 20, column: 4, scope: !5)
!14 = !DILocation(line: 23, column: 4, scope: !5)
!15 = !DILocation(line: 26, column: 4, scope: !5)
!16 = !DILocation(line: 29, column: 4, scope: !5)
!17 = !DILocation(line: 32, column: 4, scope: !5)
!18 = !DILocation(line: 35, column: 4, scope: !5)
!19 = !DILocation(line: 38, column: 4, scope: !5)
!20 = !DILocation(line: 41, column: 4, scope: !5)
!21 = !DILocation(line: 44, column: 4, scope: !5)
!22 = !DILocation(line: 47, column: 4, scope: !5)
!23 = !DILocation(line: 50, column: 4, scope: !5)
!24 = !DILocation(line: 53, column: 4, scope: !5)
!25 = !DILocation(line: 56, column: 4, scope: !5)
!26 = !DILocation(line: 59, column: 4, scope: !5)
!27 = !DILocation(line: 62, column: 4, scope: !5)
!28 = !DILocation(line: 65, column: 4, scope: !5)
!29 = !DILocation(line: 68, column: 4, scope: !5)
!30 = !DILocation(line: 71, column: 4, scope: !5)
!31 = !DILocation(line: 74, column: 4, scope: !5)
!32 = !DILocation(line: 77, column: 4, scope: !5)
!33 = !DILocation(line: 80, column: 4, scope: !5)
!34 = !DILocation(line: 83, column: 4, scope: !5)
!35 = !DILocation(line: 86, column: 4, scope: !5)
!36 = !DILocation(line: 89, column: 4, scope: !5)
!37 = !DILocation(line: 92, column: 4, scope: !5)
!38 = !DILocation(line: 95, column: 4, scope: !5)
