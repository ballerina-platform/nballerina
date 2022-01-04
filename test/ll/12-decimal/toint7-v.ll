@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec2 = internal unnamed_addr constant [3 x i8] c"-1\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"0.5\00", align 8
@.dec4 = internal unnamed_addr constant [4 x i8] c"1.5\00", align 8
@.dec5 = internal unnamed_addr constant [4 x i8] c"2.5\00", align 8
@.dec6 = internal unnamed_addr constant [5 x i8] c"-0.5\00", align 8
@.dec7 = internal unnamed_addr constant [5 x i8] c"-1.5\00", align 8
@.dec8 = internal unnamed_addr constant [5 x i8] c"-2.5\00", align 8
@.dec9 = internal unnamed_addr constant [5 x i8] c"1E+2\00", align 8
@.dec10 = internal unnamed_addr constant [7 x i8] c"1.5E+2\00", align 8
@.dec11 = internal unnamed_addr constant [8 x i8] c"-1.5E+2\00", align 8
@.dec12 = internal unnamed_addr constant [4 x i8] c"151\00", align 8
@.dec13 = internal unnamed_addr constant [6 x i8] c"151.3\00", align 8
@.dec14 = internal unnamed_addr constant [6 x i8] c"151.5\00", align 8
@.dec15 = internal unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 8
@.dec16 = internal unnamed_addr constant [22 x i8] c"9223372036854775807.0\00", align 8
@.dec17 = internal unnamed_addr constant [22 x i8] c"9223372036854775807.1\00", align 8
@.dec18 = internal unnamed_addr constant [22 x i8] c"9223372036854775807.4\00", align 8
@.dec19 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec20 = internal unnamed_addr constant [9 x i8] c"-1E-6143\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d = alloca i8 addrspace(1)*
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i64
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i64
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i8
  %47 = load i8*, i8** @_bal_stack_guard
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %56, label %49
49:
  %50 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %50, i8 addrspace(1)** %d
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %52 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %51)
  %53 = extractvalue {i64, i1} %52, 1
  br i1 %53, label %66, label %58
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %45
  call void @_bal_panic(i8 addrspace(1)* %55)
  unreachable
56:
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %57)
  unreachable
58:
  %59 = extractvalue {i64, i1} %52, 0
  store i64 %59, i64* %1
  %60 = load i64, i64* %1, !dbg !8
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %62 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %62, i8 addrspace(1)** %d
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %64 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %63)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %76, label %68
66:
  %67 = call i8 addrspace(1)* @_bal_panic_construct(i64 1025), !dbg !7
  store i8 addrspace(1)* %67, i8 addrspace(1)** %45
  br label %54
68:
  %69 = extractvalue {i64, i1} %64, 0
  store i64 %69, i64* %3
  %70 = load i64, i64* %3, !dbg !9
  %71 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %70), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %72 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %72, i8 addrspace(1)** %d
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %74 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %73)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %86, label %78
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %77, i8 addrspace(1)** %45
  br label %54
78:
  %79 = extractvalue {i64, i1} %74, 0
  store i64 %79, i64* %5
  %80 = load i64, i64* %5, !dbg !10
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %82 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %82, i8 addrspace(1)** %d
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %84 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %83)
  %85 = extractvalue {i64, i1} %84, 1
  br i1 %85, label %96, label %88
86:
  %87 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %87, i8 addrspace(1)** %45
  br label %54
88:
  %89 = extractvalue {i64, i1} %84, 0
  store i64 %89, i64* %7
  %90 = load i64, i64* %7, !dbg !11
  %91 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %90), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %92 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %92, i8 addrspace(1)** %d
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %94 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %93)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %106, label %98
96:
  %97 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !7
  store i8 addrspace(1)* %97, i8 addrspace(1)** %45
  br label %54
98:
  %99 = extractvalue {i64, i1} %94, 0
  store i64 %99, i64* %9
  %100 = load i64, i64* %9, !dbg !12
  %101 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %100), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %102 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %102, i8 addrspace(1)** %d
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %104 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %103)
  %105 = extractvalue {i64, i1} %104, 1
  br i1 %105, label %116, label %108
106:
  %107 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !7
  store i8 addrspace(1)* %107, i8 addrspace(1)** %45
  br label %54
108:
  %109 = extractvalue {i64, i1} %104, 0
  store i64 %109, i64* %11
  %110 = load i64, i64* %11, !dbg !13
  %111 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %110), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %112 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %112, i8 addrspace(1)** %d
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %114 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %113)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %126, label %118
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !7
  store i8 addrspace(1)* %117, i8 addrspace(1)** %45
  br label %54
118:
  %119 = extractvalue {i64, i1} %114, 0
  store i64 %119, i64* %13
  %120 = load i64, i64* %13, !dbg !14
  %121 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %120), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %121), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %122 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %122, i8 addrspace(1)** %d
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %124 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %123)
  %125 = extractvalue {i64, i1} %124, 1
  br i1 %125, label %136, label %128
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633), !dbg !7
  store i8 addrspace(1)* %127, i8 addrspace(1)** %45
  br label %54
