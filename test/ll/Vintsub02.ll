@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
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
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i64
  %43 = alloca i64
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i64
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i64
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i64
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i64
  %52 = alloca i8
  %53 = load i8*, i8** @_bal_stack_guard
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %78, label %55
55:
  %56 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806)
  store i64 %56, i64* %1
  %57 = load i64, i64* %1
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57)
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %59 = call i64 @_B_sub(i64 1, i64 9223372036854775806)
  store i64 %59, i64* %3
  %60 = load i64, i64* %3
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60)
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %62 = call i64 @_B_sub(i64 0, i64 9223372036854775806)
  store i64 %62, i64* %5
  %63 = load i64, i64* %5
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %65 = call i64 @_B_sub(i64 9223372036854775806, i64 1)
  store i64 %65, i64* %7
  %66 = load i64, i64* %7
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %68 = call i64 @_B_sub(i64 1, i64 1)
  store i64 %68, i64* %9
  %69 = load i64, i64* %9
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69)
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %71 = call i64 @_B_sub(i64 0, i64 1)
  store i64 %71, i64* %11
  %72 = load i64, i64* %11
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %72)
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %74 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %83, label %79
76:
  %77 = load i64, i64* %51
  call void @_bal_panic(i64 %77)
  unreachable
78:
  call void @_bal_panic(i64 772)
  unreachable
79:
  %80 = extractvalue {i64, i1} %74, 0
  store i64 %80, i64* %13
  %81 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %82 = extractvalue {i64, i1} %81, 1
  br i1 %82, label %102, label %84
83:
  store i64 2817, i64* %51
  br label %76
84:
  %85 = extractvalue {i64, i1} %81, 0
  store i64 %85, i64* %14
  %86 = load i64, i64* %13
  %87 = load i64, i64* %14
  %88 = call i64 @_B_sub(i64 %86, i64 %87)
  store i64 %88, i64* %15
  %89 = load i64, i64* %15
  %90 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %89)
  call void @_Bio__println(i8 addrspace(1)* %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %91 = call i64 @_B_sub(i64 9223372036854775806, i64 0)
  store i64 %91, i64* %17
  %92 = load i64, i64* %17
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92)
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %94 = call i64 @_B_sub(i64 1, i64 0)
  store i64 %94, i64* %19
  %95 = load i64, i64* %19
  %96 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %95)
  call void @_Bio__println(i8 addrspace(1)* %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %97 = call i64 @_B_sub(i64 0, i64 0)
  store i64 %97, i64* %21
  %98 = load i64, i64* %21
  %99 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %98)
  call void @_Bio__println(i8 addrspace(1)* %99)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %100 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %101 = extractvalue {i64, i1} %100, 1
  br i1 %101, label %107, label %103
102:
  store i64 2817, i64* %51
  br label %76
103:
  %104 = extractvalue {i64, i1} %100, 0
  store i64 %104, i64* %23
  %105 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 0)
  %106 = extractvalue {i64, i1} %105, 1
  br i1 %106, label %117, label %108
107:
  store i64 4097, i64* %51
  br label %76
108:
  %109 = extractvalue {i64, i1} %105, 0
  store i64 %109, i64* %24
  %110 = load i64, i64* %23
  %111 = load i64, i64* %24
  %112 = call i64 @_B_sub(i64 %110, i64 %111)
  store i64 %112, i64* %25
  %113 = load i64, i64* %25
  %114 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %113)
  call void @_Bio__println(i8 addrspace(1)* %114)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %115 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %116 = extractvalue {i64, i1} %115, 1
  br i1 %116, label %122, label %118
117:
  store i64 4097, i64* %51
  br label %76
118:
  %119 = extractvalue {i64, i1} %115, 0
  store i64 %119, i64* %27
  %120 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 0)
  %121 = extractvalue {i64, i1} %120, 1
  br i1 %121, label %132, label %123
122:
  store i64 4353, i64* %51
  br label %76
