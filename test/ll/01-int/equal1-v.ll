@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %one = alloca i64
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %zero = alloca i64
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
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
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i1
  %50 = alloca i64
  %51 = alloca i8 addrspace(1)*
  %52 = alloca i1
  %53 = alloca i64
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i1
  %56 = alloca i64
  %57 = alloca i8 addrspace(1)*
  %58 = alloca i1
  %59 = alloca i64
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i8 addrspace(1)*
  %62 = alloca i8
  %63 = load i8*, i8** @_bal_stack_guard
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %116, label %65
65:
  store i64 9223372036854775806, i64* %big
  %66 = load i64, i64* %big
  %67 = icmp eq i64 %66, 9223372036854775806
  store i1 %67, i1* %1
  %68 = load i1, i1* %1
  call void @_B_printBoolean(i1 %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %69 = load i64, i64* %big
  %70 = icmp eq i64 %69, 1
  store i1 %70, i1* %3
  %71 = load i1, i1* %3
  call void @_B_printBoolean(i1 %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %72 = load i64, i64* %big
  %73 = icmp eq i64 %72, 0
  store i1 %73, i1* %5
  %74 = load i1, i1* %5
  call void @_B_printBoolean(i1 %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %75 = load i64, i64* %big
  %76 = icmp eq i64 %75, -1
  store i1 %76, i1* %7
  %77 = load i1, i1* %7
  call void @_B_printBoolean(i1 %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %78 = load i64, i64* %big
  %79 = icmp eq i64 %78, -9223372036854775806
  store i1 %79, i1* %9
  %80 = load i1, i1* %9
  call void @_B_printBoolean(i1 %80)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  store i64 1, i64* %one
  %81 = load i64, i64* %one
  %82 = icmp eq i64 %81, 9223372036854775806
  store i1 %82, i1* %11
  %83 = load i1, i1* %11
  call void @_B_printBoolean(i1 %83)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %84 = load i64, i64* %one
  %85 = icmp eq i64 %84, 1
  store i1 %85, i1* %13
  %86 = load i1, i1* %13
  call void @_B_printBoolean(i1 %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %87 = load i64, i64* %one
  %88 = icmp eq i64 %87, 0
  store i1 %88, i1* %15
  %89 = load i1, i1* %15
  call void @_B_printBoolean(i1 %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %90 = load i64, i64* %one
  %91 = icmp eq i64 %90, -1
  store i1 %91, i1* %17
  %92 = load i1, i1* %17
  call void @_B_printBoolean(i1 %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %93 = load i64, i64* %one
  %94 = icmp eq i64 %93, -9223372036854775806
  store i1 %94, i1* %19
  %95 = load i1, i1* %19
  call void @_B_printBoolean(i1 %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  store i64 0, i64* %zero
  %96 = load i64, i64* %zero
  %97 = icmp eq i64 %96, 9223372036854775806
  store i1 %97, i1* %21
  %98 = load i1, i1* %21
  call void @_B_printBoolean(i1 %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %99 = load i64, i64* %zero
  %100 = icmp eq i64 %99, 1
  store i1 %100, i1* %23
  %101 = load i1, i1* %23
  call void @_B_printBoolean(i1 %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %102 = load i64, i64* %zero
  %103 = icmp eq i64 %102, 0
  store i1 %103, i1* %25
  %104 = load i1, i1* %25
  call void @_B_printBoolean(i1 %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %105 = load i64, i64* %zero
  %106 = icmp eq i64 %105, -1
  store i1 %106, i1* %27
  %107 = load i1, i1* %27
  call void @_B_printBoolean(i1 %107)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %108 = load i64, i64* %zero
  %109 = icmp eq i64 %108, -9223372036854775806
  store i1 %109, i1* %29
  %110 = load i1, i1* %29
  call void @_B_printBoolean(i1 %110)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %111 = load i64, i64* %one
  %112 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %111)
  %113 = extractvalue {i64, i1} %112, 1
  br i1 %113, label %126, label %118
114:
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %61
  call void @_bal_panic(i8 addrspace(1)* %115)
  unreachable
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %117)
  unreachable
118:
  %119 = extractvalue {i64, i1} %112, 0
  store i64 %119, i64* %32
  %120 = load i64, i64* %32
  %121 = icmp eq i64 %120, 9223372036854775806
  store i1 %121, i1* %31
  %122 = load i1, i1* %31
  call void @_B_printBoolean(i1 %122)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %123 = load i64, i64* %one
  %124 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %123)
  %125 = extractvalue {i64, i1} %124, 1
  br i1 %125, label %136, label %128
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169)
  store i8 addrspace(1)* %127, i8 addrspace(1)** %61
  br label %114
128:
  %129 = extractvalue {i64, i1} %124, 0
  store i64 %129, i64* %35
  %130 = load i64, i64* %35
  %131 = icmp eq i64 %130, 1
  store i1 %131, i1* %34
  %132 = load i1, i1* %34
  call void @_B_printBoolean(i1 %132)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %133 = load i64, i64* %one
  %134 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %133)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %146, label %138
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 7425)
  store i8 addrspace(1)* %137, i8 addrspace(1)** %61
  br label %114
138:
  %139 = extractvalue {i64, i1} %134, 0
  store i64 %139, i64* %38
  %140 = load i64, i64* %38
  %141 = icmp eq i64 %140, 0
  store i1 %141, i1* %37
  %142 = load i1, i1* %37
  call void @_B_printBoolean(i1 %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %143 = load i64, i64* %one
  %144 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %143)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %156, label %148
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 7681)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %61
  br label %114
148:
  %149 = extractvalue {i64, i1} %144, 0
  store i64 %149, i64* %41
  %150 = load i64, i64* %41
  %151 = icmp eq i64 %150, -1
  store i1 %151, i1* %40
  %152 = load i1, i1* %40
  call void @_B_printBoolean(i1 %152)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %153 = load i64, i64* %one
  %154 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %153)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %166, label %158
156:
  %157 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937)
  store i8 addrspace(1)* %157, i8 addrspace(1)** %61
  br label %114
158:
  %159 = extractvalue {i64, i1} %154, 0
  store i64 %159, i64* %44
  %160 = load i64, i64* %44
  %161 = icmp eq i64 %160, -9223372036854775806
  store i1 %161, i1* %43
  %162 = load i1, i1* %43
  call void @_B_printBoolean(i1 %162)
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  %163 = load i64, i64* %big
  %164 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %163)
  %165 = extractvalue {i64, i1} %164, 1
  br i1 %165, label %176, label %168
166:
  %167 = call i8 addrspace(1)* @_bal_panic_construct(i64 8193)
  store i8 addrspace(1)* %167, i8 addrspace(1)** %61
  br label %114
168:
  %169 = extractvalue {i64, i1} %164, 0
  store i64 %169, i64* %47
  %170 = load i64, i64* %47
  %171 = icmp eq i64 %170, 9223372036854775806
  store i1 %171, i1* %46
  %172 = load i1, i1* %46
  call void @_B_printBoolean(i1 %172)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %173 = load i64, i64* %big
  %174 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %173)
  %175 = extractvalue {i64, i1} %174, 1
  br i1 %175, label %186, label %178
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 8705)
  store i8 addrspace(1)* %177, i8 addrspace(1)** %61
  br label %114
