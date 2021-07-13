@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
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
  %30 = alloca i64
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i64
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i64
  %43 = alloca i8
  %44 = load i8*, i8** @_bal_stack_guard
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %51, label %46
46:
  %47 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 9223372036854775806, i64 1)
  %48 = extractvalue {i64, i1} %47, 1
  br i1 %48, label %58, label %52
49:
  %50 = load i64, i64* %42
  call void @_bal_panic(i64 %50)
  unreachable
51:
  call void @_bal_panic(i64 772)
  unreachable
52:
  %53 = extractvalue {i64, i1} %47, 0
  store i64 %53, i64* %1
  %54 = load i64, i64* %1
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %56 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 9223372036854775806, i64 0)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %65, label %59
58:
  store i64 1025, i64* %42
  br label %49
59:
  %60 = extractvalue {i64, i1} %56, 0
  store i64 %60, i64* %3
  %61 = load i64, i64* %3
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61)
  call void @_Bio__println(i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %63 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %64 = extractvalue {i64, i1} %63, 1
  br i1 %64, label %71, label %66
65:
  store i64 1281, i64* %42
  br label %49
66:
  %67 = extractvalue {i64, i1} %63, 0
  store i64 %67, i64* %5
  %68 = load i64, i64* %5
  %69 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 9223372036854775806, i64 %68)
  %70 = extractvalue {i64, i1} %69, 1
  br i1 %70, label %78, label %72
71:
  store i64 1537, i64* %42
  br label %49
72:
  %73 = extractvalue {i64, i1} %69, 0
  store i64 %73, i64* %6
  %74 = load i64, i64* %6
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %74)
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %76 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 1, i64 1)
  %77 = extractvalue {i64, i1} %76, 1
  br i1 %77, label %85, label %79
78:
  store i64 1537, i64* %42
  br label %49
79:
  %80 = extractvalue {i64, i1} %76, 0
  store i64 %80, i64* %8
  %81 = load i64, i64* %8
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81)
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %83 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 1, i64 0)
  %84 = extractvalue {i64, i1} %83, 1
  br i1 %84, label %92, label %86
85:
  store i64 2049, i64* %42
  br label %49
86:
  %87 = extractvalue {i64, i1} %83, 0
  store i64 %87, i64* %10
  %88 = load i64, i64* %10
  %89 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %88)
  call void @_Bio__println(i8 addrspace(1)* %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %90 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %91 = extractvalue {i64, i1} %90, 1
  br i1 %91, label %98, label %93
92:
  store i64 2305, i64* %42
  br label %49
93:
  %94 = extractvalue {i64, i1} %90, 0
  store i64 %94, i64* %12
  %95 = load i64, i64* %12
  %96 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 1, i64 %95)
  %97 = extractvalue {i64, i1} %96, 1
  br i1 %97, label %105, label %99
98:
  store i64 2561, i64* %42
  br label %49
99:
  %100 = extractvalue {i64, i1} %96, 0
  store i64 %100, i64* %13
  %101 = load i64, i64* %13
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101)
  call void @_Bio__println(i8 addrspace(1)* %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %103 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 0, i64 1)
  %104 = extractvalue {i64, i1} %103, 1
  br i1 %104, label %112, label %106
105:
  store i64 2561, i64* %42
  br label %49
106:
  %107 = extractvalue {i64, i1} %103, 0
  store i64 %107, i64* %15
  %108 = load i64, i64* %15
  %109 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %108)
  call void @_Bio__println(i8 addrspace(1)* %109)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %110 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 0, i64 0)
  %111 = extractvalue {i64, i1} %110, 1
  br i1 %111, label %119, label %113
112:
  store i64 3073, i64* %42
  br label %49
113:
  %114 = extractvalue {i64, i1} %110, 0
  store i64 %114, i64* %17
  %115 = load i64, i64* %17
  %116 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %115)
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %117 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %125, label %120
119:
  store i64 3329, i64* %42
  br label %49
120:
  %121 = extractvalue {i64, i1} %117, 0
  store i64 %121, i64* %19
  %122 = load i64, i64* %19
  %123 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 0, i64 %122)
  %124 = extractvalue {i64, i1} %123, 1
  br i1 %124, label %132, label %126
125:
  store i64 3585, i64* %42
  br label %49
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
  store i64 3585, i64* %42
  br label %49
133:
  %134 = extractvalue {i64, i1} %130, 0
  store i64 %134, i64* %22
  %135 = load i64, i64* %22
  %136 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %135, i64 1)
  %137 = extractvalue {i64, i1} %136, 1
  br i1 %137, label %145, label %139