128:
  %129 = extractvalue {i64, i1} %124, 0
  store i64 %129, i64* %15
  %130 = load i64, i64* %15, !dbg !15
  %131 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %130), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %131), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  %132 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %132, i8 addrspace(1)** %d
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %134 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %133)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %146, label %138
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401), !dbg !7
  store i8 addrspace(1)* %137, i8 addrspace(1)** %45
  br label %54
138:
  %139 = extractvalue {i64, i1} %134, 0
  store i64 %139, i64* %17
  %140 = load i64, i64* %17, !dbg !16
  %141 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %140), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %141), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  %142 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec9 to i8*))
  store i8 addrspace(1)* %142, i8 addrspace(1)** %d
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %144 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %143)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %156, label %148
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !7
  store i8 addrspace(1)* %147, i8 addrspace(1)** %45
  br label %54
148:
  %149 = extractvalue {i64, i1} %144, 0
  store i64 %149, i64* %19
  %150 = load i64, i64* %19, !dbg !17
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %151), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  %152 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec10 to i8*))
  store i8 addrspace(1)* %152, i8 addrspace(1)** %d
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %154 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %153)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %166, label %158
156:
  %157 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937), !dbg !7
  store i8 addrspace(1)* %157, i8 addrspace(1)** %45
  br label %54
158:
  %159 = extractvalue {i64, i1} %154, 0
  store i64 %159, i64* %21
  %160 = load i64, i64* %21, !dbg !18
  %161 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %160), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %161), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  %162 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec11 to i8*))
  store i8 addrspace(1)* %162, i8 addrspace(1)** %d
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %164 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %163)
  %165 = extractvalue {i64, i1} %164, 1
  br i1 %165, label %176, label %168
166:
  %167 = call i8 addrspace(1)* @_bal_panic_construct(i64 8705), !dbg !7
  store i8 addrspace(1)* %167, i8 addrspace(1)** %45
  br label %54
168:
  %169 = extractvalue {i64, i1} %164, 0
  store i64 %169, i64* %23
  %170 = load i64, i64* %23, !dbg !19
  %171 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %170), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %171), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !19
  %172 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec12 to i8*))
  store i8 addrspace(1)* %172, i8 addrspace(1)** %d
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %174 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %173)
  %175 = extractvalue {i64, i1} %174, 1
  br i1 %175, label %186, label %178
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473), !dbg !7
  store i8 addrspace(1)* %177, i8 addrspace(1)** %45
  br label %54
178:
  %179 = extractvalue {i64, i1} %174, 0
  store i64 %179, i64* %25
  %180 = load i64, i64* %25, !dbg !20
  %181 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %180), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %181), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !20
  %182 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([6 x i8]* @.dec13 to i8*))
  store i8 addrspace(1)* %182, i8 addrspace(1)** %d
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %184 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %183)
  %185 = extractvalue {i64, i1} %184, 1
  br i1 %185, label %196, label %188
186:
  %187 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !7
  store i8 addrspace(1)* %187, i8 addrspace(1)** %45
  br label %54
188:
  %189 = extractvalue {i64, i1} %184, 0
  store i64 %189, i64* %27
  %190 = load i64, i64* %27, !dbg !21
  %191 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %190), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %191), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !21
  %192 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([6 x i8]* @.dec14 to i8*))
  store i8 addrspace(1)* %192, i8 addrspace(1)** %d
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %194 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %193)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %206, label %198
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 11009), !dbg !7
  store i8 addrspace(1)* %197, i8 addrspace(1)** %45
  br label %54
198:
  %199 = extractvalue {i64, i1} %194, 0
  store i64 %199, i64* %29
  %200 = load i64, i64* %29, !dbg !22
  %201 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %200), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %201), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !22
  %202 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([20 x i8]* @.dec15 to i8*))
  store i8 addrspace(1)* %202, i8 addrspace(1)** %d
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %204 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %203)
  %205 = extractvalue {i64, i1} %204, 1
  br i1 %205, label %216, label %208
206:
  %207 = call i8 addrspace(1)* @_bal_panic_construct(i64 11777), !dbg !7
  store i8 addrspace(1)* %207, i8 addrspace(1)** %45
  br label %54
208:
  %209 = extractvalue {i64, i1} %204, 0
  store i64 %209, i64* %31
  %210 = load i64, i64* %31, !dbg !23
  %211 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %210), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %211), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !23
  %212 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([22 x i8]* @.dec16 to i8*))
  store i8 addrspace(1)* %212, i8 addrspace(1)** %d
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %214 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %213)
  %215 = extractvalue {i64, i1} %214, 1
  br i1 %215, label %226, label %218
