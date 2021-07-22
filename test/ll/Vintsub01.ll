@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
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
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i64
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i64
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i64
  %48 = alloca i8
  %49 = load i8*, i8** @_bal_stack_guard
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %56, label %51
51:
  %52 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 9223372036854775806, i64 9223372036854775806)
  %53 = extractvalue {i64, i1} %52, 1
  br i1 %53, label %63, label %57
54:
  %55 = load i64, i64* %47
  call void @_bal_panic(i64 %55)
  unreachable
56:
  call void @_bal_panic(i64 516)
  unreachable
57:
  %58 = extractvalue {i64, i1} %52, 0
  store i64 %58, i64* %1
  %59 = load i64, i64* %1
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59)
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %61 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 1, i64 9223372036854775806)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %70, label %64
63:
  store i64 769, i64* %47
  br label %54
64:
  %65 = extractvalue {i64, i1} %61, 0
  store i64 %65, i64* %3
  %66 = load i64, i64* %3
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %68 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %69 = extractvalue {i64, i1} %68, 1
  br i1 %69, label %77, label %71
70:
  store i64 1025, i64* %47
  br label %54
71:
  %72 = extractvalue {i64, i1} %68, 0
  store i64 %72, i64* %5
  %73 = load i64, i64* %5
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %73)
  call void @_Bio__println(i8 addrspace(1)* %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %75 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 9223372036854775806, i64 1)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %84, label %78
77:
  store i64 1281, i64* %47
  br label %54
78:
  %79 = extractvalue {i64, i1} %75, 0
  store i64 %79, i64* %7
  %80 = load i64, i64* %7
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80)
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %82 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 1, i64 1)
  %83 = extractvalue {i64, i1} %82, 1
  br i1 %83, label %91, label %85
84:
  store i64 1793, i64* %47
  br label %54
85:
  %86 = extractvalue {i64, i1} %82, 0
  store i64 %86, i64* %9
  %87 = load i64, i64* %9
  %88 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %87)
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %89 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %90 = extractvalue {i64, i1} %89, 1
  br i1 %90, label %98, label %92
91:
  store i64 2049, i64* %47
  br label %54
92:
  %93 = extractvalue {i64, i1} %89, 0
  store i64 %93, i64* %11
  %94 = load i64, i64* %11
  %95 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %94)
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %96 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %97 = extractvalue {i64, i1} %96, 1
  br i1 %97, label %104, label %99
98:
  store i64 2305, i64* %47
  br label %54
99:
  %100 = extractvalue {i64, i1} %96, 0
  store i64 %100, i64* %13
  %101 = load i64, i64* %13
  %102 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %101, i64 1)
  %103 = extractvalue {i64, i1} %102, 1
  br i1 %103, label %111, label %105
104:
  store i64 2561, i64* %47
  br label %54
105:
  %106 = extractvalue {i64, i1} %102, 0
  store i64 %106, i64* %14
  %107 = load i64, i64* %14
  %108 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %107)
  call void @_Bio__println(i8 addrspace(1)* %108)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %109 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 9223372036854775806, i64 0)
  %110 = extractvalue {i64, i1} %109, 1
  br i1 %110, label %118, label %112
111:
  store i64 2561, i64* %47
  br label %54
112:
  %113 = extractvalue {i64, i1} %109, 0
  store i64 %113, i64* %16
  %114 = load i64, i64* %16
  %115 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %114)
  call void @_Bio__println(i8 addrspace(1)* %115)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %116 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 1, i64 0)
  %117 = extractvalue {i64, i1} %116, 1
  br i1 %117, label %125, label %119
118:
  store i64 3073, i64* %47
  br label %54
119:
  %120 = extractvalue {i64, i1} %116, 0
  store i64 %120, i64* %18
  %121 = load i64, i64* %18
  %122 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %121)
  call void @_Bio__println(i8 addrspace(1)* %122)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %123 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 0)
  %124 = extractvalue {i64, i1} %123, 1
  br i1 %124, label %132, label %126
125:
  store i64 3329, i64* %47
  br label %54
126:
  %127 = extractvalue {i64, i1} %123, 0
  store i64 %127, i64* %20
  %128 = load i64, i64* %20
  %129 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %128)
  call void @_Bio__println(i8 addrspace(1)* %129)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %130 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %131 = extractvalue {i64, i1} %130, 1
  br i1 %131, label %138, label %133
132:
  store i64 3585, i64* %47
  br label %54
133:
  %134 = extractvalue {i64, i1} %130, 0
  store i64 %134, i64* %22
  %135 = load i64, i64* %22
  %136 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %135, i64 0)
  %137 = extractvalue {i64, i1} %136, 1
  br i1 %137, label %145, label %139
138:
  store i64 3841, i64* %47
  br label %54
