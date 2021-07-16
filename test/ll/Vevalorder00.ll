@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  call void @_bal_panic(i64 772)
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
  call void @_bal_panic(i64 2052)
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
  %55 = alloca i64
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
  br i1 %65, label %77, label %69
66:
  %67 = load i64, i64* %55
  call void @_bal_panic(i64 %67)
  unreachable
68:
  call void @_bal_panic(i64 3588)
  unreachable
69:
  %70 = extractvalue {i64, i1} %64, 0
  store i64 %70, i64* %3
  %71 = load i64, i64* %3
  store i64 %71, i64* %mul
  %72 = call i64 @_B_one()
  store i64 %72, i64* %4
  %73 = call i64 @_B_two()
  store i64 %73, i64* %5
  %74 = load i64, i64* %4
  %75 = load i64, i64* %5
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %78, label %79
77:
  store i64 3841, i64* %55
  br label %66
78:
  store i64 4610, i64* %55
  br label %66
79:
  %80 = icmp eq i64 %74, -9223372036854775808
  %81 = icmp eq i64 %75, -1
  %82 = and i1 %80, %81
  br i1 %82, label %91, label %83
83:
  %84 = sdiv i64 %74, %75
  store i64 %84, i64* %6
  %85 = load i64, i64* %6
  store i64 %85, i64* %div
  %86 = call i64 @_B_one()
  store i64 %86, i64* %7
  %87 = call i64 @_B_two()
  store i64 %87, i64* %8
  %88 = load i64, i64* %7
  %89 = load i64, i64* %8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %92, label %93
91:
  store i64 4609, i64* %55
  br label %66
92:
  store i64 5378, i64* %55
  br label %66
93:
  %94 = icmp eq i64 %88, -9223372036854775808
  %95 = icmp eq i64 %89, -1
  %96 = and i1 %94, %95
  br i1 %96, label %99, label %97
97:
  %98 = srem i64 %88, %89
  store i64 %98, i64* %9
  br label %100
99:
  store i64 0, i64* %9
  br label %100
100:
  %101 = load i64, i64* %9
  store i64 %101, i64* %rmd
  %102 = call i64 @_B_one()
  store i64 %102, i64* %10
  %103 = call i64 @_B_two()
  store i64 %103, i64* %11
  %104 = load i64, i64* %10
  %105 = load i64, i64* %11
  %106 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %104, i64 %105)
  %107 = extractvalue {i64, i1} %106, 1
  br i1 %107, label %117, label %108
108:
  %109 = extractvalue {i64, i1} %106, 0
  store i64 %109, i64* %12
  %110 = load i64, i64* %12
  store i64 %110, i64* %add
  %111 = call i64 @_B_one()
  store i64 %111, i64* %13
  %112 = call i64 @_B_two()
  store i64 %112, i64* %14
  %113 = load i64, i64* %13
  %114 = load i64, i64* %14
  %115 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %113, i64 %114)
  %116 = extractvalue {i64, i1} %115, 1
  br i1 %116, label %209, label %118
117:
  store i64 6145, i64* %55
  br label %66
