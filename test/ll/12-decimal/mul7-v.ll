@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [3 x i8] c"-1\00", align 8
@.dec2 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec3 = internal unnamed_addr constant [8 x i8] c"1E-6000\00", align 8
@.dec4 = internal unnamed_addr constant [7 x i8] c"1E-143\00", align 8
@.dec5 = internal unnamed_addr constant [8 x i8] c"1E+6000\00", align 8
@.dec6 = internal unnamed_addr constant [7 x i8] c"1E+144\00", align 8
@.dec7 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6000\00", align 8
@.dec8 = internal unnamed_addr constant [8 x i8] c"-1E+144\00", align 8
@.dec9 = internal unnamed_addr constant [8 x i8] c"-2E+143\00", align 8
@.dec10 = internal unnamed_addr constant [9 x i8] c"-1E-6143\00", align 8
@.dec11 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec12 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E-6001\00", align 8
@.dec13 = internal unnamed_addr constant [7 x i8] c"2E-143\00", align 8
@.dec14 = internal unnamed_addr constant [8 x i8] c"1E+6143\00", align 8
@.dec15 = internal unnamed_addr constant [8 x i8] c"1E-6001\00", align 8
@.dec16 = internal unnamed_addr constant [4 x i8] c"0.1\00", align 8
@.dec17 = internal unnamed_addr constant [7 x i8] c"2E-144\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i8
  %39 = load i8*, i8** @_bal_stack_guard
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %51, label %41
41:
  %42 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %42, i8 addrspace(1)** %d1
  %43 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %43, i8 addrspace(1)** %d2
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %46 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  %47 = extractvalue {i8 addrspace(1)*, i64} %46, 1
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %63, label %53
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %52)
  unreachable
53:
  %54 = extractvalue {i8 addrspace(1)*, i64} %46, 0
  store i8 addrspace(1)* %54, i8 addrspace(1)** %1
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %56 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %56, i8 addrspace(1)** %d1
  %57 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %57, i8 addrspace(1)** %d2
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %60 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %58, i8 addrspace(1)* %59)
  %61 = extractvalue {i8 addrspace(1)*, i64} %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %76, label %66
63:
  %64 = or i64 %47, 1280
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 %64), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %37
  br label %49
66:
  %67 = extractvalue {i8 addrspace(1)*, i64} %60, 0
  store i8 addrspace(1)* %67, i8 addrspace(1)** %3
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %69 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %69, i8 addrspace(1)** %d1
  %70 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %70, i8 addrspace(1)** %d2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %73 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %71, i8 addrspace(1)* %72)
  %74 = extractvalue {i8 addrspace(1)*, i64} %73, 1
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %89, label %79
76:
  %77 = or i64 %61, 2304
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 %77), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %37
  br label %49
79:
  %80 = extractvalue {i8 addrspace(1)*, i64} %73, 0
  store i8 addrspace(1)* %80, i8 addrspace(1)** %5
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %82 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %82, i8 addrspace(1)** %d1
  %83 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %83, i8 addrspace(1)** %d2
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %86 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %84, i8 addrspace(1)* %85)
  %87 = extractvalue {i8 addrspace(1)*, i64} %86, 1
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %92
89:
  %90 = or i64 %74, 3328
  %91 = call i8 addrspace(1)* @_bal_panic_construct(i64 %90), !dbg !7
  store i8 addrspace(1)* %91, i8 addrspace(1)** %37
  br label %49
92:
  %93 = extractvalue {i8 addrspace(1)*, i64} %86, 0
  store i8 addrspace(1)* %93, i8 addrspace(1)** %7
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %95 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %95, i8 addrspace(1)** %d1
  %96 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %96, i8 addrspace(1)** %d2
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %99 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %97, i8 addrspace(1)* %98)
  %100 = extractvalue {i8 addrspace(1)*, i64} %99, 1
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %115, label %105
102:
  %103 = or i64 %87, 4352
  %104 = call i8 addrspace(1)* @_bal_panic_construct(i64 %103), !dbg !7
  store i8 addrspace(1)* %104, i8 addrspace(1)** %37
  br label %49
105:
  %106 = extractvalue {i8 addrspace(1)*, i64} %99, 0
  store i8 addrspace(1)* %106, i8 addrspace(1)** %9
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %107), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %108 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %108, i8 addrspace(1)** %d1
  %109 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %109, i8 addrspace(1)** %d2
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %112 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = extractvalue {i8 addrspace(1)*, i64} %112, 1
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %128, label %118
115:
  %116 = or i64 %100, 5376
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 %116), !dbg !7
  store i8 addrspace(1)* %117, i8 addrspace(1)** %37
  br label %49
