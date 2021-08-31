@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_alloc(i64)
define internal i64 @_B_one() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %6)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret i64 1
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_two() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %6)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret i64 2
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %mul = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %div = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %rmd = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %add = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %sub = alloca i64
  %16 = alloca i1
  %17 = alloca i64
  %18 = alloca i64
  %lt = alloca i1
  %19 = alloca i1
  %20 = alloca i64
  %21 = alloca i64
  %lteq = alloca i1
  %22 = alloca i1
  %23 = alloca i64
  %24 = alloca i64
  %gt = alloca i1
  %25 = alloca i1
  %26 = alloca i64
  %27 = alloca i64
  %gteq = alloca i1
  %28 = alloca i1
  %29 = alloca i64
  %30 = alloca i64
  %eq = alloca i1
  %31 = alloca i1
  %32 = alloca i64
  %33 = alloca i64
  %neq = alloca i1
  %34 = alloca i1
  %35 = alloca i64
  %36 = alloca i64
  %eeq = alloca i1
  %37 = alloca i1
  %38 = alloca i64
  %39 = alloca i64
  %neeq = alloca i1
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i64
  %and = alloca i64
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i64
  %xor = alloca i64
  %46 = alloca i64
  %47 = alloca i64
  %48 = alloca i64
  %or = alloca i64
  %49 = alloca i64
  %50 = alloca i64
  %51 = alloca i8 addrspace(1)*
  %arr = alloca i8 addrspace(1)*
  %52 = alloca i64
  %53 = alloca i64
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i8 addrspace(1)*
  %56 = alloca i8
  %57 = load i8*, i8** @_bal_stack_guard
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %68, label %59
59:
  %60 = call i64 @_B_one()
  store i64 %60, i64* %1
  %61 = call i64 @_B_two()
  store i64 %61, i64* %2
  %62 = load i64, i64* %1
  %63 = load i64, i64* %2
  %64 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %62, i64 %63)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %78, label %70
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %55
  call void @_bal_panic(i8 addrspace(1)* %67)
  unreachable
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588)
  call void @_bal_panic(i8 addrspace(1)* %69)
  unreachable
70:
  %71 = extractvalue {i64, i1} %64, 0
  store i64 %71, i64* %3
  %72 = load i64, i64* %3
  store i64 %72, i64* %mul
  %73 = call i64 @_B_one()
  store i64 %73, i64* %4
  %74 = call i64 @_B_two()
  store i64 %74, i64* %5
  %75 = load i64, i64* %4
  %76 = load i64, i64* %5
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %80, label %82
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %55
  br label %66
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 4610)
  store i8 addrspace(1)* %81, i8 addrspace(1)** %55
  br label %66
82:
  %83 = icmp eq i64 %75, -9223372036854775808
  %84 = icmp eq i64 %76, -1
  %85 = and i1 %83, %84
  br i1 %85, label %94, label %86
86:
  %87 = sdiv i64 %75, %76
  store i64 %87, i64* %6
  %88 = load i64, i64* %6
  store i64 %88, i64* %div
  %89 = call i64 @_B_one()
  store i64 %89, i64* %7
  %90 = call i64 @_B_two()
  store i64 %90, i64* %8
  %91 = load i64, i64* %7
  %92 = load i64, i64* %8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %98
94:
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %95, i8 addrspace(1)** %55
  br label %66
96:
  %97 = call i8 addrspace(1)* @_bal_panic_construct(i64 5378)
  store i8 addrspace(1)* %97, i8 addrspace(1)** %55
  br label %66
98:
  %99 = icmp eq i64 %91, -9223372036854775808
  %100 = icmp eq i64 %92, -1
  %101 = and i1 %99, %100
  br i1 %101, label %104, label %102
102:
  %103 = srem i64 %91, %92
  store i64 %103, i64* %9
  br label %105
104:
  store i64 0, i64* %9
  br label %105
105:
  %106 = load i64, i64* %9
  store i64 %106, i64* %rmd
  %107 = call i64 @_B_one()
  store i64 %107, i64* %10
  %108 = call i64 @_B_two()
  store i64 %108, i64* %11
  %109 = load i64, i64* %10
  %110 = load i64, i64* %11
  %111 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %109, i64 %110)
  %112 = extractvalue {i64, i1} %111, 1
  br i1 %112, label %122, label %113
113:
  %114 = extractvalue {i64, i1} %111, 0
  store i64 %114, i64* %12
  %115 = load i64, i64* %12
  store i64 %115, i64* %add
  %116 = call i64 @_B_one()
  store i64 %116, i64* %13
  %117 = call i64 @_B_two()
  store i64 %117, i64* %14
  %118 = load i64, i64* %13
  %119 = load i64, i64* %14
  %120 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %118, i64 %119)
  %121 = extractvalue {i64, i1} %120, 1
  br i1 %121, label %215, label %124
122:
  %123 = call i8 addrspace(1)* @_bal_panic_construct(i64 6145)
  store i8 addrspace(1)* %123, i8 addrspace(1)** %55
  br label %66
