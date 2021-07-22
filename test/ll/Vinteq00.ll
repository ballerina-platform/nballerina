@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %big = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %one = alloca i64
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %zero = alloca i64
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i64
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i64
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i64
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i1
  %47 = alloca i64
  %48 = alloca i64
  %49 = alloca i8 addrspace(1)*
  %50 = alloca i1
  %51 = alloca i64
  %52 = alloca i64
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i1
  %55 = alloca i64
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i1
  %58 = alloca i64
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i1
  %61 = alloca i64
  %62 = alloca i8 addrspace(1)*
  %63 = alloca i1
  %64 = alloca i64
  %65 = alloca i64
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i1
  %68 = alloca i64
  %69 = alloca i64
  %70 = alloca i8 addrspace(1)*
  %71 = alloca i64
  %72 = alloca i8
  %73 = load i8*, i8** @_bal_stack_guard
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %89, label %75
75:
  store i64 9223372036854775806, i64* %big
  %76 = load i64, i64* %big
  %77 = icmp eq i64 %76, 9223372036854775806
  store i1 %77, i1* %1
  %78 = load i1, i1* %1
  call void @_B_printBoolean(i1 %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %79 = load i64, i64* %big
  %80 = icmp eq i64 %79, 1
  store i1 %80, i1* %3
  %81 = load i1, i1* %3
  call void @_B_printBoolean(i1 %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %82 = load i64, i64* %big
  %83 = icmp eq i64 %82, 0
  store i1 %83, i1* %5
  %84 = load i1, i1* %5
  call void @_B_printBoolean(i1 %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %85 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %86 = extractvalue {i64, i1} %85, 1
  br i1 %86, label %98, label %90
87:
  %88 = load i64, i64* %71
  call void @_bal_panic(i64 %88)
  unreachable
89:
  call void @_bal_panic(i64 772)
  unreachable
90:
  %91 = extractvalue {i64, i1} %85, 0
  store i64 %91, i64* %8
  %92 = load i64, i64* %big
  %93 = load i64, i64* %8
  %94 = icmp eq i64 %92, %93
  store i1 %94, i1* %7
  %95 = load i1, i1* %7
  call void @_B_printBoolean(i1 %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %96 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %97 = extractvalue {i64, i1} %96, 1
  br i1 %97, label %116, label %99
98:
  store i64 2561, i64* %71
  br label %87
99:
  %100 = extractvalue {i64, i1} %96, 0
  store i64 %100, i64* %11
  %101 = load i64, i64* %big
  %102 = load i64, i64* %11
  %103 = icmp eq i64 %101, %102
  store i1 %103, i1* %10
  %104 = load i1, i1* %10
  call void @_B_printBoolean(i1 %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  store i64 1, i64* %one
  %105 = load i64, i64* %one
  %106 = icmp eq i64 %105, 9223372036854775806
  store i1 %106, i1* %13
  %107 = load i1, i1* %13
  call void @_B_printBoolean(i1 %107)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %108 = load i64, i64* %one
  %109 = icmp eq i64 %108, 1
  store i1 %109, i1* %15
  %110 = load i1, i1* %15
  call void @_B_printBoolean(i1 %110)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %111 = load i64, i64* %one
  %112 = icmp eq i64 %111, 0
  store i1 %112, i1* %17
  %113 = load i1, i1* %17
  call void @_B_printBoolean(i1 %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %114 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %125, label %117
116:
  store i64 2817, i64* %71
  br label %87
117:
  %118 = extractvalue {i64, i1} %114, 0
  store i64 %118, i64* %20
  %119 = load i64, i64* %one
  %120 = load i64, i64* %20
  %121 = icmp eq i64 %119, %120
  store i1 %121, i1* %19
  %122 = load i1, i1* %19
  call void @_B_printBoolean(i1 %122)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %123 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %124 = extractvalue {i64, i1} %123, 1
  br i1 %124, label %143, label %126
125:
  store i64 4353, i64* %71
  br label %87
126:
  %127 = extractvalue {i64, i1} %123, 0
  store i64 %127, i64* %23
  %128 = load i64, i64* %one
  %129 = load i64, i64* %23
  %130 = icmp eq i64 %128, %129
  store i1 %130, i1* %22
  %131 = load i1, i1* %22
  call void @_B_printBoolean(i1 %131)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  store i64 0, i64* %zero
  %132 = load i64, i64* %zero
  %133 = icmp eq i64 %132, 9223372036854775806
  store i1 %133, i1* %25
  %134 = load i1, i1* %25
  call void @_B_printBoolean(i1 %134)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %135 = load i64, i64* %zero
  %136 = icmp eq i64 %135, 1
  store i1 %136, i1* %27
  %137 = load i1, i1* %27
  call void @_B_printBoolean(i1 %137)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %138 = load i64, i64* %zero
  %139 = icmp eq i64 %138, 0
  store i1 %139, i1* %29
  %140 = load i1, i1* %29
  call void @_B_printBoolean(i1 %140)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %141 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %142 = extractvalue {i64, i1} %141, 1
  br i1 %142, label %152, label %144
143:
  store i64 4609, i64* %71
  br label %87
144:
  %145 = extractvalue {i64, i1} %141, 0
  store i64 %145, i64* %32
  %146 = load i64, i64* %zero
  %147 = load i64, i64* %32
  %148 = icmp eq i64 %146, %147
  store i1 %148, i1* %31
  %149 = load i1, i1* %31
  call void @_B_printBoolean(i1 %149)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %150 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %151 = extractvalue {i64, i1} %150, 1
  br i1 %151, label %162, label %153
152:
  store i64 6145, i64* %71
  br label %87
153:
  %154 = extractvalue {i64, i1} %150, 0
  store i64 %154, i64* %35
  %155 = load i64, i64* %zero
  %156 = load i64, i64* %35
  %157 = icmp eq i64 %155, %156
  store i1 %157, i1* %34
  %158 = load i1, i1* %34
  call void @_B_printBoolean(i1 %158)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %159 = load i64, i64* %one
  %160 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %159)
  %161 = extractvalue {i64, i1} %160, 1
  br i1 %161, label %171, label %163
162:
  store i64 6401, i64* %71
  br label %87
163:
  %164 = extractvalue {i64, i1} %160, 0
  store i64 %164, i64* %38
  %165 = load i64, i64* %38
  %166 = icmp eq i64 %165, 9223372036854775806
  store i1 %166, i1* %37
  %167 = load i1, i1* %37
  call void @_B_printBoolean(i1 %167)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %168 = load i64, i64* %one
  %169 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %168)
  %170 = extractvalue {i64, i1} %169, 1
  br i1 %170, label %180, label %172
171:
  store i64 6913, i64* %71
  br label %87
172:
  %173 = extractvalue {i64, i1} %169, 0
  store i64 %173, i64* %41
  %174 = load i64, i64* %41
  %175 = icmp eq i64 %174, 1
  store i1 %175, i1* %40
  %176 = load i1, i1* %40
  call void @_B_printBoolean(i1 %176)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %177 = load i64, i64* %one
  %178 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %177)
  %179 = extractvalue {i64, i1} %178, 1
  br i1 %179, label %189, label %181
180:
  store i64 7169, i64* %71
  br label %87
181:
  %182 = extractvalue {i64, i1} %178, 0
  store i64 %182, i64* %44
  %183 = load i64, i64* %44
  %184 = icmp eq i64 %183, 0
  store i1 %184, i1* %43
  %185 = load i1, i1* %43
  call void @_B_printBoolean(i1 %185)
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  %186 = load i64, i64* %one
  %187 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %186)
  %188 = extractvalue {i64, i1} %187, 1
  br i1 %188, label %194, label %190
189:
  store i64 7425, i64* %71
  br label %87
190:
  %191 = extractvalue {i64, i1} %187, 0
  store i64 %191, i64* %47
  %192 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %193 = extractvalue {i64, i1} %192, 1
  br i1 %193, label %204, label %195
194:
  store i64 7681, i64* %71
  br label %87
195:
  %196 = extractvalue {i64, i1} %192, 0
  store i64 %196, i64* %48
  %197 = load i64, i64* %47
  %198 = load i64, i64* %48
  %199 = icmp eq i64 %197, %198
  store i1 %199, i1* %46
  %200 = load i1, i1* %46
  call void @_B_printBoolean(i1 %200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %49
  %201 = load i64, i64* %one
  %202 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %201)
  %203 = extractvalue {i64, i1} %202, 1
  br i1 %203, label %209, label %205
204:
  store i64 7681, i64* %71
  br label %87
205:
  %206 = extractvalue {i64, i1} %202, 0
  store i64 %206, i64* %51
  %207 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %219, label %210
209:
  store i64 7937, i64* %71
  br label %87
210:
  %211 = extractvalue {i64, i1} %207, 0
  store i64 %211, i64* %52
  %212 = load i64, i64* %51
  %213 = load i64, i64* %52
  %214 = icmp eq i64 %212, %213
  store i1 %214, i1* %50
  %215 = load i1, i1* %50
  call void @_B_printBoolean(i1 %215)
  store i8 addrspace(1)* null, i8 addrspace(1)** %53
  %216 = load i64, i64* %big
  %217 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %216)
  %218 = extractvalue {i64, i1} %217, 1
  br i1 %218, label %228, label %220
219:
  store i64 7937, i64* %71
  br label %87
220:
  %221 = extractvalue {i64, i1} %217, 0
  store i64 %221, i64* %55
  %222 = load i64, i64* %55
  %223 = icmp eq i64 %222, 9223372036854775806
  store i1 %223, i1* %54
  %224 = load i1, i1* %54
  call void @_B_printBoolean(i1 %224)
  store i8 addrspace(1)* null, i8 addrspace(1)** %56
  %225 = load i64, i64* %big
  %226 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %225)
  %227 = extractvalue {i64, i1} %226, 1
  br i1 %227, label %237, label %229
