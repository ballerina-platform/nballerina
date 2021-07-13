@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i1
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i64
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i64
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i1
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i64
  %47 = alloca i64
  %48 = alloca i1
  %49 = alloca i8 addrspace(1)*
  %50 = alloca i64
  %51 = alloca i64
  %52 = alloca i1
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i64
  %55 = alloca i1
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i64
  %58 = alloca i1
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i64
  %61 = alloca i1
  %62 = alloca i8 addrspace(1)*
  %63 = alloca i64
  %64 = alloca i64
  %65 = alloca i1
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i64
  %68 = alloca i64
  %69 = alloca i1
  %70 = alloca i8 addrspace(1)*
  %71 = alloca i64
  %72 = alloca i8
  %73 = load i8*, i8** @_bal_stack_guard
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %86, label %75
75:
  %76 = call i1 @_B_eq(i64 9223372036854775806, i64 9223372036854775806)
  store i1 %76, i1* %1
  %77 = load i1, i1* %1
  call void @_B_printBoolean(i1 %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %78 = call i1 @_B_eq(i64 9223372036854775806, i64 1)
  store i1 %78, i1* %3
  %79 = load i1, i1* %3
  call void @_B_printBoolean(i1 %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %80 = call i1 @_B_eq(i64 9223372036854775806, i64 0)
  store i1 %80, i1* %5
  %81 = load i1, i1* %5
  call void @_B_printBoolean(i1 %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %82 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %83 = extractvalue {i64, i1} %82, 1
  br i1 %83, label %94, label %87
84:
  %85 = load i64, i64* %71
  call void @_bal_panic(i64 %85)
  unreachable
86:
  call void @_bal_panic(i64 772)
  unreachable
87:
  %88 = extractvalue {i64, i1} %82, 0
  store i64 %88, i64* %7
  %89 = load i64, i64* %7
  %90 = call i1 @_B_eq(i64 9223372036854775806, i64 %89)
  store i1 %90, i1* %8
  %91 = load i1, i1* %8
  call void @_B_printBoolean(i1 %91)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %92 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %93 = extractvalue {i64, i1} %92, 1
  br i1 %93, label %108, label %95
94:
  store i64 1793, i64* %71
  br label %84
95:
  %96 = extractvalue {i64, i1} %92, 0
  store i64 %96, i64* %10
  %97 = load i64, i64* %10
  %98 = call i1 @_B_eq(i64 9223372036854775806, i64 %97)
  store i1 %98, i1* %11
  %99 = load i1, i1* %11
  call void @_B_printBoolean(i1 %99)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %100 = call i1 @_B_eq(i64 1, i64 9223372036854775806)
  store i1 %100, i1* %13
  %101 = load i1, i1* %13
  call void @_B_printBoolean(i1 %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %102 = call i1 @_B_eq(i64 1, i64 1)
  store i1 %102, i1* %15
  %103 = load i1, i1* %15
  call void @_B_printBoolean(i1 %103)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %104 = call i1 @_B_eq(i64 1, i64 0)
  store i1 %104, i1* %17
  %105 = load i1, i1* %17
  call void @_B_printBoolean(i1 %105)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %106 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %107 = extractvalue {i64, i1} %106, 1
  br i1 %107, label %116, label %109
108:
  store i64 2049, i64* %71
  br label %84
109:
  %110 = extractvalue {i64, i1} %106, 0
  store i64 %110, i64* %19
  %111 = load i64, i64* %19
  %112 = call i1 @_B_eq(i64 1, i64 %111)
  store i1 %112, i1* %20
  %113 = load i1, i1* %20
  call void @_B_printBoolean(i1 %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %114 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %130, label %117
116:
  store i64 3329, i64* %71
  br label %84
117:
  %118 = extractvalue {i64, i1} %114, 0
  store i64 %118, i64* %22
  %119 = load i64, i64* %22
  %120 = call i1 @_B_eq(i64 1, i64 %119)
  store i1 %120, i1* %23
  %121 = load i1, i1* %23
  call void @_B_printBoolean(i1 %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %122 = call i1 @_B_eq(i64 0, i64 9223372036854775806)
  store i1 %122, i1* %25
  %123 = load i1, i1* %25
  call void @_B_printBoolean(i1 %123)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %124 = call i1 @_B_eq(i64 0, i64 1)
  store i1 %124, i1* %27
  %125 = load i1, i1* %27
  call void @_B_printBoolean(i1 %125)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %126 = call i1 @_B_eq(i64 0, i64 0)
  store i1 %126, i1* %29
  %127 = load i1, i1* %29
  call void @_B_printBoolean(i1 %127)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %128 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %129 = extractvalue {i64, i1} %128, 1
  br i1 %129, label %138, label %131
130:
  store i64 3585, i64* %71
  br label %84
131:
  %132 = extractvalue {i64, i1} %128, 0
  store i64 %132, i64* %31
  %133 = load i64, i64* %31
  %134 = call i1 @_B_eq(i64 0, i64 %133)
  store i1 %134, i1* %32
  %135 = load i1, i1* %32
  call void @_B_printBoolean(i1 %135)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %136 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %137 = extractvalue {i64, i1} %136, 1
  br i1 %137, label %146, label %139
138:
  store i64 4865, i64* %71
  br label %84
139:
  %140 = extractvalue {i64, i1} %136, 0
  store i64 %140, i64* %34
  %141 = load i64, i64* %34
  %142 = call i1 @_B_eq(i64 0, i64 %141)
  store i1 %142, i1* %35
  %143 = load i1, i1* %35
  call void @_B_printBoolean(i1 %143)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %144 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %154, label %147
146:
  store i64 5121, i64* %71
  br label %84
147:
  %148 = extractvalue {i64, i1} %144, 0
  store i64 %148, i64* %37
  %149 = load i64, i64* %37
  %150 = call i1 @_B_eq(i64 %149, i64 9223372036854775806)
  store i1 %150, i1* %38
  %151 = load i1, i1* %38
  call void @_B_printBoolean(i1 %151)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %152 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %153 = extractvalue {i64, i1} %152, 1
  br i1 %153, label %162, label %155
154:
  store i64 5633, i64* %71
  br label %84
155:
  %156 = extractvalue {i64, i1} %152, 0
  store i64 %156, i64* %40
  %157 = load i64, i64* %40
  %158 = call i1 @_B_eq(i64 %157, i64 1)
  store i1 %158, i1* %41
  %159 = load i1, i1* %41
  call void @_B_printBoolean(i1 %159)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %160 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %161 = extractvalue {i64, i1} %160, 1
  br i1 %161, label %170, label %163
162:
  store i64 5889, i64* %71
  br label %84
163:
  %164 = extractvalue {i64, i1} %160, 0
  store i64 %164, i64* %43
  %165 = load i64, i64* %43
  %166 = call i1 @_B_eq(i64 %165, i64 0)
  store i1 %166, i1* %44
  %167 = load i1, i1* %44
  call void @_B_printBoolean(i1 %167)
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  %168 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %169 = extractvalue {i64, i1} %168, 1
  br i1 %169, label %175, label %171
170:
  store i64 6145, i64* %71
  br label %84
171:
  %172 = extractvalue {i64, i1} %168, 0
  store i64 %172, i64* %46
  %173 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %174 = extractvalue {i64, i1} %173, 1
  br i1 %174, label %184, label %176
175:
  store i64 6401, i64* %71
  br label %84
176:
  %177 = extractvalue {i64, i1} %173, 0
  store i64 %177, i64* %47
  %178 = load i64, i64* %46
  %179 = load i64, i64* %47
  %180 = call i1 @_B_eq(i64 %178, i64 %179)
  store i1 %180, i1* %48
  %181 = load i1, i1* %48
  call void @_B_printBoolean(i1 %181)
  store i8 addrspace(1)* null, i8 addrspace(1)** %49
  %182 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %183 = extractvalue {i64, i1} %182, 1
  br i1 %183, label %189, label %185
184:
  store i64 6401, i64* %71
  br label %84
185:
  %186 = extractvalue {i64, i1} %182, 0
  store i64 %186, i64* %50
  %187 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %188 = extractvalue {i64, i1} %187, 1
  br i1 %188, label %198, label %190
189:
  store i64 6657, i64* %71
  br label %84
190:
  %191 = extractvalue {i64, i1} %187, 0
  store i64 %191, i64* %51
  %192 = load i64, i64* %50
  %193 = load i64, i64* %51
  %194 = call i1 @_B_eq(i64 %192, i64 %193)
  store i1 %194, i1* %52
  %195 = load i1, i1* %52
  call void @_B_printBoolean(i1 %195)
  store i8 addrspace(1)* null, i8 addrspace(1)** %53
  %196 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %197 = extractvalue {i64, i1} %196, 1
  br i1 %197, label %206, label %199
198:
  store i64 6657, i64* %71
  br label %84
199:
  %200 = extractvalue {i64, i1} %196, 0
  store i64 %200, i64* %54
  %201 = load i64, i64* %54
  %202 = call i1 @_B_eq(i64 %201, i64 9223372036854775806)
  store i1 %202, i1* %55
  %203 = load i1, i1* %55
  call void @_B_printBoolean(i1 %203)
  store i8 addrspace(1)* null, i8 addrspace(1)** %56
  %204 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %205 = extractvalue {i64, i1} %204, 1
  br i1 %205, label %214, label %207
206:
  store i64 7169, i64* %71
  br label %84
207:
  %208 = extractvalue {i64, i1} %204, 0
  store i64 %208, i64* %57
  %209 = load i64, i64* %57
  %210 = call i1 @_B_eq(i64 %209, i64 1)
  store i1 %210, i1* %58
  %211 = load i1, i1* %58
  call void @_B_printBoolean(i1 %211)
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  %212 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %213 = extractvalue {i64, i1} %212, 1
  br i1 %213, label %222, label %215
214:
  store i64 7425, i64* %71
  br label %84
215:
  %216 = extractvalue {i64, i1} %212, 0
  store i64 %216, i64* %60
  %217 = load i64, i64* %60
  %218 = call i1 @_B_eq(i64 %217, i64 0)
  store i1 %218, i1* %61
  %219 = load i1, i1* %61
  call void @_B_printBoolean(i1 %219)
  store i8 addrspace(1)* null, i8 addrspace(1)** %62
  %220 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %221 = extractvalue {i64, i1} %220, 1
  br i1 %221, label %227, label %223
222:
  store i64 7681, i64* %71
  br label %84
223:
  %224 = extractvalue {i64, i1} %220, 0
  store i64 %224, i64* %63
  %225 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %226 = extractvalue {i64, i1} %225, 1
  br i1 %226, label %236, label %228
227:
  store i64 7937, i64* %71
  br label %84
228:
  %229 = extractvalue {i64, i1} %225, 0
  store i64 %229, i64* %64
  %230 = load i64, i64* %63
  %231 = load i64, i64* %64
  %232 = call i1 @_B_eq(i64 %230, i64 %231)
  store i1 %232, i1* %65
  %233 = load i1, i1* %65
  call void @_B_printBoolean(i1 %233)
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  %234 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %235 = extractvalue {i64, i1} %234, 1
  br i1 %235, label %241, label %237
236:
  store i64 7937, i64* %71
  br label %84
237:
  %238 = extractvalue {i64, i1} %234, 0
  store i64 %238, i64* %67
  %239 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %240 = extractvalue {i64, i1} %239, 1
  br i1 %240, label %248, label %242
241:
  store i64 8193, i64* %71
  br label %84
242:
  %243 = extractvalue {i64, i1} %239, 0
  store i64 %243, i64* %68
  %244 = load i64, i64* %67
  %245 = load i64, i64* %68
  %246 = call i1 @_B_eq(i64 %244, i64 %245)
  store i1 %246, i1* %69
  %247 = load i1, i1* %69
  call void @_B_printBoolean(i1 %247)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  ret void
248:
  store i64 8193, i64* %71
  br label %84
}
define internal i1 @_B_eq(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %8 = load i64, i64* %a
  %9 = load i64, i64* %b
  %10 = icmp eq i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 8964)
  unreachable
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
  call void @_bal_panic(i64 9988)
  unreachable
}