123:
  %124 = extractvalue {i64, i1} %120, 0
  store i64 %124, i64* %28
  %125 = load i64, i64* %27
  %126 = load i64, i64* %28
  %127 = call i64 @_B_sub(i64 %125, i64 %126)
  store i64 %127, i64* %29
  %128 = load i64, i64* %29
  %129 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %128)
  call void @_Bio__println(i8 addrspace(1)* %129)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %130 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %131 = extractvalue {i64, i1} %130, 1
  br i1 %131, label %141, label %133
132:
  store i64 4353, i64* %51
  br label %76
133:
  %134 = extractvalue {i64, i1} %130, 0
  store i64 %134, i64* %31
  %135 = load i64, i64* %31
  %136 = call i64 @_B_sub(i64 9223372036854775806, i64 %135)
  store i64 %136, i64* %32
  %137 = load i64, i64* %32
  %138 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %137)
  call void @_Bio__println(i8 addrspace(1)* %138)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %139 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %140 = extractvalue {i64, i1} %139, 1
  br i1 %140, label %150, label %142
141:
  store i64 4865, i64* %51
  br label %76
142:
  %143 = extractvalue {i64, i1} %139, 0
  store i64 %143, i64* %34
  %144 = load i64, i64* %34
  %145 = call i64 @_B_sub(i64 1, i64 %144)
  store i64 %145, i64* %35
  %146 = load i64, i64* %35
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %146)
  call void @_Bio__println(i8 addrspace(1)* %147)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %148 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %149 = extractvalue {i64, i1} %148, 1
  br i1 %149, label %159, label %151
150:
  store i64 5121, i64* %51
  br label %76
151:
  %152 = extractvalue {i64, i1} %148, 0
  store i64 %152, i64* %37
  %153 = load i64, i64* %37
  %154 = call i64 @_B_sub(i64 0, i64 %153)
  store i64 %154, i64* %38
  %155 = load i64, i64* %38
  %156 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %155)
  call void @_Bio__println(i8 addrspace(1)* %156)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %157 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %158 = extractvalue {i64, i1} %157, 1
  br i1 %158, label %164, label %160
159:
  store i64 5377, i64* %51
  br label %76
160:
  %161 = extractvalue {i64, i1} %157, 0
  store i64 %161, i64* %40
  %162 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %163 = extractvalue {i64, i1} %162, 1
  br i1 %163, label %170, label %165
164:
  store i64 5633, i64* %51
  br label %76
165:
  %166 = extractvalue {i64, i1} %162, 0
  store i64 %166, i64* %41
  %167 = load i64, i64* %41
  %168 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %167)
  %169 = extractvalue {i64, i1} %168, 1
  br i1 %169, label %187, label %171
170:
  store i64 5633, i64* %51
  br label %76
171:
  %172 = extractvalue {i64, i1} %168, 0
  store i64 %172, i64* %42
  %173 = load i64, i64* %40
  %174 = load i64, i64* %42
  %175 = call i64 @_B_sub(i64 %173, i64 %174)
  store i64 %175, i64* %43
  %176 = load i64, i64* %43
  %177 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %176)
  call void @_Bio__println(i8 addrspace(1)* %177)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %178 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806)
  store i64 %178, i64* %45
  %179 = load i64, i64* %45
  %180 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %179)
  call void @_Bio__println(i8 addrspace(1)* %180)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %181 = call i64 @_B_sub(i64 1, i64 9223372036854775806)
  store i64 %181, i64* %47
  %182 = load i64, i64* %47
  %183 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %182)
  call void @_Bio__println(i8 addrspace(1)* %183)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %184 = call i64 @_B_sub(i64 0, i64 9223372036854775806)
  store i64 %184, i64* %49
  %185 = load i64, i64* %49
  %186 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %185)
  call void @_Bio__println(i8 addrspace(1)* %186)
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  ret void
187:
  store i64 5633, i64* %51
  br label %76
}
define internal i64 @_B_sub(i64 %0, i64 %1) {
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
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %19, label %16
13:
  %14 = load i64, i64* %4
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 7428)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  ret i64 %18
19:
  store i64 7681, i64* %4
  br label %13
}
