@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_int_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %n1 = alloca i8 addrspace(1)*
  %n2 = alloca i8 addrspace(1)*
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
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %n3 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %n4 = alloca i64
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %n5 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i8
  %50 = load i8*, i8** @_bal_stack_guard
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %154, label %52
52:
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %n1
  store i8 addrspace(1)* null, i8 addrspace(1)** %n2
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %56 = call i64 @_bal_int_compare(i8 addrspace(1)* %54, i8 addrspace(1)* %55)
  %57 = icmp eq i64 %56, 0
  store i1 %57, i1* %1
  %58 = load i1, i1* %1
  %59 = zext i1 %58 to i64
  %60 = or i64 %59, 72057594037927936
  %61 = getelementptr i8, i8 addrspace(1)* null, i64 %60
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %64 = call i64 @_bal_int_compare(i8 addrspace(1)* %62, i8 addrspace(1)* %63)
  %65 = icmp ule i64 %64, 1
  store i1 %65, i1* %3
  %66 = load i1, i1* %3
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %72 = call i64 @_bal_int_compare(i8 addrspace(1)* %70, i8 addrspace(1)* %71)
  %73 = icmp eq i64 %72, 2
  store i1 %73, i1* %5
  %74 = load i1, i1* %5
  %75 = zext i1 %74 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %80 = call i64 @_bal_int_compare(i8 addrspace(1)* %78, i8 addrspace(1)* %79)
  %81 = icmp sge i64 %80, 1
  store i1 %81, i1* %7
  %82 = load i1, i1* %7
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %88 = call i64 @_bal_int_compare(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  %89 = icmp eq i64 %88, 0
  store i1 %89, i1* %9
  %90 = load i1, i1* %9
  %91 = zext i1 %90 to i64
  %92 = or i64 %91, 72057594037927936
  %93 = getelementptr i8, i8 addrspace(1)* null, i64 %92
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %96 = call i64 @_bal_int_compare(i8 addrspace(1)* %94, i8 addrspace(1)* %95)
  %97 = icmp ule i64 %96, 1
  store i1 %97, i1* %11
  %98 = load i1, i1* %11
  %99 = zext i1 %98 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  call void @_Bio__println(i8 addrspace(1)* %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %104 = call i64 @_bal_int_compare(i8 addrspace(1)* %102, i8 addrspace(1)* %103)
  %105 = icmp eq i64 %104, 2
  store i1 %105, i1* %13
  %106 = load i1, i1* %13
  %107 = zext i1 %106 to i64
  %108 = or i64 %107, 72057594037927936
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108
  call void @_Bio__println(i8 addrspace(1)* %109)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %112 = call i64 @_bal_int_compare(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = icmp sge i64 %112, 1
  store i1 %113, i1* %15
  %114 = load i1, i1* %15
  %115 = zext i1 %114 to i64
  %116 = or i64 %115, 72057594037927936
  %117 = getelementptr i8, i8 addrspace(1)* null, i64 %116
  call void @_Bio__println(i8 addrspace(1)* %117)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %118 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %118, i8 addrspace(1)** %n3
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %121 = call i64 @_bal_int_compare(i8 addrspace(1)* %119, i8 addrspace(1)* %120)
  %122 = icmp ule i64 %121, 1
  store i1 %122, i1* %17
  %123 = load i1, i1* %17
  %124 = zext i1 %123 to i64
  %125 = or i64 %124, 72057594037927936
  %126 = getelementptr i8, i8 addrspace(1)* null, i64 %125
  call void @_Bio__println(i8 addrspace(1)* %126)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %129 = call i64 @_bal_int_compare(i8 addrspace(1)* %127, i8 addrspace(1)* %128)
  %130 = icmp eq i64 %129, 0
  store i1 %130, i1* %19
  %131 = load i1, i1* %19
  %132 = zext i1 %131 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133
  call void @_Bio__println(i8 addrspace(1)* %134)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %137 = call i64 @_bal_int_compare(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  %138 = icmp sge i64 %137, 1
  store i1 %138, i1* %21
  %139 = load i1, i1* %21
  %140 = zext i1 %139 to i64
  %141 = or i64 %140, 72057594037927936
  %142 = getelementptr i8, i8 addrspace(1)* null, i64 %141
  call void @_Bio__println(i8 addrspace(1)* %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %145 = call i64 @_bal_int_compare(i8 addrspace(1)* %143, i8 addrspace(1)* %144)
  %146 = icmp eq i64 %145, 2
  store i1 %146, i1* %23
  %147 = load i1, i1* %23
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, i8 addrspace(1)* null, i64 %149
  call void @_Bio__println(i8 addrspace(1)* %150)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  store i64 5, i64* %n4
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %152 = load i64, i64* %n4
  %153 = icmp eq i8 addrspace(1)* %151, null
  br i1 %153, label %156, label %157
154:
  %155 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %155)
  unreachable
156:
  store i1 0, i1* %25
  br label %160
157:
  %158 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %151)
  %159 = icmp sle i64 %158, %152
  store i1 %159, i1* %25
  br label %160
160:
  %161 = load i1, i1* %25
  %162 = zext i1 %161 to i64
  %163 = or i64 %162, 72057594037927936
  %164 = getelementptr i8, i8 addrspace(1)* null, i64 %163
  call void @_Bio__println(i8 addrspace(1)* %164)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %166 = load i64, i64* %n4
  %167 = icmp eq i8 addrspace(1)* %165, null
  br i1 %167, label %168, label %169
168:
  store i1 0, i1* %27
  br label %172
169:
  %170 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %165)
  %171 = icmp slt i64 %170, %166
  store i1 %171, i1* %27
  br label %172
172:
  %173 = load i1, i1* %27
  %174 = zext i1 %173 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, i8 addrspace(1)* null, i64 %175
  call void @_Bio__println(i8 addrspace(1)* %176)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %178 = load i64, i64* %n4
  %179 = icmp eq i8 addrspace(1)* %177, null
  br i1 %179, label %180, label %181
180:
  store i1 0, i1* %29
  br label %184
181:
  %182 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %177)
  %183 = icmp sge i64 %182, %178
  store i1 %183, i1* %29
  br label %184
184:
  %185 = load i1, i1* %29
  %186 = zext i1 %185 to i64
  %187 = or i64 %186, 72057594037927936
  %188 = getelementptr i8, i8 addrspace(1)* null, i64 %187
  call void @_Bio__println(i8 addrspace(1)* %188)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %190 = load i64, i64* %n4
  %191 = icmp eq i8 addrspace(1)* %189, null
  br i1 %191, label %192, label %193
192:
  store i1 0, i1* %31
  br label %196
193:
  %194 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %189)
  %195 = icmp sgt i64 %194, %190
  store i1 %195, i1* %31
  br label %196