139:
  %140 = extractvalue {i64, i1} %136, 0
  store i64 %140, i64* %23
  %141 = load i64, i64* %23
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141)
  call void @_Bio__println(i8 addrspace(1)* %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %143 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %144 = extractvalue {i64, i1} %143, 1
  br i1 %144, label %151, label %146
145:
  store i64 3841, i64* %47
  br label %54
146:
  %147 = extractvalue {i64, i1} %143, 0
  store i64 %147, i64* %25
  %148 = load i64, i64* %25
  %149 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %148, i64 0)
  %150 = extractvalue {i64, i1} %149, 1
  br i1 %150, label %158, label %152
151:
  store i64 4097, i64* %47
  br label %54
152:
  %153 = extractvalue {i64, i1} %149, 0
  store i64 %153, i64* %26
  %154 = load i64, i64* %26
  %155 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %154)
  call void @_Bio__println(i8 addrspace(1)* %155)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %156 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %157 = extractvalue {i64, i1} %156, 1
  br i1 %157, label %164, label %159
158:
  store i64 4097, i64* %47
  br label %54
159:
  %160 = extractvalue {i64, i1} %156, 0
  store i64 %160, i64* %28
  %161 = load i64, i64* %28
  %162 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 9223372036854775806, i64 %161)
  %163 = extractvalue {i64, i1} %162, 1
  br i1 %163, label %171, label %165
164:
  store i64 4609, i64* %47
  br label %54
165:
  %166 = extractvalue {i64, i1} %162, 0
  store i64 %166, i64* %29
  %167 = load i64, i64* %29
  %168 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %167)
  call void @_Bio__println(i8 addrspace(1)* %168)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %169 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %170 = extractvalue {i64, i1} %169, 1
  br i1 %170, label %177, label %172
171:
  store i64 4609, i64* %47
  br label %54
172:
  %173 = extractvalue {i64, i1} %169, 0
  store i64 %173, i64* %31
  %174 = load i64, i64* %31
  %175 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 1, i64 %174)
  %176 = extractvalue {i64, i1} %175, 1
  br i1 %176, label %184, label %178
177:
  store i64 4865, i64* %47
  br label %54
178:
  %179 = extractvalue {i64, i1} %175, 0
  store i64 %179, i64* %32
  %180 = load i64, i64* %32
  %181 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %180)
  call void @_Bio__println(i8 addrspace(1)* %181)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %182 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %183 = extractvalue {i64, i1} %182, 1
  br i1 %183, label %190, label %185
184:
  store i64 4865, i64* %47
  br label %54
185:
  %186 = extractvalue {i64, i1} %182, 0
  store i64 %186, i64* %34
  %187 = load i64, i64* %34
  %188 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %187)
  %189 = extractvalue {i64, i1} %188, 1
  br i1 %189, label %197, label %191
190:
  store i64 5121, i64* %47
  br label %54
191:
  %192 = extractvalue {i64, i1} %188, 0
  store i64 %192, i64* %35
  %193 = load i64, i64* %35
  %194 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %193)
  call void @_Bio__println(i8 addrspace(1)* %194)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %195 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %196 = extractvalue {i64, i1} %195, 1
  br i1 %196, label %202, label %198
197:
  store i64 5121, i64* %47
  br label %54
198:
  %199 = extractvalue {i64, i1} %195, 0
  store i64 %199, i64* %37
  %200 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %201 = extractvalue {i64, i1} %200, 1
  br i1 %201, label %209, label %203
202:
  store i64 5377, i64* %47
  br label %54
203:
  %204 = extractvalue {i64, i1} %200, 0
  store i64 %204, i64* %38
  %205 = load i64, i64* %37
  %206 = load i64, i64* %38
  %207 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %205, i64 %206)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %216, label %210
209:
  store i64 5377, i64* %47
  br label %54
210:
  %211 = extractvalue {i64, i1} %207, 0
  store i64 %211, i64* %39
  %212 = load i64, i64* %39
  %213 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %212)
  call void @_Bio__println(i8 addrspace(1)* %213)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %214 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 9223372036854775806, i64 9223372036854775806)
  %215 = extractvalue {i64, i1} %214, 1
  br i1 %215, label %223, label %217
216:
  store i64 5377, i64* %47
  br label %54
217:
  %218 = extractvalue {i64, i1} %214, 0
  store i64 %218, i64* %41
  %219 = load i64, i64* %41
  %220 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %219)
  call void @_Bio__println(i8 addrspace(1)* %220)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %221 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 1, i64 9223372036854775806)
  %222 = extractvalue {i64, i1} %221, 1
  br i1 %222, label %230, label %224
223:
  store i64 5889, i64* %47
  br label %54
224:
  %225 = extractvalue {i64, i1} %221, 0
  store i64 %225, i64* %43
  %226 = load i64, i64* %43
  %227 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %226)
  call void @_Bio__println(i8 addrspace(1)* %227)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %228 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %229 = extractvalue {i64, i1} %228, 1
  br i1 %229, label %235, label %231
230:
  store i64 6145, i64* %47
  br label %54
231:
  %232 = extractvalue {i64, i1} %228, 0
  store i64 %232, i64* %45
  %233 = load i64, i64* %45
  %234 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %233)
  call void @_Bio__println(i8 addrspace(1)* %234)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  ret void
235:
  store i64 6401, i64* %47
  br label %54
}