228:
  store i64 8449, i64* %71
  br label %87
229:
  %230 = extractvalue {i64, i1} %226, 0
  store i64 %230, i64* %58
  %231 = load i64, i64* %58
  %232 = icmp eq i64 %231, 1
  store i1 %232, i1* %57
  %233 = load i1, i1* %57
  call void @_B_printBoolean(i1 %233)
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  %234 = load i64, i64* %big
  %235 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %234)
  %236 = extractvalue {i64, i1} %235, 1
  br i1 %236, label %246, label %238
237:
  store i64 8705, i64* %71
  br label %87
238:
  %239 = extractvalue {i64, i1} %235, 0
  store i64 %239, i64* %61
  %240 = load i64, i64* %61
  %241 = icmp eq i64 %240, 0
  store i1 %241, i1* %60
  %242 = load i1, i1* %60
  call void @_B_printBoolean(i1 %242)
  store i8 addrspace(1)* null, i8 addrspace(1)** %62
  %243 = load i64, i64* %big
  %244 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %243)
  %245 = extractvalue {i64, i1} %244, 1
  br i1 %245, label %251, label %247
246:
  store i64 8961, i64* %71
  br label %87
247:
  %248 = extractvalue {i64, i1} %244, 0
  store i64 %248, i64* %64
  %249 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %250 = extractvalue {i64, i1} %249, 1
  br i1 %250, label %261, label %252