118:
  %119 = extractvalue {i8 addrspace(1)*, i64} %112, 0
  store i8 addrspace(1)* %119, i8 addrspace(1)** %11
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %121 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %121, i8 addrspace(1)** %d1
  %122 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %122, i8 addrspace(1)** %d2
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %125 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %123, i8 addrspace(1)* %124)
  %126 = extractvalue {i8 addrspace(1)*, i64} %125, 1
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %141, label %131
128:
  %129 = or i64 %113, 6400
  %130 = call i8 addrspace(1)* @_bal_panic_construct(i64 %129), !dbg !7
  store i8 addrspace(1)* %130, i8 addrspace(1)** %37
  br label %49
131:
  %132 = extractvalue {i8 addrspace(1)*, i64} %125, 0
  store i8 addrspace(1)* %132, i8 addrspace(1)** %13
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %133), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %134 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %134, i8 addrspace(1)** %d1
  %135 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec9 to i8*))
  store i8 addrspace(1)* %135, i8 addrspace(1)** %d2
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %138 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %136, i8 addrspace(1)* %137)
  %139 = extractvalue {i8 addrspace(1)*, i64} %138, 1
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %154, label %144
141:
  %142 = or i64 %126, 7424
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 %142), !dbg !7
  store i8 addrspace(1)* %143, i8 addrspace(1)** %37
  br label %49
144:
  %145 = extractvalue {i8 addrspace(1)*, i64} %138, 0
  store i8 addrspace(1)* %145, i8 addrspace(1)** %15
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %146), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  %147 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec10 to i8*))
  store i8 addrspace(1)* %147, i8 addrspace(1)** %d1
  %148 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %148, i8 addrspace(1)** %d2
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %151 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %149, i8 addrspace(1)* %150)
  %152 = extractvalue {i8 addrspace(1)*, i64} %151, 1
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %167, label %157
154:
  %155 = or i64 %139, 8448
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 %155), !dbg !7
  store i8 addrspace(1)* %156, i8 addrspace(1)** %37
  br label %49
157:
  %158 = extractvalue {i8 addrspace(1)*, i64} %151, 0
  store i8 addrspace(1)* %158, i8 addrspace(1)** %17
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %159), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  %160 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %160, i8 addrspace(1)** %d1
  %161 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %161, i8 addrspace(1)** %d2
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %164 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %162, i8 addrspace(1)* %163)
  %165 = extractvalue {i8 addrspace(1)*, i64} %164, 1
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %180, label %170
167:
  %168 = or i64 %152, 9472
  %169 = call i8 addrspace(1)* @_bal_panic_construct(i64 %168), !dbg !7
  store i8 addrspace(1)* %169, i8 addrspace(1)** %37
  br label %49
170:
  %171 = extractvalue {i8 addrspace(1)*, i64} %164, 0
  store i8 addrspace(1)* %171, i8 addrspace(1)** %19
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %172), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  %173 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %173, i8 addrspace(1)** %d1
  %174 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %174, i8 addrspace(1)** %d2
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %177 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %175, i8 addrspace(1)* %176)
  %178 = extractvalue {i8 addrspace(1)*, i64} %177, 1
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %193, label %183
180:
  %181 = or i64 %165, 10496
  %182 = call i8 addrspace(1)* @_bal_panic_construct(i64 %181), !dbg !7
  store i8 addrspace(1)* %182, i8 addrspace(1)** %37
  br label %49
183:
  %184 = extractvalue {i8 addrspace(1)*, i64} %177, 0
  store i8 addrspace(1)* %184, i8 addrspace(1)** %21
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %185), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  %186 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %186, i8 addrspace(1)** %d1
  %187 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %187, i8 addrspace(1)** %d2
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %190 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %188, i8 addrspace(1)* %189)
  %191 = extractvalue {i8 addrspace(1)*, i64} %190, 1
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %206, label %196
193:
  %194 = or i64 %178, 11520
  %195 = call i8 addrspace(1)* @_bal_panic_construct(i64 %194), !dbg !7
  store i8 addrspace(1)* %195, i8 addrspace(1)** %37
  br label %49
196:
  %197 = extractvalue {i8 addrspace(1)*, i64} %190, 0
  store i8 addrspace(1)* %197, i8 addrspace(1)** %23
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %198), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !19
  %199 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %199, i8 addrspace(1)** %d1
  %200 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %200, i8 addrspace(1)** %d2
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %203 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  %204 = extractvalue {i8 addrspace(1)*, i64} %203, 1
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %219, label %209
206:
  %207 = or i64 %191, 12544
  %208 = call i8 addrspace(1)* @_bal_panic_construct(i64 %207), !dbg !7
  store i8 addrspace(1)* %208, i8 addrspace(1)** %37
  br label %49
