@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [5 x i8] c"1000\00", align 8
@.dec2 = internal unnamed_addr constant [35 x i8] c"1234567890123456789012345678901234\00", align 8
@.dec3 = internal unnamed_addr constant [35 x i8] c"1234567890123456789012345678901231\00", align 8
@.dec4 = internal unnamed_addr constant [40 x i8] c"1.234567890123456789012345678901234E+34\00", align 8
@.dec5 = internal unnamed_addr constant [40 x i8] c"1.234567890123456789012345678901231E+34\00", align 8
@.dec6 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999998E+6144\00", align 8
@.dec7 = internal unnamed_addr constant [8 x i8] c"1E+6111\00", align 8
@.dec8 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999995E+6144\00", align 8
@.dec9 = internal unnamed_addr constant [8 x i8] c"2E+6111\00", align 8
@.dec10 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999998E+6144\00", align 8
@.dec11 = internal unnamed_addr constant [9 x i8] c"-1E+6111\00", align 8
@.dec12 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999999E+6144\00", align 8
@.dec13 = internal unnamed_addr constant [8 x i8] c"2E-6143\00", align 8
@.dec14 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec15 = internal unnamed_addr constant [9 x i8] c"-1E-6143\00", align 8
@.dec16 = internal unnamed_addr constant [8 x i8] c"9E-6143\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8
  %31 = load i8*, i8** @_bal_stack_guard
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %43, label %33
33:
  %34 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %34, i8 addrspace(1)** %d1
  %35 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %35, i8 addrspace(1)** %d2
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %38 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %36, i8 addrspace(1)* %37)
  %39 = extractvalue {i8 addrspace(1)*, i64} %38, 1
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %55, label %45
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_bal_panic(i8 addrspace(1)* %42)
  unreachable
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
45:
  %46 = extractvalue {i8 addrspace(1)*, i64} %38, 0
  store i8 addrspace(1)* %46, i8 addrspace(1)** %1
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %48 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %48, i8 addrspace(1)** %d1
  %49 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %49, i8 addrspace(1)** %d2
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %52 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %50, i8 addrspace(1)* %51)
  %53 = extractvalue {i8 addrspace(1)*, i64} %52, 1
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %68, label %58
55:
  %56 = or i64 %39, 1280
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 %56), !dbg !7
  store i8 addrspace(1)* %57, i8 addrspace(1)** %29
  br label %41
58:
  %59 = extractvalue {i8 addrspace(1)*, i64} %52, 0
  store i8 addrspace(1)* %59, i8 addrspace(1)** %3
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %61 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %61, i8 addrspace(1)** %d1
  %62 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %62, i8 addrspace(1)** %d2
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %65 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %63, i8 addrspace(1)* %64)
  %66 = extractvalue {i8 addrspace(1)*, i64} %65, 1
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %81, label %71
68:
  %69 = or i64 %53, 2304
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 %69), !dbg !7
  store i8 addrspace(1)* %70, i8 addrspace(1)** %29
  br label %41