196:
  %197 = load i1, i1* %31
  %198 = zext i1 %197 to i64
  %199 = or i64 %198, 72057594037927936
  %200 = getelementptr i8, i8 addrspace(1)* null, i64 %199
  call void @_Bio__println(i8 addrspace(1)* %200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %201 = load i64, i64* %n4
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %203 = icmp eq i8 addrspace(1)* %202, null
  br i1 %203, label %204, label %205
204:
  store i1 0, i1* %33
  br label %208
205:
  %206 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %202)
  %207 = icmp sge i64 %206, %201
  store i1 %207, i1* %33
  br label %208
208:
  %209 = load i1, i1* %33
  %210 = zext i1 %209 to i64
  %211 = or i64 %210, 72057594037927936
  %212 = getelementptr i8, i8 addrspace(1)* null, i64 %211
  call void @_Bio__println(i8 addrspace(1)* %212)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %213 = load i64, i64* %n4
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %215 = icmp eq i8 addrspace(1)* %214, null
  br i1 %215, label %216, label %217
216:
  store i1 0, i1* %35
  br label %220
217:
  %218 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %214)
  %219 = icmp sgt i64 %218, %213
  store i1 %219, i1* %35
  br label %220
220:
  %221 = load i1, i1* %35
  %222 = zext i1 %221 to i64
  %223 = or i64 %222, 72057594037927936
  %224 = getelementptr i8, i8 addrspace(1)* null, i64 %223
  call void @_Bio__println(i8 addrspace(1)* %224)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %225 = load i64, i64* %n4
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %227 = icmp eq i8 addrspace(1)* %226, null
  br i1 %227, label %228, label %229
