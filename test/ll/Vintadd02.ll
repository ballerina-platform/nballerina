@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i64
  %37 = alloca i8
  %38 = load i8*, i8** @_bal_stack_guard
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %45, label %40
40:
  %41 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %42 = extractvalue {i64, i1} %41, 1
  br i1 %42, label %52, label %46
43:
  %44 = load i64, i64* %36
  call void @_bal_panic(i64 %44)
  unreachable
45:
  call void @_bal_panic(i64 772)
  unreachable
46:
  %47 = extractvalue {i64, i1} %41, 0
  store i64 %47, i64* %1
  %48 = load i64, i64* %1
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %50 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %51 = extractvalue {i64, i1} %50, 1
  br i1 %51, label %58, label %53
52:
  store i64 1025, i64* %36
  br label %43
53:
  %54 = extractvalue {i64, i1} %50, 0
  store i64 %54, i64* %3
  %55 = load i64, i64* %3
  %56 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %55, i64 11)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %65, label %59
58:
  store i64 1281, i64* %36
  br label %43
59:
  %60 = extractvalue {i64, i1} %56, 0
  store i64 %60, i64* %4
  %61 = load i64, i64* %4
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61)
  call void @_Bio__println(i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %63 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %64 = extractvalue {i64, i1} %63, 1
  br i1 %64, label %71, label %66
65:
  store i64 1281, i64* %36
  br label %43
66:
  %67 = extractvalue {i64, i1} %63, 0
  store i64 %67, i64* %6
  %68 = load i64, i64* %6
  %69 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %68, i64 5)
  %70 = extractvalue {i64, i1} %69, 1
  br i1 %70, label %77, label %72
71:
  store i64 1537, i64* %36
  br label %43
72:
  %73 = extractvalue {i64, i1} %69, 0
  store i64 %73, i64* %7
  %74 = load i64, i64* %7
  %75 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %74, i64 9)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %84, label %78
77:
  store i64 1537, i64* %36
  br label %43
78:
  %79 = extractvalue {i64, i1} %75, 0
  store i64 %79, i64* %8
  %80 = load i64, i64* %8
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80)
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %82 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %83 = extractvalue {i64, i1} %82, 1
  br i1 %83, label %90, label %85
84:
  store i64 1537, i64* %36
  br label %43
85:
  %86 = extractvalue {i64, i1} %82, 0
  store i64 %86, i64* %10
  %87 = load i64, i64* %10
  %88 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %87, i64 5)
  %89 = extractvalue {i64, i1} %88, 1
  br i1 %89, label %96, label %91
90:
  store i64 1793, i64* %36
  br label %43
91:
  %92 = extractvalue {i64, i1} %88, 0
  store i64 %92, i64* %11
  %93 = load i64, i64* %11
  %94 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %93, i64 9)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %102, label %97
96:
  store i64 1793, i64* %36
  br label %43
97:
  %98 = extractvalue {i64, i1} %94, 0
  store i64 %98, i64* %12
  %99 = load i64, i64* %12
  %100 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %99, i64 12)
  %101 = extractvalue {i64, i1} %100, 1
  br i1 %101, label %109, label %103
102:
  store i64 1793, i64* %36
  br label %43
103:
  %104 = extractvalue {i64, i1} %100, 0
  store i64 %104, i64* %13
  %105 = load i64, i64* %13
  %106 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %105)
  call void @_Bio__println(i8 addrspace(1)* %106)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %107 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %108 = extractvalue {i64, i1} %107, 1
  br i1 %108, label %115, label %110
109:
  store i64 1793, i64* %36
  br label %43
110:
  %111 = extractvalue {i64, i1} %107, 0
  store i64 %111, i64* %15
  %112 = load i64, i64* %15
  %113 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %112, i64 5)
  %114 = extractvalue {i64, i1} %113, 1
  br i1 %114, label %121, label %116
115:
  store i64 2049, i64* %36
  br label %43
116:
  %117 = extractvalue {i64, i1} %113, 0
  store i64 %117, i64* %16
  %118 = load i64, i64* %16
  %119 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %118, i64 9)
  %120 = extractvalue {i64, i1} %119, 1
  br i1 %120, label %127, label %122
121:
  store i64 2049, i64* %36
  br label %43
122:
  %123 = extractvalue {i64, i1} %119, 0
  store i64 %123, i64* %17
  %124 = load i64, i64* %17
  %125 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %124, i64 4)
  %126 = extractvalue {i64, i1} %125, 1
  br i1 %126, label %133, label %128
127:
  store i64 2049, i64* %36
  br label %43
128:
  %129 = extractvalue {i64, i1} %125, 0
  store i64 %129, i64* %18
  %130 = load i64, i64* %18
  %131 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %130, i64 7)
  %132 = extractvalue {i64, i1} %131, 1
  br i1 %132, label %140, label %134
