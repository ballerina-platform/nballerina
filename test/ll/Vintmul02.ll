@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  br i1 %45, label %57, label %46
46:
  %47 = call i64 @_B_mul(i64 9223372036854775806, i64 1)
  store i64 %47, i64* %1
  %48 = load i64, i64* %1
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %50 = call i64 @_B_mul(i64 9223372036854775806, i64 0)
  store i64 %50, i64* %3
  %51 = load i64, i64* %3
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %51)
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %53 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %54 = extractvalue {i64, i1} %53, 1
  br i1 %54, label %72, label %58
55:
  %56 = load i64, i64* %42
  call void @_bal_panic(i64 %56)
  unreachable
57:
  call void @_bal_panic(i64 772)
  unreachable
58:
  %59 = extractvalue {i64, i1} %53, 0
  store i64 %59, i64* %5
  %60 = load i64, i64* %5
  %61 = call i64 @_B_mul(i64 9223372036854775806, i64 %60)
  store i64 %61, i64* %6
  %62 = load i64, i64* %6
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %64 = call i64 @_B_mul(i64 1, i64 1)
  store i64 %64, i64* %8
  %65 = load i64, i64* %8
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %67 = call i64 @_B_mul(i64 1, i64 0)
  store i64 %67, i64* %10
  %68 = load i64, i64* %10
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %68)
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %70 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %71 = extractvalue {i64, i1} %70, 1
  br i1 %71, label %87, label %73
72:
  store i64 1537, i64* %42
  br label %55
73:
  %74 = extractvalue {i64, i1} %70, 0
  store i64 %74, i64* %12
  %75 = load i64, i64* %12
  %76 = call i64 @_B_mul(i64 1, i64 %75)
  store i64 %76, i64* %13
  %77 = load i64, i64* %13
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77)
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %79 = call i64 @_B_mul(i64 0, i64 1)
  store i64 %79, i64* %15
  %80 = load i64, i64* %15
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80)
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %82 = call i64 @_B_mul(i64 0, i64 0)
  store i64 %82, i64* %17
  %83 = load i64, i64* %17
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83)
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %85 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %86 = extractvalue {i64, i1} %85, 1
  br i1 %86, label %96, label %88
87:
  store i64 2561, i64* %42
  br label %55
88:
  %89 = extractvalue {i64, i1} %85, 0
  store i64 %89, i64* %19
  %90 = load i64, i64* %19
  %91 = call i64 @_B_mul(i64 0, i64 %90)
  store i64 %91, i64* %20
  %92 = load i64, i64* %20
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92)
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %94 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %105, label %97
96:
  store i64 3585, i64* %42
  br label %55
97:
  %98 = extractvalue {i64, i1} %94, 0
  store i64 %98, i64* %22
  %99 = load i64, i64* %22
  %100 = call i64 @_B_mul(i64 %99, i64 1)
  store i64 %100, i64* %23
  %101 = load i64, i64* %23
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101)
  call void @_Bio__println(i8 addrspace(1)* %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %103 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %104 = extractvalue {i64, i1} %103, 1
  br i1 %104, label %114, label %106
105:
  store i64 4097, i64* %42
  br label %55
106:
  %107 = extractvalue {i64, i1} %103, 0
  store i64 %107, i64* %25
  %108 = load i64, i64* %25
  %109 = call i64 @_B_mul(i64 %108, i64 0)
  store i64 %109, i64* %26
  %110 = load i64, i64* %26
  %111 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %110)
  call void @_Bio__println(i8 addrspace(1)* %111)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %112 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %113 = extractvalue {i64, i1} %112, 1
  br i1 %113, label %119, label %115
114:
  store i64 4353, i64* %42
  br label %55
115:
  %116 = extractvalue {i64, i1} %112, 0
  store i64 %116, i64* %28
  %117 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %129, label %120
119:
  store i64 4609, i64* %42
  br label %55
120:
  %121 = extractvalue {i64, i1} %117, 0
  store i64 %121, i64* %29
  %122 = load i64, i64* %28
  %123 = load i64, i64* %29
  %124 = call i64 @_B_mul(i64 %122, i64 %123)
  store i64 %124, i64* %30
  %125 = load i64, i64* %30
  %126 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %125)
  call void @_Bio__println(i8 addrspace(1)* %126)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %127 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %128 = extractvalue {i64, i1} %127, 1
  br i1 %128, label %138, label %130
129:
  store i64 4609, i64* %42
  br label %55
130:
  %131 = extractvalue {i64, i1} %127, 0
  store i64 %131, i64* %32
  %132 = load i64, i64* %32
  %133 = call i64 @_B_mul(i64 %132, i64 1)
  store i64 %133, i64* %33
  %134 = load i64, i64* %33
  %135 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %134)
  call void @_Bio__println(i8 addrspace(1)* %135)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %136 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %137 = extractvalue {i64, i1} %136, 1
  br i1 %137, label %147, label %139
138:
  store i64 5121, i64* %42
  br label %55
139:
  %140 = extractvalue {i64, i1} %136, 0
  store i64 %140, i64* %35
  %141 = load i64, i64* %35
  %142 = call i64 @_B_mul(i64 %141, i64 0)
  store i64 %142, i64* %36
  %143 = load i64, i64* %36
  %144 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %143)
  call void @_Bio__println(i8 addrspace(1)* %144)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %145 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %146 = extractvalue {i64, i1} %145, 1
  br i1 %146, label %152, label %148
147:
  store i64 5377, i64* %42
  br label %55
148:
  %149 = extractvalue {i64, i1} %145, 0
  store i64 %149, i64* %38
  %150 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %151 = extractvalue {i64, i1} %150, 1
  br i1 %151, label %160, label %153
152:
  store i64 5633, i64* %42
  br label %55
153:
  %154 = extractvalue {i64, i1} %150, 0
  store i64 %154, i64* %39
  %155 = load i64, i64* %38
  %156 = load i64, i64* %39
  %157 = call i64 @_B_mul(i64 %155, i64 %156)
  store i64 %157, i64* %40
  %158 = load i64, i64* %40
  %159 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %158)
  call void @_Bio__println(i8 addrspace(1)* %159)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  ret void
160:
  store i64 5633, i64* %42
  br label %55
}
define internal i64 @_B_mul(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %19, label %16
13:
  %14 = load i64, i64* %4
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 6404)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  ret i64 %18
19:
  store i64 6657, i64* %4
  br label %13
}