216:
  %217 = call i8 addrspace(1)* @_bal_panic_construct(i64 12545), !dbg !7
  store i8 addrspace(1)* %217, i8 addrspace(1)** %45
  br label %54
218:
  %219 = extractvalue {i64, i1} %214, 0
  store i64 %219, i64* %33
  %220 = load i64, i64* %33, !dbg !24
  %221 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %220), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %221), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !24
  %222 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([22 x i8]* @.dec17 to i8*))
  store i8 addrspace(1)* %222, i8 addrspace(1)** %d
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %224 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %223)
  %225 = extractvalue {i64, i1} %224, 1
  br i1 %225, label %236, label %228
226:
  %227 = call i8 addrspace(1)* @_bal_panic_construct(i64 13313), !dbg !7
  store i8 addrspace(1)* %227, i8 addrspace(1)** %45
  br label %54
228:
  %229 = extractvalue {i64, i1} %224, 0
  store i64 %229, i64* %35
  %230 = load i64, i64* %35, !dbg !25
  %231 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %230), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %231), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !25
  %232 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([22 x i8]* @.dec18 to i8*))
  store i8 addrspace(1)* %232, i8 addrspace(1)** %d
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %234 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %233)
  %235 = extractvalue {i64, i1} %234, 1
  br i1 %235, label %246, label %238
236:
  %237 = call i8 addrspace(1)* @_bal_panic_construct(i64 14081), !dbg !7
  store i8 addrspace(1)* %237, i8 addrspace(1)** %45
  br label %54
238:
  %239 = extractvalue {i64, i1} %234, 0
  store i64 %239, i64* %37
  %240 = load i64, i64* %37, !dbg !26
  %241 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %240), !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %241), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !26
  %242 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([22 x i8]* @.dec18 to i8*))
  store i8 addrspace(1)* %242, i8 addrspace(1)** %d
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %244 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %243)
  %245 = extractvalue {i64, i1} %244, 1
  br i1 %245, label %256, label %248
246:
  %247 = call i8 addrspace(1)* @_bal_panic_construct(i64 14849), !dbg !7
  store i8 addrspace(1)* %247, i8 addrspace(1)** %45
  br label %54
248:
  %249 = extractvalue {i64, i1} %244, 0
  store i64 %249, i64* %39
  %250 = load i64, i64* %39, !dbg !27
  %251 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %250), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %251), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !27
  %252 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec19 to i8*))
  store i8 addrspace(1)* %252, i8 addrspace(1)** %d
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %254 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %253)
  %255 = extractvalue {i64, i1} %254, 1
  br i1 %255, label %266, label %258
256:
  %257 = call i8 addrspace(1)* @_bal_panic_construct(i64 15617), !dbg !7
  store i8 addrspace(1)* %257, i8 addrspace(1)** %45
  br label %54
258:
  %259 = extractvalue {i64, i1} %254, 0
  store i64 %259, i64* %41
  %260 = load i64, i64* %41, !dbg !28
  %261 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %260), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %261), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !28
  %262 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec20 to i8*))
  store i8 addrspace(1)* %262, i8 addrspace(1)** %d
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %264 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %263)
  %265 = extractvalue {i64, i1} %264, 1
  br i1 %265, label %272, label %268
266:
  %267 = call i8 addrspace(1)* @_bal_panic_construct(i64 16385), !dbg !7
  store i8 addrspace(1)* %267, i8 addrspace(1)** %45
  br label %54
268:
  %269 = extractvalue {i64, i1} %264, 0
  store i64 %269, i64* %43
  %270 = load i64, i64* %43, !dbg !29
  %271 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %270), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %271), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !29
  ret void
272:
  %273 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !7
  store i8 addrspace(1)* %273, i8 addrspace(1)** %45
  br label %54
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/toint7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 16, column: 4, scope: !5)
!13 = !DILocation(line: 19, column: 4, scope: !5)
!14 = !DILocation(line: 22, column: 4, scope: !5)
!15 = !DILocation(line: 25, column: 4, scope: !5)
!16 = !DILocation(line: 28, column: 4, scope: !5)
!17 = !DILocation(line: 31, column: 4, scope: !5)
!18 = !DILocation(line: 34, column: 4, scope: !5)
!19 = !DILocation(line: 37, column: 4, scope: !5)
!20 = !DILocation(line: 40, column: 4, scope: !5)
!21 = !DILocation(line: 43, column: 4, scope: !5)
!22 = !DILocation(line: 46, column: 4, scope: !5)
!23 = !DILocation(line: 49, column: 4, scope: !5)
!24 = !DILocation(line: 52, column: 4, scope: !5)
!25 = !DILocation(line: 55, column: 4, scope: !5)
!26 = !DILocation(line: 58, column: 4, scope: !5)
!27 = !DILocation(line: 61, column: 4, scope: !5)
!28 = !DILocation(line: 64, column: 4, scope: !5)
!29 = !DILocation(line: 67, column: 4, scope: !5)