133:
  store i64 2049, i64* %36
  br label %43
134:
  %135 = extractvalue {i64, i1} %131, 0
  store i64 %135, i64* %19
  %136 = load i64, i64* %19
  %137 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %136)
  call void @_Bio__println(i8 addrspace(1)* %137)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %138 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %139 = extractvalue {i64, i1} %138, 1
  br i1 %139, label %146, label %141
140:
  store i64 2049, i64* %36
  br label %43
141:
  %142 = extractvalue {i64, i1} %138, 0
  store i64 %142, i64* %21
  %143 = load i64, i64* %21
  %144 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %143, i64 5)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %152, label %147
146:
  store i64 2305, i64* %36
  br label %43
147:
  %148 = extractvalue {i64, i1} %144, 0
  store i64 %148, i64* %22
  %149 = load i64, i64* %22
  %150 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %149, i64 9)
  %151 = extractvalue {i64, i1} %150, 1
  br i1 %151, label %158, label %153
152:
  store i64 2305, i64* %36
  br label %43
153:
  %154 = extractvalue {i64, i1} %150, 0
  store i64 %154, i64* %23
  %155 = load i64, i64* %23
  %156 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %155, i64 4)
  %157 = extractvalue {i64, i1} %156, 1
  br i1 %157, label %164, label %159
158:
  store i64 2305, i64* %36
  br label %43
159:
  %160 = extractvalue {i64, i1} %156, 0
  store i64 %160, i64* %24
  %161 = load i64, i64* %24
  %162 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %161, i64 7)
  %163 = extractvalue {i64, i1} %162, 1
  br i1 %163, label %170, label %165
164:
  store i64 2305, i64* %36
  br label %43
165:
  %166 = extractvalue {i64, i1} %162, 0
  store i64 %166, i64* %25
  %167 = load i64, i64* %25
  %168 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %167, i64 5)
  %169 = extractvalue {i64, i1} %168, 1
  br i1 %169, label %177, label %171
170:
  store i64 2305, i64* %36
  br label %43
171:
  %172 = extractvalue {i64, i1} %168, 0
  store i64 %172, i64* %26
  %173 = load i64, i64* %26
  %174 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %173)
  call void @_Bio__println(i8 addrspace(1)* %174)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %175 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %176 = extractvalue {i64, i1} %175, 1
  br i1 %176, label %183, label %178
177:
  store i64 2305, i64* %36
  br label %43
178:
  %179 = extractvalue {i64, i1} %175, 0
  store i64 %179, i64* %28
  %180 = load i64, i64* %28
  %181 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %180, i64 5)
  %182 = extractvalue {i64, i1} %181, 1
  br i1 %182, label %189, label %184
183:
  store i64 2561, i64* %36
  br label %43
184:
  %185 = extractvalue {i64, i1} %181, 0
  store i64 %185, i64* %29
  %186 = load i64, i64* %29
  %187 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %186, i64 9)
  %188 = extractvalue {i64, i1} %187, 1
  br i1 %188, label %195, label %190
189:
  store i64 2561, i64* %36
  br label %43
190:
  %191 = extractvalue {i64, i1} %187, 0
  store i64 %191, i64* %30
  %192 = load i64, i64* %30
  %193 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %192, i64 4)
  %194 = extractvalue {i64, i1} %193, 1
  br i1 %194, label %201, label %196
195:
  store i64 2561, i64* %36
  br label %43
196:
  %197 = extractvalue {i64, i1} %193, 0
  store i64 %197, i64* %31
  %198 = load i64, i64* %31
  %199 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %198, i64 7)
  %200 = extractvalue {i64, i1} %199, 1
  br i1 %200, label %207, label %202
201:
  store i64 2561, i64* %36
  br label %43
202:
  %203 = extractvalue {i64, i1} %199, 0
  store i64 %203, i64* %32
  %204 = load i64, i64* %32
  %205 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %204, i64 23)
  %206 = extractvalue {i64, i1} %205, 1
  br i1 %206, label %213, label %208
207:
  store i64 2561, i64* %36
  br label %43
208:
  %209 = extractvalue {i64, i1} %205, 0
  store i64 %209, i64* %33
  %210 = load i64, i64* %33
  %211 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %210, i64 50)
  %212 = extractvalue {i64, i1} %211, 1
  br i1 %212, label %218, label %214
213:
  store i64 2561, i64* %36
  br label %43
214:
  %215 = extractvalue {i64, i1} %211, 0
  store i64 %215, i64* %34
  %216 = load i64, i64* %34
  %217 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %216)
  call void @_Bio__println(i8 addrspace(1)* %217)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  ret void
218:
  store i64 2561, i64* %36
  br label %43
}