228:
  store i1 0, i1* %37
  br label %232
229:
  %230 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %226)
  %231 = icmp sle i64 %230, %225
  store i1 %231, i1* %37
  br label %232
232:
  %233 = load i1, i1* %37
  %234 = zext i1 %233 to i64
  %235 = or i64 %234, 72057594037927936
  %236 = getelementptr i8, i8 addrspace(1)* null, i64 %235
  call void @_Bio__println(i8 addrspace(1)* %236)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %237 = load i64, i64* %n4
  %238 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %239 = icmp eq i8 addrspace(1)* %238, null
  br i1 %239, label %240, label %241
240:
  store i1 0, i1* %39
  br label %244
241:
  %242 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %238)
  %243 = icmp slt i64 %242, %237
  store i1 %243, i1* %39
  br label %244
244:
  %245 = load i1, i1* %39
  %246 = zext i1 %245 to i64
  %247 = or i64 %246, 72057594037927936
  %248 = getelementptr i8, i8 addrspace(1)* null, i64 %247
  call void @_Bio__println(i8 addrspace(1)* %248)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  store i8 addrspace(1)* null, i8 addrspace(1)** %n5
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %251 = call i64 @_bal_int_compare(i8 addrspace(1)* %249, i8 addrspace(1)* %250)
  %252 = icmp eq i64 %251, 0
  store i1 %252, i1* %41
  %253 = load i1, i1* %41
  %254 = zext i1 %253 to i64
  %255 = or i64 %254, 72057594037927936
  %256 = getelementptr i8, i8 addrspace(1)* null, i64 %255
  call void @_Bio__println(i8 addrspace(1)* %256)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %257 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %258 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %259 = call i64 @_bal_int_compare(i8 addrspace(1)* %257, i8 addrspace(1)* %258)
  %260 = icmp ule i64 %259, 1
  store i1 %260, i1* %43
  %261 = load i1, i1* %43
  %262 = zext i1 %261 to i64
  %263 = or i64 %262, 72057594037927936
  %264 = getelementptr i8, i8 addrspace(1)* null, i64 %263
  call void @_Bio__println(i8 addrspace(1)* %264)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %265 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %266 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %267 = call i64 @_bal_int_compare(i8 addrspace(1)* %265, i8 addrspace(1)* %266)
  %268 = icmp eq i64 %267, 2
  store i1 %268, i1* %45
  %269 = load i1, i1* %45
  %270 = zext i1 %269 to i64
  %271 = or i64 %270, 72057594037927936
  %272 = getelementptr i8, i8 addrspace(1)* null, i64 %271
  call void @_Bio__println(i8 addrspace(1)* %272)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %273 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %274 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %275 = call i64 @_bal_int_compare(i8 addrspace(1)* %273, i8 addrspace(1)* %274)
  %276 = icmp sge i64 %275, 1
  store i1 %276, i1* %47
  %277 = load i1, i1* %47
  %278 = zext i1 %277 to i64
  %279 = or i64 %278, 72057594037927936
  %280 = getelementptr i8, i8 addrspace(1)* null, i64 %279
  call void @_Bio__println(i8 addrspace(1)* %280)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  ret void
}
