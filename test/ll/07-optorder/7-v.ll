@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
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
  %n4 = alloca i8 addrspace(1)*
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
  br i1 %51, label %245, label %52
52:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)** %n1
  store i8 addrspace(1)* null, i8 addrspace(1)** %n2
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %55 = call i64 @_bal_string_compare(i8 addrspace(1)* %53, i8 addrspace(1)* %54)
  %56 = icmp eq i64 %55, 0
  store i1 %56, i1* %1
  %57 = load i1, i1* %1
  %58 = zext i1 %57 to i64
  %59 = or i64 %58, 72057594037927936
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %63 = call i64 @_bal_string_compare(i8 addrspace(1)* %61, i8 addrspace(1)* %62)
  %64 = icmp ule i64 %63, 1
  store i1 %64, i1* %3
  %65 = load i1, i1* %3
  %66 = zext i1 %65 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67
  call void @_Bio__println(i8 addrspace(1)* %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %71 = call i64 @_bal_string_compare(i8 addrspace(1)* %69, i8 addrspace(1)* %70)
  %72 = icmp eq i64 %71, 2
  store i1 %72, i1* %5
  %73 = load i1, i1* %5
  %74 = zext i1 %73 to i64
  %75 = or i64 %74, 72057594037927936
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %79 = call i64 @_bal_string_compare(i8 addrspace(1)* %77, i8 addrspace(1)* %78)
  %80 = icmp sge i64 %79, 1
  store i1 %80, i1* %7
  %81 = load i1, i1* %7
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %87 = call i64 @_bal_string_compare(i8 addrspace(1)* %85, i8 addrspace(1)* %86)
  %88 = icmp eq i64 %87, 0
  store i1 %88, i1* %9
  %89 = load i1, i1* %9
  %90 = zext i1 %89 to i64
  %91 = or i64 %90, 72057594037927936
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91
  call void @_Bio__println(i8 addrspace(1)* %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %95 = call i64 @_bal_string_compare(i8 addrspace(1)* %93, i8 addrspace(1)* %94)
  %96 = icmp ule i64 %95, 1
  store i1 %96, i1* %11
  %97 = load i1, i1* %11
  %98 = zext i1 %97 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99
  call void @_Bio__println(i8 addrspace(1)* %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %103 = call i64 @_bal_string_compare(i8 addrspace(1)* %101, i8 addrspace(1)* %102)
  %104 = icmp eq i64 %103, 2
  store i1 %104, i1* %13
  %105 = load i1, i1* %13
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107
  call void @_Bio__println(i8 addrspace(1)* %108)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %111 = call i64 @_bal_string_compare(i8 addrspace(1)* %109, i8 addrspace(1)* %110)
  %112 = icmp sge i64 %111, 1
  store i1 %112, i1* %15
  %113 = load i1, i1* %15
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630866808), i8 addrspace(1)** %n3
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %119 = call i64 @_bal_string_compare(i8 addrspace(1)* %117, i8 addrspace(1)* %118)
  %120 = icmp ule i64 %119, 1
  store i1 %120, i1* %17
  %121 = load i1, i1* %17
  %122 = zext i1 %121 to i64
  %123 = or i64 %122, 72057594037927936
  %124 = getelementptr i8, i8 addrspace(1)* null, i64 %123
  call void @_Bio__println(i8 addrspace(1)* %124)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %127 = call i64 @_bal_string_compare(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  %128 = icmp eq i64 %127, 0
  store i1 %128, i1* %19
  %129 = load i1, i1* %19
  %130 = zext i1 %129 to i64
  %131 = or i64 %130, 72057594037927936
  %132 = getelementptr i8, i8 addrspace(1)* null, i64 %131
  call void @_Bio__println(i8 addrspace(1)* %132)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %135 = call i64 @_bal_string_compare(i8 addrspace(1)* %133, i8 addrspace(1)* %134)
  %136 = icmp sge i64 %135, 1
  store i1 %136, i1* %21
  %137 = load i1, i1* %21
  %138 = zext i1 %137 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, i8 addrspace(1)* null, i64 %139
  call void @_Bio__println(i8 addrspace(1)* %140)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %143 = call i64 @_bal_string_compare(i8 addrspace(1)* %141, i8 addrspace(1)* %142)
  %144 = icmp eq i64 %143, 2
  store i1 %144, i1* %23
  %145 = load i1, i1* %23
  %146 = zext i1 %145 to i64
  %147 = or i64 %146, 72057594037927936
  %148 = getelementptr i8, i8 addrspace(1)* null, i64 %147
  call void @_Bio__println(i8 addrspace(1)* %148)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622019450), i8 addrspace(1)** %n4
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %151 = call i64 @_bal_string_compare(i8 addrspace(1)* %149, i8 addrspace(1)* %150)
  %152 = icmp ule i64 %151, 1
  store i1 %152, i1* %25
  %153 = load i1, i1* %25
  %154 = zext i1 %153 to i64
  %155 = or i64 %154, 72057594037927936
  %156 = getelementptr i8, i8 addrspace(1)* null, i64 %155
  call void @_Bio__println(i8 addrspace(1)* %156)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %159 = call i64 @_bal_string_compare(i8 addrspace(1)* %157, i8 addrspace(1)* %158)
  %160 = icmp eq i64 %159, 0
  store i1 %160, i1* %27
  %161 = load i1, i1* %27
  %162 = zext i1 %161 to i64
  %163 = or i64 %162, 72057594037927936
  %164 = getelementptr i8, i8 addrspace(1)* null, i64 %163
  call void @_Bio__println(i8 addrspace(1)* %164)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %167 = call i64 @_bal_string_compare(i8 addrspace(1)* %165, i8 addrspace(1)* %166)
  %168 = icmp sge i64 %167, 1
  store i1 %168, i1* %29
  %169 = load i1, i1* %29
  %170 = zext i1 %169 to i64
  %171 = or i64 %170, 72057594037927936
  %172 = getelementptr i8, i8 addrspace(1)* null, i64 %171
  call void @_Bio__println(i8 addrspace(1)* %172)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %175 = call i64 @_bal_string_compare(i8 addrspace(1)* %173, i8 addrspace(1)* %174)
  %176 = icmp eq i64 %175, 2
  store i1 %176, i1* %31
  %177 = load i1, i1* %31
  %178 = zext i1 %177 to i64
  %179 = or i64 %178, 72057594037927936
  %180 = getelementptr i8, i8 addrspace(1)* null, i64 %179
  call void @_Bio__println(i8 addrspace(1)* %180)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %183 = call i64 @_bal_string_compare(i8 addrspace(1)* %181, i8 addrspace(1)* %182)
  %184 = icmp ule i64 %183, 1
  store i1 %184, i1* %33
  %185 = load i1, i1* %33
  %186 = zext i1 %185 to i64
  %187 = or i64 %186, 72057594037927936
  %188 = getelementptr i8, i8 addrspace(1)* null, i64 %187
  call void @_Bio__println(i8 addrspace(1)* %188)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %191 = call i64 @_bal_string_compare(i8 addrspace(1)* %189, i8 addrspace(1)* %190)
  %192 = icmp eq i64 %191, 0
  store i1 %192, i1* %35
  %193 = load i1, i1* %35
  %194 = zext i1 %193 to i64
  %195 = or i64 %194, 72057594037927936
  %196 = getelementptr i8, i8 addrspace(1)* null, i64 %195
  call void @_Bio__println(i8 addrspace(1)* %196)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %199 = call i64 @_bal_string_compare(i8 addrspace(1)* %197, i8 addrspace(1)* %198)
  %200 = icmp sge i64 %199, 1
  store i1 %200, i1* %37
  %201 = load i1, i1* %37
  %202 = zext i1 %201 to i64
  %203 = or i64 %202, 72057594037927936
  %204 = getelementptr i8, i8 addrspace(1)* null, i64 %203
  call void @_Bio__println(i8 addrspace(1)* %204)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %207 = call i64 @_bal_string_compare(i8 addrspace(1)* %205, i8 addrspace(1)* %206)
  %208 = icmp eq i64 %207, 2
  store i1 %208, i1* %39
  %209 = load i1, i1* %39
  %210 = zext i1 %209 to i64
  %211 = or i64 %210, 72057594037927936
  %212 = getelementptr i8, i8 addrspace(1)* null, i64 %211
  call void @_Bio__println(i8 addrspace(1)* %212)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  store i8 addrspace(1)* null, i8 addrspace(1)** %n5
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %215 = call i64 @_bal_string_compare(i8 addrspace(1)* %213, i8 addrspace(1)* %214)
  %216 = icmp eq i64 %215, 0
  store i1 %216, i1* %41
  %217 = load i1, i1* %41
  %218 = zext i1 %217 to i64
  %219 = or i64 %218, 72057594037927936
  %220 = getelementptr i8, i8 addrspace(1)* null, i64 %219
  call void @_Bio__println(i8 addrspace(1)* %220)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %223 = call i64 @_bal_string_compare(i8 addrspace(1)* %221, i8 addrspace(1)* %222)
  %224 = icmp ule i64 %223, 1
  store i1 %224, i1* %43
  %225 = load i1, i1* %43
  %226 = zext i1 %225 to i64
  %227 = or i64 %226, 72057594037927936
  %228 = getelementptr i8, i8 addrspace(1)* null, i64 %227
  call void @_Bio__println(i8 addrspace(1)* %228)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %231 = call i64 @_bal_string_compare(i8 addrspace(1)* %229, i8 addrspace(1)* %230)
  %232 = icmp eq i64 %231, 2
  store i1 %232, i1* %45
  %233 = load i1, i1* %45
  %234 = zext i1 %233 to i64
  %235 = or i64 %234, 72057594037927936
  %236 = getelementptr i8, i8 addrspace(1)* null, i64 %235
  call void @_Bio__println(i8 addrspace(1)* %236)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %238 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %239 = call i64 @_bal_string_compare(i8 addrspace(1)* %237, i8 addrspace(1)* %238)
  %240 = icmp sge i64 %239, 1
  store i1 %240, i1* %47
  %241 = load i1, i1* %47
  %242 = zext i1 %241 to i64
  %243 = or i64 %242, 72057594037927936
  %244 = getelementptr i8, i8 addrspace(1)* null, i64 %243
  call void @_Bio__println(i8 addrspace(1)* %244)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  ret void
245:
  %246 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %246)
  unreachable
}