251:
  store i64 9217, i64* %71
  br label %87
252:
  %253 = extractvalue {i64, i1} %249, 0
  store i64 %253, i64* %65
  %254 = load i64, i64* %64
  %255 = load i64, i64* %65
  %256 = icmp eq i64 %254, %255
  store i1 %256, i1* %63
  %257 = load i1, i1* %63
  call void @_B_printBoolean(i1 %257)
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  %258 = load i64, i64* %big
  %259 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %258)
  %260 = extractvalue {i64, i1} %259, 1
  br i1 %260, label %266, label %262
261:
  store i64 9217, i64* %71
  br label %87
262:
  %263 = extractvalue {i64, i1} %259, 0
  store i64 %263, i64* %68
  %264 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %265 = extractvalue {i64, i1} %264, 1
  br i1 %265, label %273, label %267
266:
  store i64 9473, i64* %71
  br label %87
267:
  %268 = extractvalue {i64, i1} %264, 0
  store i64 %268, i64* %69
  %269 = load i64, i64* %68
  %270 = load i64, i64* %69
  %271 = icmp eq i64 %269, %270
  store i1 %271, i1* %67
  %272 = load i1, i1* %67
  call void @_B_printBoolean(i1 %272)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  ret void
273:
  store i64 9473, i64* %71
  br label %87
}
define internal void @_B_printBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  call void @_bal_panic(i64 10244)
  unreachable
}