178:
  %179 = extractvalue {i64, i1} %174, 0
  store i64 %179, i64* %50
  %180 = load i64, i64* %50
  %181 = icmp eq i64 %180, 1
  store i1 %181, i1* %49
  %182 = load i1, i1* %49
  call void @_B_printBoolean(i1 %182)
  store i8 addrspace(1)* null, i8 addrspace(1)** %51
  %183 = load i64, i64* %big
  %184 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %183)
  %185 = extractvalue {i64, i1} %184, 1
  br i1 %185, label %196, label %188
186:
  %187 = call i8 addrspace(1)* @_bal_panic_construct(i64 8961)
  store i8 addrspace(1)* %187, i8 addrspace(1)** %61
  br label %114
188:
  %189 = extractvalue {i64, i1} %184, 0
  store i64 %189, i64* %53
  %190 = load i64, i64* %53
  %191 = icmp eq i64 %190, 0
  store i1 %191, i1* %52
  %192 = load i1, i1* %52
  call void @_B_printBoolean(i1 %192)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %193 = load i64, i64* %big
  %194 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %193)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %206, label %198
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217)
  store i8 addrspace(1)* %197, i8 addrspace(1)** %61
  br label %114
198:
  %199 = extractvalue {i64, i1} %194, 0
  store i64 %199, i64* %56
  %200 = load i64, i64* %56
  %201 = icmp eq i64 %200, -1
  store i1 %201, i1* %55
  %202 = load i1, i1* %55
  call void @_B_printBoolean(i1 %202)
  store i8 addrspace(1)* null, i8 addrspace(1)** %57
  %203 = load i64, i64* %big
  %204 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %203)
  %205 = extractvalue {i64, i1} %204, 1
  br i1 %205, label %213, label %208
206:
  %207 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473)
  store i8 addrspace(1)* %207, i8 addrspace(1)** %61
  br label %114
208:
  %209 = extractvalue {i64, i1} %204, 0
  store i64 %209, i64* %59
  %210 = load i64, i64* %59
  %211 = icmp eq i64 %210, -9223372036854775806
  store i1 %211, i1* %58
  %212 = load i1, i1* %58
  call void @_B_printBoolean(i1 %212)
  store i8 addrspace(1)* null, i8 addrspace(1)** %60
  ret void
213:
  %214 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729)
  store i8 addrspace(1)* %214, i8 addrspace(1)** %61
  br label %114
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
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 10500)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