71:
  %72 = extractvalue {i8 addrspace(1)*, i64} %65, 0
  store i8 addrspace(1)* %72, i8 addrspace(1)** %5
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %74 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([40 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %74, i8 addrspace(1)** %d1
  %75 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([40 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %75, i8 addrspace(1)** %d2
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %78 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %76, i8 addrspace(1)* %77)
  %79 = extractvalue {i8 addrspace(1)*, i64} %78, 1
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %94, label %84
81:
  %82 = or i64 %66, 3328
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 %82), !dbg !7
  store i8 addrspace(1)* %83, i8 addrspace(1)** %29
  br label %41
84:
  %85 = extractvalue {i8 addrspace(1)*, i64} %78, 0
  store i8 addrspace(1)* %85, i8 addrspace(1)** %7
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %87 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %87, i8 addrspace(1)** %d1
  %88 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([40 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %88, i8 addrspace(1)** %d2
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %91 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %89, i8 addrspace(1)* %90)
  %92 = extractvalue {i8 addrspace(1)*, i64} %91, 1
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %107, label %97
94:
  %95 = or i64 %79, 4352
  %96 = call i8 addrspace(1)* @_bal_panic_construct(i64 %95), !dbg !7
  store i8 addrspace(1)* %96, i8 addrspace(1)** %29
  br label %41
97:
  %98 = extractvalue {i8 addrspace(1)*, i64} %91, 0
  store i8 addrspace(1)* %98, i8 addrspace(1)** %9
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %100 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %100, i8 addrspace(1)** %d1
  %101 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %101, i8 addrspace(1)** %d2
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %104 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %102, i8 addrspace(1)* %103)
  %105 = extractvalue {i8 addrspace(1)*, i64} %104, 1
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %120, label %110
107:
  %108 = or i64 %92, 5376
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 %108), !dbg !7
  store i8 addrspace(1)* %109, i8 addrspace(1)** %29
  br label %41
110:
  %111 = extractvalue {i8 addrspace(1)*, i64} %104, 0
  store i8 addrspace(1)* %111, i8 addrspace(1)** %11
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %113 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %113, i8 addrspace(1)** %d1
  %114 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec9 to i8*))
  store i8 addrspace(1)* %114, i8 addrspace(1)** %d2
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %117 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %115, i8 addrspace(1)* %116)
  %118 = extractvalue {i8 addrspace(1)*, i64} %117, 1
  %119 = icmp ugt i64 %118, 0
  br i1 %119, label %133, label %123
120:
  %121 = or i64 %105, 6400
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 %121), !dbg !7
  store i8 addrspace(1)* %122, i8 addrspace(1)** %29
  br label %41
123:
  %124 = extractvalue {i8 addrspace(1)*, i64} %117, 0
  store i8 addrspace(1)* %124, i8 addrspace(1)** %13
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %125), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %126 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec10 to i8*))
  store i8 addrspace(1)* %126, i8 addrspace(1)** %d1
  %127 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %127, i8 addrspace(1)** %d2
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %130 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %128, i8 addrspace(1)* %129)
  %131 = extractvalue {i8 addrspace(1)*, i64} %130, 1
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %146, label %136
133:
  %134 = or i64 %118, 7424
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 %134), !dbg !7
  store i8 addrspace(1)* %135, i8 addrspace(1)** %29
  br label %41
136:
  %137 = extractvalue {i8 addrspace(1)*, i64} %130, 0
  store i8 addrspace(1)* %137, i8 addrspace(1)** %15
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %138), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  %139 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %139, i8 addrspace(1)** %d1
  %140 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %140, i8 addrspace(1)** %d2
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %143 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %141, i8 addrspace(1)* %142)
  %144 = extractvalue {i8 addrspace(1)*, i64} %143, 1
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %159, label %149
146:
  %147 = or i64 %131, 8448
  %148 = call i8 addrspace(1)* @_bal_panic_construct(i64 %147), !dbg !7
  store i8 addrspace(1)* %148, i8 addrspace(1)** %29
  br label %41
149:
  %150 = extractvalue {i8 addrspace(1)*, i64} %143, 0
  store i8 addrspace(1)* %150, i8 addrspace(1)** %17
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %151), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  %152 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %152, i8 addrspace(1)** %d1
  %153 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %153, i8 addrspace(1)** %d2
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %156 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %154, i8 addrspace(1)* %155)
  %157 = extractvalue {i8 addrspace(1)*, i64} %156, 1
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %172, label %162
159:
  %160 = or i64 %144, 9472
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 %160), !dbg !7
  store i8 addrspace(1)* %161, i8 addrspace(1)** %29
  br label %41
