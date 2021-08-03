@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %i = alloca i64
  %j = alloca i64
  %k = alloca i64
  %l = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
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
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i8
  %33 = load i8*, i8** @_bal_stack_guard
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %53, label %35
35:
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 14)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 22)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 16)
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  store i64 12, i64* %i
  store i64 6, i64* %j
  store i64 3, i64* %k
  store i64 4, i64* %l
  %48 = load i64, i64* %j
  %49 = load i64, i64* %k
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %55
51:
  %52 = load i64, i64* %31
  call void @_bal_panic(i64 %52)
  unreachable
53:
  call void @_bal_panic(i64 772)
  unreachable
54:
  store i64 5378, i64* %31
  br label %51
55:
  %56 = icmp eq i64 %48, -9223372036854775808
  %57 = icmp eq i64 %49, -1
  %58 = and i1 %56, %57
  br i1 %58, label %65, label %59
59:
  %60 = sdiv i64 %48, %49
  store i64 %60, i64* %13
  %61 = load i64, i64* %i
  %62 = load i64, i64* %13
  %63 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %61, i64 %62)
  %64 = extractvalue {i64, i1} %63, 1
  br i1 %64, label %73, label %66
65:
  store i64 5377, i64* %31
  br label %51
66:
  %67 = extractvalue {i64, i1} %63, 0
  store i64 %67, i64* %14
  %68 = load i64, i64* %14
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %68)
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %70 = load i64, i64* %j
  %71 = load i64, i64* %k
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %74, label %75
73:
  store i64 5377, i64* %31
  br label %51
74:
  store i64 5634, i64* %31
  br label %51
75:
  %76 = icmp eq i64 %70, -9223372036854775808
  %77 = icmp eq i64 %71, -1
  %78 = and i1 %76, %77
  br i1 %78, label %85, label %79
79:
  %80 = sdiv i64 %70, %71
  store i64 %80, i64* %16
  %81 = load i64, i64* %16
  %82 = load i64, i64* %i
  %83 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %81, i64 %82)
  %84 = extractvalue {i64, i1} %83, 1
  br i1 %84, label %94, label %86
85:
  store i64 5633, i64* %31
  br label %51
86:
  %87 = extractvalue {i64, i1} %83, 0
  store i64 %87, i64* %17
  %88 = load i64, i64* %17
  %89 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %88)
  call void @_Bio__println(i8 addrspace(1)* %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %90 = load i64, i64* %j
  %91 = load i64, i64* %k
  %92 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %90, i64 %91)
  %93 = extractvalue {i64, i1} %92, 1
  br i1 %93, label %101, label %95
94:
  store i64 5633, i64* %31
  br label %51
95:
  %96 = extractvalue {i64, i1} %92, 0
  store i64 %96, i64* %19
  %97 = load i64, i64* %19
  %98 = load i64, i64* %i
  %99 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %97, i64 %98)
  %100 = extractvalue {i64, i1} %99, 1
  br i1 %100, label %110, label %102
101:
  store i64 5889, i64* %31
  br label %51
102:
  %103 = extractvalue {i64, i1} %99, 0
  store i64 %103, i64* %20
  %104 = load i64, i64* %20
  %105 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %104)
  call void @_Bio__println(i8 addrspace(1)* %105)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %106 = load i64, i64* %j
  %107 = load i64, i64* %k
  %108 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %106, i64 %107)
  %109 = extractvalue {i64, i1} %108, 1
  br i1 %109, label %117, label %111
110:
  store i64 5889, i64* %31
  br label %51
111:
  %112 = extractvalue {i64, i1} %108, 0
  store i64 %112, i64* %22
  %113 = load i64, i64* %i
  %114 = load i64, i64* %22
  %115 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %113, i64 %114)
  %116 = extractvalue {i64, i1} %115, 1
  br i1 %116, label %125, label %118
117:
  store i64 6145, i64* %31
  br label %51
118:
  %119 = extractvalue {i64, i1} %115, 0
  store i64 %119, i64* %23
  %120 = load i64, i64* %23
  %121 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %120)
  call void @_Bio__println(i8 addrspace(1)* %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %122 = load i64, i64* %l
  %123 = load i64, i64* %k
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %126, label %127
125:
  store i64 6145, i64* %31
  br label %51
126:
  store i64 6402, i64* %31
  br label %51
127:
  %128 = icmp eq i64 %122, -9223372036854775808
  %129 = icmp eq i64 %123, -1
  %130 = and i1 %128, %129
  br i1 %130, label %133, label %131
131:
  %132 = srem i64 %122, %123
  store i64 %132, i64* %25
  br label %134
133:
  store i64 0, i64* %25
  br label %134
134:
  %135 = load i64, i64* %25
  %136 = load i64, i64* %j
  %137 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %135, i64 %136)
  %138 = extractvalue {i64, i1} %137, 1
  br i1 %138, label %146, label %139
139:
  %140 = extractvalue {i64, i1} %137, 0
  store i64 %140, i64* %26
  %141 = load i64, i64* %26
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141)
  call void @_Bio__println(i8 addrspace(1)* %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %143 = load i64, i64* %j
  %144 = load i64, i64* %l
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %147, label %148
146:
  store i64 6401, i64* %31
  br label %51
147:
  store i64 6658, i64* %31
  br label %51
148:
  %149 = icmp eq i64 %143, -9223372036854775808
  %150 = icmp eq i64 %144, -1
  %151 = and i1 %149, %150
  br i1 %151, label %154, label %152
152:
  %153 = srem i64 %143, %144
  store i64 %153, i64* %28
  br label %155
154:
  store i64 0, i64* %28
  br label %155
155:
  %156 = load i64, i64* %28
  %157 = load i64, i64* %k
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160
159:
  store i64 6658, i64* %31
  br label %51
160:
  %161 = icmp eq i64 %156, -9223372036854775808
  %162 = icmp eq i64 %157, -1
  %163 = and i1 %161, %162
  br i1 %163, label %166, label %164
164:
  %165 = srem i64 %156, %157
  store i64 %165, i64* %29
  br label %167
166:
  store i64 0, i64* %29
  br label %167
167:
  %168 = load i64, i64* %29
  %169 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %168)
  call void @_Bio__println(i8 addrspace(1)* %169)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  ret void
}
