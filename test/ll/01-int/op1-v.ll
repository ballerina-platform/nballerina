@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %31 = alloca i8 addrspace(1)*
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
  br i1 %50, label %55, label %57
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  call void @_bal_panic(i8 addrspace(1)* %52)
  unreachable
53:
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %54)
  unreachable
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 5634)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %31
  br label %51
57:
  %58 = icmp eq i64 %48, -9223372036854775808
  %59 = icmp eq i64 %49, -1
  %60 = and i1 %58, %59
  br i1 %60, label %67, label %61
61:
  %62 = sdiv i64 %48, %49
  store i64 %62, i64* %13
  %63 = load i64, i64* %i
  %64 = load i64, i64* %13
  %65 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %63, i64 %64)
  %66 = extractvalue {i64, i1} %65, 1
  br i1 %66, label %76, label %69
67:
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %31
  br label %51
69:
  %70 = extractvalue {i64, i1} %65, 0
  store i64 %70, i64* %14
  %71 = load i64, i64* %14
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %71)
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %73 = load i64, i64* %j
  %74 = load i64, i64* %k
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %78, label %80
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633)
  store i8 addrspace(1)* %77, i8 addrspace(1)** %31
  br label %51
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 5890)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %31
  br label %51
80:
  %81 = icmp eq i64 %73, -9223372036854775808
  %82 = icmp eq i64 %74, -1
  %83 = and i1 %81, %82
  br i1 %83, label %90, label %84
84:
  %85 = sdiv i64 %73, %74
  store i64 %85, i64* %16
  %86 = load i64, i64* %16
  %87 = load i64, i64* %i
  %88 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %86, i64 %87)
  %89 = extractvalue {i64, i1} %88, 1
  br i1 %89, label %100, label %92
90:
  %91 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889)
  store i8 addrspace(1)* %91, i8 addrspace(1)** %31
  br label %51
92:
  %93 = extractvalue {i64, i1} %88, 0
  store i64 %93, i64* %17
  %94 = load i64, i64* %17
  %95 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %94)
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %96 = load i64, i64* %j
  %97 = load i64, i64* %k
  %98 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %96, i64 %97)
  %99 = extractvalue {i64, i1} %98, 1
  br i1 %99, label %108, label %102
100:
  %101 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889)
  store i8 addrspace(1)* %101, i8 addrspace(1)** %31
  br label %51
102:
  %103 = extractvalue {i64, i1} %98, 0
  store i64 %103, i64* %19
  %104 = load i64, i64* %19
  %105 = load i64, i64* %i
  %106 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %104, i64 %105)
  %107 = extractvalue {i64, i1} %106, 1
  br i1 %107, label %118, label %110
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 6145)
  store i8 addrspace(1)* %109, i8 addrspace(1)** %31
  br label %51
110:
  %111 = extractvalue {i64, i1} %106, 0
  store i64 %111, i64* %20
  %112 = load i64, i64* %20
  %113 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %112)
  call void @_Bio__println(i8 addrspace(1)* %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %114 = load i64, i64* %j
  %115 = load i64, i64* %k
  %116 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %114, i64 %115)
  %117 = extractvalue {i64, i1} %116, 1
  br i1 %117, label %126, label %120
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 6145)
  store i8 addrspace(1)* %119, i8 addrspace(1)** %31
  br label %51
120:
  %121 = extractvalue {i64, i1} %116, 0
  store i64 %121, i64* %22
  %122 = load i64, i64* %i
  %123 = load i64, i64* %22
  %124 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %122, i64 %123)
  %125 = extractvalue {i64, i1} %124, 1
  br i1 %125, label %135, label %128
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401)
  store i8 addrspace(1)* %127, i8 addrspace(1)** %31
  br label %51
128:
  %129 = extractvalue {i64, i1} %124, 0
  store i64 %129, i64* %23
  %130 = load i64, i64* %23
  %131 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %130)
  call void @_Bio__println(i8 addrspace(1)* %131)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %132 = load i64, i64* %l
  %133 = load i64, i64* %k
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %137, label %139
135:
  %136 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401)
  store i8 addrspace(1)* %136, i8 addrspace(1)** %31
  br label %51
137:
  %138 = call i8 addrspace(1)* @_bal_panic_construct(i64 6658)
  store i8 addrspace(1)* %138, i8 addrspace(1)** %31
  br label %51
139:
  %140 = icmp eq i64 %132, -9223372036854775808
  %141 = icmp eq i64 %133, -1
  %142 = and i1 %140, %141
  br i1 %142, label %145, label %143
143:
  %144 = srem i64 %132, %133
  store i64 %144, i64* %25
  br label %146
145:
  store i64 0, i64* %25
  br label %146
146:
  %147 = load i64, i64* %25
  %148 = load i64, i64* %j
  %149 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %147, i64 %148)
  %150 = extractvalue {i64, i1} %149, 1
  br i1 %150, label %158, label %151
151:
  %152 = extractvalue {i64, i1} %149, 0
  store i64 %152, i64* %26
  %153 = load i64, i64* %26
  %154 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %153)
  call void @_Bio__println(i8 addrspace(1)* %154)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %155 = load i64, i64* %j
  %156 = load i64, i64* %l
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %160, label %162
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 6657)
  store i8 addrspace(1)* %159, i8 addrspace(1)** %31
  br label %51
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 6914)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %31
  br label %51
162:
  %163 = icmp eq i64 %155, -9223372036854775808
  %164 = icmp eq i64 %156, -1
  %165 = and i1 %163, %164
  br i1 %165, label %168, label %166
166:
  %167 = srem i64 %155, %156
  store i64 %167, i64* %28
  br label %169
168:
  store i64 0, i64* %28
  br label %169
169:
  %170 = load i64, i64* %28
  %171 = load i64, i64* %k
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175
173:
  %174 = call i8 addrspace(1)* @_bal_panic_construct(i64 6914)
  store i8 addrspace(1)* %174, i8 addrspace(1)** %31
  br label %51
175:
  %176 = icmp eq i64 %170, -9223372036854775808
  %177 = icmp eq i64 %171, -1
  %178 = and i1 %176, %177
  br i1 %178, label %181, label %179
179:
  %180 = srem i64 %170, %171
  store i64 %180, i64* %29
  br label %182
181:
  store i64 0, i64* %29
  br label %182
182:
  %183 = load i64, i64* %29
  %184 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %183)
  call void @_Bio__println(i8 addrspace(1)* %184)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  ret void
}