118:
  %119 = extractvalue {i64, i1} %115, 0
  store i64 %119, i64* %15
  %120 = load i64, i64* %15
  store i64 %120, i64* %sub
  %121 = call i64 @_B_one()
  store i64 %121, i64* %17
  %122 = call i64 @_B_two()
  store i64 %122, i64* %18
  %123 = load i64, i64* %17
  %124 = load i64, i64* %18
  %125 = icmp slt i64 %123, %124
  store i1 %125, i1* %16
  %126 = load i1, i1* %16
  store i1 %126, i1* %lt
  %127 = call i64 @_B_one()
  store i64 %127, i64* %20
  %128 = call i64 @_B_two()
  store i64 %128, i64* %21
  %129 = load i64, i64* %20
  %130 = load i64, i64* %21
  %131 = icmp sle i64 %129, %130
  store i1 %131, i1* %19
  %132 = load i1, i1* %19
  store i1 %132, i1* %lteq
  %133 = call i64 @_B_one()
  store i64 %133, i64* %23
  %134 = call i64 @_B_two()
  store i64 %134, i64* %24
  %135 = load i64, i64* %23
  %136 = load i64, i64* %24
  %137 = icmp sgt i64 %135, %136
  store i1 %137, i1* %22
  %138 = load i1, i1* %22
  store i1 %138, i1* %gt
  %139 = call i64 @_B_one()
  store i64 %139, i64* %26
  %140 = call i64 @_B_two()
  store i64 %140, i64* %27
  %141 = load i64, i64* %26
  %142 = load i64, i64* %27
  %143 = icmp sge i64 %141, %142
  store i1 %143, i1* %25
  %144 = load i1, i1* %25
  store i1 %144, i1* %gteq
  %145 = call i64 @_B_one()
  store i64 %145, i64* %29
  %146 = call i64 @_B_two()
  store i64 %146, i64* %30
  %147 = load i64, i64* %29
  %148 = load i64, i64* %30
  %149 = icmp eq i64 %147, %148
  store i1 %149, i1* %28
  %150 = load i1, i1* %28
  store i1 %150, i1* %eq
  %151 = call i64 @_B_one()
  store i64 %151, i64* %32
  %152 = call i64 @_B_two()
  store i64 %152, i64* %33
  %153 = load i64, i64* %32
  %154 = load i64, i64* %33
  %155 = icmp ne i64 %153, %154
  store i1 %155, i1* %31
  %156 = load i1, i1* %31
  store i1 %156, i1* %neq
  %157 = call i64 @_B_one()
  store i64 %157, i64* %35
  %158 = call i64 @_B_two()
  store i64 %158, i64* %36
  %159 = load i64, i64* %35
  %160 = load i64, i64* %36
  %161 = icmp eq i64 %159, %160
  store i1 %161, i1* %34
  %162 = load i1, i1* %34
  store i1 %162, i1* %eeq
  %163 = call i64 @_B_one()
  store i64 %163, i64* %38
  %164 = call i64 @_B_two()
  store i64 %164, i64* %39
  %165 = load i64, i64* %38
  %166 = load i64, i64* %39
  %167 = icmp ne i64 %165, %166
  store i1 %167, i1* %37
  %168 = load i1, i1* %37
  store i1 %168, i1* %neeq
  %169 = call i64 @_B_one()
  store i64 %169, i64* %40
  %170 = call i64 @_B_two()
  store i64 %170, i64* %41
  %171 = load i64, i64* %40
  %172 = load i64, i64* %41
  %173 = and i64 %171, %172
  store i64 %173, i64* %42
  %174 = load i64, i64* %42
  store i64 %174, i64* %and
  %175 = call i64 @_B_one()
  store i64 %175, i64* %43
  %176 = call i64 @_B_two()
  store i64 %176, i64* %44
  %177 = load i64, i64* %43
  %178 = load i64, i64* %44
  %179 = xor i64 %177, %178
  store i64 %179, i64* %45
  %180 = load i64, i64* %45
  store i64 %180, i64* %xor
  %181 = call i64 @_B_one()
  store i64 %181, i64* %46
  %182 = call i64 @_B_two()
  store i64 %182, i64* %47
  %183 = load i64, i64* %46
  %184 = load i64, i64* %47
  %185 = or i64 %183, %184
  store i64 %185, i64* %48
  %186 = load i64, i64* %48
  store i64 %186, i64* %or
  %187 = call i64 @_B_one()
  store i64 %187, i64* %49
  %188 = call i64 @_B_two()
  store i64 %188, i64* %50
  %189 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %190 = bitcast i8 addrspace(1)* %189 to [2 x i8 addrspace(1)*] addrspace(1)*
  %191 = load i64, i64* %49
  %192 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %191)
  %193 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %190, i64 0, i64 0
  store i8 addrspace(1)* %192, i8 addrspace(1)* addrspace(1)* %193
  %194 = load i64, i64* %50
  %195 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %194)
  %196 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %190, i64 0, i64 1
  store i8 addrspace(1)* %195, i8 addrspace(1)* addrspace(1)* %196
  %197 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %190 to [0 x i8 addrspace(1)*] addrspace(1)*
  %198 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %199 = bitcast i8 addrspace(1)* %198 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %200 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %199, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %200
  %201 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %199, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %201
  %202 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %199, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %197, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %202
  %203 = getelementptr i8, i8 addrspace(1)* %198, i64 1297036692682702848
  store i8 addrspace(1)* %203, i8 addrspace(1)** %51
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %51
  store i8 addrspace(1)* %204, i8 addrspace(1)** %arr
  %205 = call i64 @_B_one()
  store i64 %205, i64* %52
  %206 = call i64 @_B_two()
  store i64 %206, i64* %53
  %207 = load i64, i64* %52
  %208 = load i64, i64* %53
  call void @_B_ignore(i64 %207, i64 %208)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  ret void
209:
  store i64 6913, i64* %55
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
  call void @_bal_panic(i64 17924)
  unreachable
}