138:
  store i64 4097, i64* %42
  br label %49
139:
  %140 = extractvalue {i64, i1} %136, 0
  store i64 %140, i64* %23
  %141 = load i64, i64* %23
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141)
  call void @_Bio__println(i8 addrspace(1)* %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %143 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %144 = extractvalue {i64, i1} %143, 1
  br i1 %144, label %151, label %146
145:
  store i64 4097, i64* %42
  br label %49
146:
  %147 = extractvalue {i64, i1} %143, 0
  store i64 %147, i64* %25
  %148 = load i64, i64* %25
  %149 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %148, i64 0)
  %150 = extractvalue {i64, i1} %149, 1
  br i1 %150, label %158, label %152
151:
  store i64 4353, i64* %42
  br label %49
152:
  %153 = extractvalue {i64, i1} %149, 0
  store i64 %153, i64* %26
  %154 = load i64, i64* %26
  %155 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %154)
  call void @_Bio__println(i8 addrspace(1)* %155)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %156 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %157 = extractvalue {i64, i1} %156, 1
  br i1 %157, label %163, label %159
158:
  store i64 4353, i64* %42
  br label %49
159:
  %160 = extractvalue {i64, i1} %156, 0
  store i64 %160, i64* %28
  %161 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %162 = extractvalue {i64, i1} %161, 1
  br i1 %162, label %170, label %164
163:
  store i64 4609, i64* %42
  br label %49
164:
  %165 = extractvalue {i64, i1} %161, 0
  store i64 %165, i64* %29
  %166 = load i64, i64* %28
  %167 = load i64, i64* %29
  %168 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %166, i64 %167)
  %169 = extractvalue {i64, i1} %168, 1
  br i1 %169, label %177, label %171
170:
  store i64 4609, i64* %42
  br label %49
171:
  %172 = extractvalue {i64, i1} %168, 0
  store i64 %172, i64* %30
  %173 = load i64, i64* %30
  %174 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %173)
  call void @_Bio__println(i8 addrspace(1)* %174)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %175 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %176 = extractvalue {i64, i1} %175, 1
  br i1 %176, label %183, label %178
177:
  store i64 4609, i64* %42
  br label %49
178:
  %179 = extractvalue {i64, i1} %175, 0
  store i64 %179, i64* %32
  %180 = load i64, i64* %32
  %181 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %180, i64 1)
  %182 = extractvalue {i64, i1} %181, 1
  br i1 %182, label %190, label %184
183:
  store i64 5121, i64* %42
  br label %49
184:
  %185 = extractvalue {i64, i1} %181, 0
  store i64 %185, i64* %33
  %186 = load i64, i64* %33
  %187 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %186)
  call void @_Bio__println(i8 addrspace(1)* %187)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %188 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %189 = extractvalue {i64, i1} %188, 1
  br i1 %189, label %196, label %191
190:
  store i64 5121, i64* %42
  br label %49
191:
  %192 = extractvalue {i64, i1} %188, 0
  store i64 %192, i64* %35
  %193 = load i64, i64* %35
  %194 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %193, i64 0)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %203, label %197
196:
  store i64 5377, i64* %42
  br label %49
197:
  %198 = extractvalue {i64, i1} %194, 0
  store i64 %198, i64* %36
  %199 = load i64, i64* %36
  %200 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %199)
  call void @_Bio__println(i8 addrspace(1)* %200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %201 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %202 = extractvalue {i64, i1} %201, 1
  br i1 %202, label %208, label %204
203:
  store i64 5377, i64* %42
  br label %49
204:
  %205 = extractvalue {i64, i1} %201, 0
  store i64 %205, i64* %38
  %206 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %207 = extractvalue {i64, i1} %206, 1
  br i1 %207, label %215, label %209
208:
  store i64 5633, i64* %42
  br label %49
209:
  %210 = extractvalue {i64, i1} %206, 0
  store i64 %210, i64* %39
  %211 = load i64, i64* %38
  %212 = load i64, i64* %39
  %213 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %211, i64 %212)
  %214 = extractvalue {i64, i1} %213, 1
  br i1 %214, label %220, label %216
215:
  store i64 5633, i64* %42
  br label %49
216:
  %217 = extractvalue {i64, i1} %213, 0
  store i64 %217, i64* %40
  %218 = load i64, i64* %40
  %219 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %218)
  call void @_Bio__println(i8 addrspace(1)* %219)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  ret void
220:
  store i64 5633, i64* %42
  br label %49
}