162:
  %163 = extractvalue {i8 addrspace(1)*, i64} %156, 0
  store i8 addrspace(1)* %163, i8 addrspace(1)** %19
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %164), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  %165 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %165, i8 addrspace(1)** %d1
  %166 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %166, i8 addrspace(1)** %d2
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %169 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %167, i8 addrspace(1)* %168)
  %170 = extractvalue {i8 addrspace(1)*, i64} %169, 1
  %171 = icmp ugt i64 %170, 0
  br i1 %171, label %185, label %175
172:
  %173 = or i64 %157, 10496
  %174 = call i8 addrspace(1)* @_bal_panic_construct(i64 %173), !dbg !7
  store i8 addrspace(1)* %174, i8 addrspace(1)** %29
  br label %41
175:
  %176 = extractvalue {i8 addrspace(1)*, i64} %169, 0
  store i8 addrspace(1)* %176, i8 addrspace(1)** %21
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %177), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  %178 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %178, i8 addrspace(1)** %d1
  %179 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec15 to i8*))
  store i8 addrspace(1)* %179, i8 addrspace(1)** %d2
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %182 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %180, i8 addrspace(1)* %181)
  %183 = extractvalue {i8 addrspace(1)*, i64} %182, 1
  %184 = icmp ugt i64 %183, 0
  br i1 %184, label %198, label %188
185:
  %186 = or i64 %170, 11520
  %187 = call i8 addrspace(1)* @_bal_panic_construct(i64 %186), !dbg !7
  store i8 addrspace(1)* %187, i8 addrspace(1)** %29
  br label %41
188:
  %189 = extractvalue {i8 addrspace(1)*, i64} %182, 0
  store i8 addrspace(1)* %189, i8 addrspace(1)** %23
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %190), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !19
  %191 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec16 to i8*))
  store i8 addrspace(1)* %191, i8 addrspace(1)** %d1
  %192 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %192, i8 addrspace(1)** %d2
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %195 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %193, i8 addrspace(1)* %194)
  %196 = extractvalue {i8 addrspace(1)*, i64} %195, 1
  %197 = icmp ugt i64 %196, 0
  br i1 %197, label %211, label %201
198:
  %199 = or i64 %183, 12544
  %200 = call i8 addrspace(1)* @_bal_panic_construct(i64 %199), !dbg !7
  store i8 addrspace(1)* %200, i8 addrspace(1)** %29
  br label %41
201:
  %202 = extractvalue {i8 addrspace(1)*, i64} %195, 0
  store i8 addrspace(1)* %202, i8 addrspace(1)** %25
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %203), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !20
  %204 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %204, i8 addrspace(1)** %d1
  %205 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec15 to i8*))
  store i8 addrspace(1)* %205, i8 addrspace(1)** %d2
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %208 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %206, i8 addrspace(1)* %207)
  %209 = extractvalue {i8 addrspace(1)*, i64} %208, 1
  %210 = icmp ugt i64 %209, 0
  br i1 %210, label %217, label %214
211:
  %212 = or i64 %196, 13568
  %213 = call i8 addrspace(1)* @_bal_panic_construct(i64 %212), !dbg !7
  store i8 addrspace(1)* %213, i8 addrspace(1)** %29
  br label %41
214:
  %215 = extractvalue {i8 addrspace(1)*, i64} %208, 0
  store i8 addrspace(1)* %215, i8 addrspace(1)** %27
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %216), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !21
  ret void
217:
  %218 = or i64 %209, 14592
  %219 = call i8 addrspace(1)* @_bal_panic_construct(i64 %218), !dbg !7
  store i8 addrspace(1)* %219, i8 addrspace(1)** %29
  br label %41
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/add7-v.bal", directory:"")
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
!18 = !DILocation(line: 45, column: 4, scope: !5)
!19 = !DILocation(line: 49, column: 4, scope: !5)
!20 = !DILocation(line: 53, column: 4, scope: !5)
!21 = !DILocation(line: 57, column: 4, scope: !5)