209:
  %210 = extractvalue {i8 addrspace(1)*, i64} %203, 0
  store i8 addrspace(1)* %210, i8 addrspace(1)** %25
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %211), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !20
  %212 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec15 to i8*))
  store i8 addrspace(1)* %212, i8 addrspace(1)** %d1
  %213 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %213, i8 addrspace(1)** %d2
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %216 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %214, i8 addrspace(1)* %215)
  %217 = extractvalue {i8 addrspace(1)*, i64} %216, 1
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %232, label %222
219:
  %220 = or i64 %204, 13568
  %221 = call i8 addrspace(1)* @_bal_panic_construct(i64 %220), !dbg !7
  store i8 addrspace(1)* %221, i8 addrspace(1)** %37
  br label %49
222:
  %223 = extractvalue {i8 addrspace(1)*, i64} %216, 0
  store i8 addrspace(1)* %223, i8 addrspace(1)** %27
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %224), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !21
  %225 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %225, i8 addrspace(1)** %d1
  %226 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %226, i8 addrspace(1)** %d2
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %229 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %227, i8 addrspace(1)* %228)
  %230 = extractvalue {i8 addrspace(1)*, i64} %229, 1
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %245, label %235
232:
  %233 = or i64 %217, 14592
  %234 = call i8 addrspace(1)* @_bal_panic_construct(i64 %233), !dbg !7
  store i8 addrspace(1)* %234, i8 addrspace(1)** %37
  br label %49
235:
  %236 = extractvalue {i8 addrspace(1)*, i64} %229, 0
  store i8 addrspace(1)* %236, i8 addrspace(1)** %29
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %237), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !22
  %238 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %238, i8 addrspace(1)** %d1
  %239 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec16 to i8*))
  store i8 addrspace(1)* %239, i8 addrspace(1)** %d2
  %240 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %241 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %242 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %240, i8 addrspace(1)* %241)
  %243 = extractvalue {i8 addrspace(1)*, i64} %242, 1
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %258, label %248
245:
  %246 = or i64 %230, 15616
  %247 = call i8 addrspace(1)* @_bal_panic_construct(i64 %246), !dbg !7
  store i8 addrspace(1)* %247, i8 addrspace(1)** %37
  br label %49
248:
  %249 = extractvalue {i8 addrspace(1)*, i64} %242, 0
  store i8 addrspace(1)* %249, i8 addrspace(1)** %31
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %250), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !23
  %251 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %251, i8 addrspace(1)** %d1
  %252 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec17 to i8*))
  store i8 addrspace(1)* %252, i8 addrspace(1)** %d2
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %254 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %255 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %253, i8 addrspace(1)* %254)
  %256 = extractvalue {i8 addrspace(1)*, i64} %255, 1
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %271, label %261
258:
  %259 = or i64 %243, 16640
  %260 = call i8 addrspace(1)* @_bal_panic_construct(i64 %259), !dbg !7
  store i8 addrspace(1)* %260, i8 addrspace(1)** %37
  br label %49
261:
  %262 = extractvalue {i8 addrspace(1)*, i64} %255, 0
  store i8 addrspace(1)* %262, i8 addrspace(1)** %33
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %263), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !24
  %264 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %264, i8 addrspace(1)** %d1
  %265 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %265, i8 addrspace(1)** %d2
  %266 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %268 = call {i8 addrspace(1)*, i64} @_bal_decimal_mul(i8 addrspace(1)* %266, i8 addrspace(1)* %267)
  %269 = extractvalue {i8 addrspace(1)*, i64} %268, 1
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %277, label %274
271:
  %272 = or i64 %256, 17664
  %273 = call i8 addrspace(1)* @_bal_panic_construct(i64 %272), !dbg !7
  store i8 addrspace(1)* %273, i8 addrspace(1)** %37
  br label %49
274:
  %275 = extractvalue {i8 addrspace(1)*, i64} %268, 0
  store i8 addrspace(1)* %275, i8 addrspace(1)** %35
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %35, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %276), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !25
  ret void
277:
  %278 = or i64 %269, 18688
  %279 = call i8 addrspace(1)* @_bal_panic_construct(i64 %278), !dbg !7
  store i8 addrspace(1)* %279, i8 addrspace(1)** %37
  br label %49
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/mul7-v.bal", directory:"")
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
!22 = !DILocation(line: 61, column: 4, scope: !5)
!23 = !DILocation(line: 65, column: 4, scope: !5)
!24 = !DILocation(line: 69, column: 4, scope: !5)
!25 = !DILocation(line: 73, column: 4, scope: !5)