124:
  %125 = extractvalue {i64, i1} %120, 0
  store i64 %125, i64* %15
  %126 = load i64, i64* %15
  store i64 %126, i64* %sub
  %127 = call i64 @_B_one()
  store i64 %127, i64* %17
  %128 = call i64 @_B_two()
  store i64 %128, i64* %18
  %129 = load i64, i64* %17
  %130 = load i64, i64* %18
  %131 = icmp slt i64 %129, %130
  store i1 %131, i1* %16
  %132 = load i1, i1* %16
  store i1 %132, i1* %lt
  %133 = call i64 @_B_one()
  store i64 %133, i64* %20
  %134 = call i64 @_B_two()
  store i64 %134, i64* %21
  %135 = load i64, i64* %20
  %136 = load i64, i64* %21
  %137 = icmp sle i64 %135, %136
  store i1 %137, i1* %19
  %138 = load i1, i1* %19
  store i1 %138, i1* %lteq
  %139 = call i64 @_B_one()
  store i64 %139, i64* %23
  %140 = call i64 @_B_two()
  store i64 %140, i64* %24
  %141 = load i64, i64* %23
  %142 = load i64, i64* %24
  %143 = icmp sgt i64 %141, %142
  store i1 %143, i1* %22
  %144 = load i1, i1* %22
  store i1 %144, i1* %gt
  %145 = call i64 @_B_one()
  store i64 %145, i64* %26
  %146 = call i64 @_B_two()
  store i64 %146, i64* %27
  %147 = load i64, i64* %26
  %148 = load i64, i64* %27
  %149 = icmp sge i64 %147, %148
  store i1 %149, i1* %25
  %150 = load i1, i1* %25
  store i1 %150, i1* %gteq
  %151 = call i64 @_B_one()
  store i64 %151, i64* %29
  %152 = call i64 @_B_two()
  store i64 %152, i64* %30
  %153 = load i64, i64* %29
  %154 = load i64, i64* %30
  %155 = icmp eq i64 %153, %154
  store i1 %155, i1* %28
  %156 = load i1, i1* %28
  store i1 %156, i1* %eq
  %157 = call i64 @_B_one()
  store i64 %157, i64* %32
  %158 = call i64 @_B_two()
  store i64 %158, i64* %33
  %159 = load i64, i64* %32
  %160 = load i64, i64* %33
  %161 = icmp ne i64 %159, %160
  store i1 %161, i1* %31
  %162 = load i1, i1* %31
  store i1 %162, i1* %neq
  %163 = call i64 @_B_one()
  store i64 %163, i64* %35
  %164 = call i64 @_B_two()
  store i64 %164, i64* %36
  %165 = load i64, i64* %35
  %166 = load i64, i64* %36
  %167 = icmp eq i64 %165, %166
  store i1 %167, i1* %34
  %168 = load i1, i1* %34
  store i1 %168, i1* %eeq
  %169 = call i64 @_B_one()
  store i64 %169, i64* %38
  %170 = call i64 @_B_two()
  store i64 %170, i64* %39
  %171 = load i64, i64* %38
  %172 = load i64, i64* %39
  %173 = icmp ne i64 %171, %172
  store i1 %173, i1* %37
  %174 = load i1, i1* %37
  store i1 %174, i1* %neeq
  %175 = call i64 @_B_one()
  store i64 %175, i64* %40
  %176 = call i64 @_B_two()
  store i64 %176, i64* %41
  %177 = load i64, i64* %40
  %178 = load i64, i64* %41
  %179 = and i64 %177, %178
  store i64 %179, i64* %42
  %180 = load i64, i64* %42
  store i64 %180, i64* %and
  %181 = call i64 @_B_one()
  store i64 %181, i64* %43
  %182 = call i64 @_B_two()
  store i64 %182, i64* %44
  %183 = load i64, i64* %43
  %184 = load i64, i64* %44
  %185 = xor i64 %183, %184
  store i64 %185, i64* %45
  %186 = load i64, i64* %45
  store i64 %186, i64* %xor
  %187 = call i64 @_B_one()
  store i64 %187, i64* %46
  %188 = call i64 @_B_two()
  store i64 %188, i64* %47
  %189 = load i64, i64* %46
  %190 = load i64, i64* %47
  %191 = or i64 %189, %190
  store i64 %191, i64* %48
  %192 = load i64, i64* %48
  store i64 %192, i64* %or
  %193 = call i64 @_B_one()
  store i64 %193, i64* %49
  %194 = call i64 @_B_two()
  store i64 %194, i64* %50
  %195 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %196 = bitcast i8 addrspace(1)* %195 to [2 x i8 addrspace(1)*] addrspace(1)*
  %197 = load i64, i64* %49
  %198 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %197)
  %199 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %196, i64 0, i64 0
  store i8 addrspace(1)* %198, i8 addrspace(1)* addrspace(1)* %199
  %200 = load i64, i64* %50
  %201 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %200)
  %202 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %196, i64 0, i64 1
  store i8 addrspace(1)* %201, i8 addrspace(1)* addrspace(1)* %202
  %203 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %196 to [0 x i8 addrspace(1)*] addrspace(1)*
  %204 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %205 = bitcast i8 addrspace(1)* %204 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %206 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %206
  %207 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %207
  %208 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %203, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %208
  %209 = getelementptr i8, i8 addrspace(1)* %204, i64 1297036692682702848
  store i8 addrspace(1)* %209, i8 addrspace(1)** %51
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %51
  store i8 addrspace(1)* %210, i8 addrspace(1)** %arr
  %211 = call i64 @_B_one()
  store i64 %211, i64* %52
  %212 = call i64 @_B_two()
  store i64 %212, i64* %53
  %213 = load i64, i64* %52
  %214 = load i64, i64* %53
  call void @_B_ignore(i64 %213, i64 %214)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  ret void
215:
  %216 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913)
  store i8 addrspace(1)* %216, i8 addrspace(1)** %55
  br label %66
}
define internal void @_B_ignore(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 17924)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
