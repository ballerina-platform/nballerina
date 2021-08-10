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
  %61 = alloca i64
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
  br i1 %113, label %125, label %117
114:
  %115 = load i64, i64* %61
  call void @_bal_panic(i64 %115)
  unreachable
116:
  call void @_bal_panic(i64 772)
  unreachable
117:
  %118 = extractvalue {i64, i1} %112, 0
  store i64 %118, i64* %32
  %119 = load i64, i64* %32
  %120 = icmp eq i64 %119, 9223372036854775806
  store i1 %120, i1* %31
  %121 = load i1, i1* %31
  call void @_B_printBoolean(i1 %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %122 = load i64, i64* %one
  %123 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %122)
  %124 = extractvalue {i64, i1} %123, 1
  br i1 %124, label %134, label %126
125:
  store i64 6913, i64* %61
  br label %114
126:
  %127 = extractvalue {i64, i1} %123, 0
  store i64 %127, i64* %35
  %128 = load i64, i64* %35
  %129 = icmp eq i64 %128, 1
  store i1 %129, i1* %34
  %130 = load i1, i1* %34
  call void @_B_printBoolean(i1 %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %131 = load i64, i64* %one
  %132 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %131)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %143, label %135
134:
  store i64 7169, i64* %61
  br label %114
135:
  %136 = extractvalue {i64, i1} %132, 0
  store i64 %136, i64* %38
  %137 = load i64, i64* %38
  %138 = icmp eq i64 %137, 0
  store i1 %138, i1* %37
  %139 = load i1, i1* %37
  call void @_B_printBoolean(i1 %139)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %140 = load i64, i64* %one
  %141 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %140)
  %142 = extractvalue {i64, i1} %141, 1
  br i1 %142, label %152, label %144
143:
  store i64 7425, i64* %61
  br label %114
144:
  %145 = extractvalue {i64, i1} %141, 0
  store i64 %145, i64* %41
  %146 = load i64, i64* %41
  %147 = icmp eq i64 %146, -1
  store i1 %147, i1* %40
  %148 = load i1, i1* %40
  call void @_B_printBoolean(i1 %148)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %149 = load i64, i64* %one
  %150 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %149)
  %151 = extractvalue {i64, i1} %150, 1
  br i1 %151, label %161, label %153
152:
  store i64 7681, i64* %61
  br label %114
153:
  %154 = extractvalue {i64, i1} %150, 0
  store i64 %154, i64* %44
  %155 = load i64, i64* %44
  %156 = icmp eq i64 %155, -9223372036854775806
  store i1 %156, i1* %43
  %157 = load i1, i1* %43
  call void @_B_printBoolean(i1 %157)
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  %158 = load i64, i64* %big
  %159 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %158)
  %160 = extractvalue {i64, i1} %159, 1
  br i1 %160, label %170, label %162
161:
  store i64 7937, i64* %61
  br label %114
162:
  %163 = extractvalue {i64, i1} %159, 0
  store i64 %163, i64* %47
  %164 = load i64, i64* %47
  %165 = icmp eq i64 %164, 9223372036854775806
  store i1 %165, i1* %46
  %166 = load i1, i1* %46
  call void @_B_printBoolean(i1 %166)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %167 = load i64, i64* %big
  %168 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %167)
  %169 = extractvalue {i64, i1} %168, 1
  br i1 %169, label %179, label %171
170:
  store i64 8449, i64* %61
  br label %114
171:
  %172 = extractvalue {i64, i1} %168, 0
  store i64 %172, i64* %50
  %173 = load i64, i64* %50
  %174 = icmp eq i64 %173, 1
  store i1 %174, i1* %49
  %175 = load i1, i1* %49
  call void @_B_printBoolean(i1 %175)
  store i8 addrspace(1)* null, i8 addrspace(1)** %51
  %176 = load i64, i64* %big
  %177 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %176)
  %178 = extractvalue {i64, i1} %177, 1
  br i1 %178, label %188, label %180
179:
  store i64 8705, i64* %61
  br label %114
180:
  %181 = extractvalue {i64, i1} %177, 0
  store i64 %181, i64* %53
  %182 = load i64, i64* %53
  %183 = icmp eq i64 %182, 0
  store i1 %183, i1* %52
  %184 = load i1, i1* %52
  call void @_B_printBoolean(i1 %184)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %185 = load i64, i64* %big
  %186 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %185)
  %187 = extractvalue {i64, i1} %186, 1
  br i1 %187, label %197, label %189
188:
  store i64 8961, i64* %61
  br label %114
189:
  %190 = extractvalue {i64, i1} %186, 0
  store i64 %190, i64* %56
  %191 = load i64, i64* %56
  %192 = icmp eq i64 %191, -1
  store i1 %192, i1* %55
  %193 = load i1, i1* %55
  call void @_B_printBoolean(i1 %193)
  store i8 addrspace(1)* null, i8 addrspace(1)** %57
  %194 = load i64, i64* %big
  %195 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %194)
  %196 = extractvalue {i64, i1} %195, 1
  br i1 %196, label %203, label %198
197:
  store i64 9217, i64* %61
  br label %114
198:
  %199 = extractvalue {i64, i1} %195, 0
  store i64 %199, i64* %59
  %200 = load i64, i64* %59
  %201 = icmp eq i64 %200, -9223372036854775806
  store i1 %201, i1* %58
  %202 = load i1, i1* %58
  call void @_B_printBoolean(i1 %202)
  store i8 addrspace(1)* null, i8 addrspace(1)** %60
  ret void
203:
  store i64 9473, i64* %61
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
  call void @_bal_panic(i64 10244)
  unreachable
}
