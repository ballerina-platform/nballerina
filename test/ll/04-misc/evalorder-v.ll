@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
define internal i64 @_B_one() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = and i64 72057594037927935, 1
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !16
  store ptr addrspace(1) null, ptr %2
  ret i64 1
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !14
  unreachable
}
define internal i64 @_B_two() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = and i64 72057594037927935, 2
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !20
  store ptr addrspace(1) null, ptr %2
  ret i64 2
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !18
  unreachable
}
define void @_B04rootmain() !dbg !9 {
  %mul = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %_ = alloca ptr addrspace(1)
  %div = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %_.1 = alloca ptr addrspace(1)
  %rmd = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %_.2 = alloca ptr addrspace(1)
  %add = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %_.3 = alloca ptr addrspace(1)
  %sub = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %_.4 = alloca ptr addrspace(1)
  %lt = alloca i1
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i1
  %_.5 = alloca ptr addrspace(1)
  %lteq = alloca i1
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i1
  %_.6 = alloca ptr addrspace(1)
  %gt = alloca i1
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i1
  %_.7 = alloca ptr addrspace(1)
  %gteq = alloca i1
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i1
  %_.8 = alloca ptr addrspace(1)
  %eq = alloca i1
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i1
  %_.9 = alloca ptr addrspace(1)
  %neq = alloca i1
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i1
  %_.10 = alloca ptr addrspace(1)
  %eeq = alloca i1
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i1
  %_.11 = alloca ptr addrspace(1)
  %neeq = alloca i1
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i1
  %_.12 = alloca ptr addrspace(1)
  %and = alloca i64
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i64
  %_.13 = alloca ptr addrspace(1)
  %xor = alloca i64
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i64
  %_.14 = alloca ptr addrspace(1)
  %or = alloca i64
  %46 = alloca i64
  %47 = alloca i64
  %48 = alloca i64
  %_.15 = alloca ptr addrspace(1)
  %arr = alloca ptr addrspace(1)
  %49 = alloca i64
  %50 = alloca i64
  %51 = alloca ptr addrspace(1)
  %_.16 = alloca ptr addrspace(1)
  %52 = alloca i64
  %53 = alloca i64
  %54 = alloca ptr addrspace(1)
  %55 = alloca ptr addrspace(1)
  %56 = alloca i8
  %57 = load ptr, ptr @_bal_stack_guard
  %58 = icmp ult ptr %56, %57
  br i1 %58, label %68, label %59
59:
  %60 = call i64 @_B_one(), !dbg !23
  store i64 %60, ptr %1
  %61 = call i64 @_B_two(), !dbg !24
  store i64 %61, ptr %2
  %62 = load i64, ptr %1
  %63 = load i64, ptr %2
  %64 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %62, i64 %63)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %80, label %70
66:
  %67 = load ptr addrspace(1), ptr %55
  call void @_bal_panic(ptr addrspace(1) %67), !dbg !72
  unreachable
68:
  %69 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %69), !dbg !22
  unreachable
70:
  %71 = extractvalue {i64, i1} %64, 0
  store i64 %71, ptr %3
  %72 = load i64, ptr %3
  store i64 %72, ptr %mul
  %73 = load i64, ptr %mul
  %74 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %73), !dbg !25
  store ptr addrspace(1) %74, ptr %_
  %75 = call i64 @_B_one(), !dbg !26
  store i64 %75, ptr %4
  %76 = call i64 @_B_two(), !dbg !27
  store i64 %76, ptr %5
  %77 = load i64, ptr %4
  %78 = load i64, ptr %5
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %82, label %84
80:
  %81 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !21
  store ptr addrspace(1) %81, ptr %55
  br label %66
82:
  %83 = call ptr addrspace(1) @_bal_panic_construct(i64 5122), !dbg !21
  store ptr addrspace(1) %83, ptr %55
  br label %66
84:
  %85 = icmp eq i64 %77, -9223372036854775808
  %86 = icmp eq i64 %78, -1
  %87 = and i1 %85, %86
  br i1 %87, label %98, label %88
88:
  %89 = sdiv i64 %77, %78
  store i64 %89, ptr %6
  %90 = load i64, ptr %6
  store i64 %90, ptr %div
  %91 = load i64, ptr %div
  %92 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %91), !dbg !28
  store ptr addrspace(1) %92, ptr %_.1
  %93 = call i64 @_B_one(), !dbg !29
  store i64 %93, ptr %7
  %94 = call i64 @_B_two(), !dbg !30
  store i64 %94, ptr %8
  %95 = load i64, ptr %7
  %96 = load i64, ptr %8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %100, label %102
98:
  %99 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !21
  store ptr addrspace(1) %99, ptr %55
  br label %66
100:
  %101 = call ptr addrspace(1) @_bal_panic_construct(i64 6146), !dbg !21
  store ptr addrspace(1) %101, ptr %55
  br label %66
102:
  %103 = icmp eq i64 %95, -9223372036854775808
  %104 = icmp eq i64 %96, -1
  %105 = and i1 %103, %104
  br i1 %105, label %108, label %106
106:
  %107 = srem i64 %95, %96
  store i64 %107, ptr %9
  br label %109
108:
  store i64 0, ptr %9
  br label %109
109:
  %110 = load i64, ptr %9
  store i64 %110, ptr %rmd
  %111 = load i64, ptr %rmd
  %112 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %111), !dbg !31
  store ptr addrspace(1) %112, ptr %_.2
  %113 = call i64 @_B_one(), !dbg !32
  store i64 %113, ptr %10
  %114 = call i64 @_B_two(), !dbg !33
  store i64 %114, ptr %11
  %115 = load i64, ptr %10
  %116 = load i64, ptr %11
  %117 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %115, i64 %116)
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %130, label %119
119:
  %120 = extractvalue {i64, i1} %117, 0
  store i64 %120, ptr %12
  %121 = load i64, ptr %12
  store i64 %121, ptr %add
  %122 = load i64, ptr %add
  %123 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %122), !dbg !34
  store ptr addrspace(1) %123, ptr %_.3
  %124 = call i64 @_B_one(), !dbg !35
  store i64 %124, ptr %13
  %125 = call i64 @_B_two(), !dbg !36
  store i64 %125, ptr %14
  %126 = load i64, ptr %13
  %127 = load i64, ptr %14
  %128 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %126, i64 %127)
  %129 = extractvalue {i64, i1} %128, 1
  br i1 %129, label %263, label %132
130:
  %131 = call ptr addrspace(1) @_bal_panic_construct(i64 7169), !dbg !21
  store ptr addrspace(1) %131, ptr %55
  br label %66
132:
  %133 = extractvalue {i64, i1} %128, 0
  store i64 %133, ptr %15
  %134 = load i64, ptr %15
  store i64 %134, ptr %sub
  %135 = load i64, ptr %sub
  %136 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %135), !dbg !37
  store ptr addrspace(1) %136, ptr %_.4
  %137 = call i64 @_B_one(), !dbg !38
  store i64 %137, ptr %16
  %138 = call i64 @_B_two(), !dbg !39
  store i64 %138, ptr %17
  %139 = load i64, ptr %16
  %140 = load i64, ptr %17
  %141 = icmp slt i64 %139, %140
  store i1 %141, ptr %18
  %142 = load i1, ptr %18
  store i1 %142, ptr %lt
  %143 = load i1, ptr %lt
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, ptr addrspace(1) null, i64 %145
  store ptr addrspace(1) %146, ptr %_.5
  %147 = call i64 @_B_one(), !dbg !40
  store i64 %147, ptr %19
  %148 = call i64 @_B_two(), !dbg !41
  store i64 %148, ptr %20
  %149 = load i64, ptr %19
  %150 = load i64, ptr %20
  %151 = icmp sle i64 %149, %150
  store i1 %151, ptr %21
  %152 = load i1, ptr %21
  store i1 %152, ptr %lteq
  %153 = load i1, ptr %lteq
  %154 = zext i1 %153 to i64
  %155 = or i64 %154, 72057594037927936
  %156 = getelementptr i8, ptr addrspace(1) null, i64 %155
  store ptr addrspace(1) %156, ptr %_.6
  %157 = call i64 @_B_one(), !dbg !42
  store i64 %157, ptr %22
  %158 = call i64 @_B_two(), !dbg !43
  store i64 %158, ptr %23
  %159 = load i64, ptr %22
  %160 = load i64, ptr %23
  %161 = icmp sgt i64 %159, %160
  store i1 %161, ptr %24
  %162 = load i1, ptr %24
  store i1 %162, ptr %gt
  %163 = load i1, ptr %gt
  %164 = zext i1 %163 to i64
  %165 = or i64 %164, 72057594037927936
  %166 = getelementptr i8, ptr addrspace(1) null, i64 %165
  store ptr addrspace(1) %166, ptr %_.7
  %167 = call i64 @_B_one(), !dbg !44
  store i64 %167, ptr %25
  %168 = call i64 @_B_two(), !dbg !45
  store i64 %168, ptr %26
  %169 = load i64, ptr %25
  %170 = load i64, ptr %26
  %171 = icmp sge i64 %169, %170
  store i1 %171, ptr %27
  %172 = load i1, ptr %27
  store i1 %172, ptr %gteq
  %173 = load i1, ptr %gteq
  %174 = zext i1 %173 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, ptr addrspace(1) null, i64 %175
  store ptr addrspace(1) %176, ptr %_.8
  %177 = call i64 @_B_one(), !dbg !46
  store i64 %177, ptr %28
  %178 = call i64 @_B_two(), !dbg !47
  store i64 %178, ptr %29
  %179 = load i64, ptr %28
  %180 = load i64, ptr %29
  %181 = icmp eq i64 %179, %180
  store i1 %181, ptr %30
  %182 = load i1, ptr %30
  store i1 %182, ptr %eq
  %183 = load i1, ptr %eq
  %184 = zext i1 %183 to i64
  %185 = or i64 %184, 72057594037927936
  %186 = getelementptr i8, ptr addrspace(1) null, i64 %185
  store ptr addrspace(1) %186, ptr %_.9
  %187 = call i64 @_B_one(), !dbg !48
  store i64 %187, ptr %31
  %188 = call i64 @_B_two(), !dbg !49
  store i64 %188, ptr %32
  %189 = load i64, ptr %31
  %190 = load i64, ptr %32
  %191 = icmp ne i64 %189, %190
  store i1 %191, ptr %33
  %192 = load i1, ptr %33
  store i1 %192, ptr %neq
  %193 = load i1, ptr %neq
  %194 = zext i1 %193 to i64
  %195 = or i64 %194, 72057594037927936
  %196 = getelementptr i8, ptr addrspace(1) null, i64 %195
  store ptr addrspace(1) %196, ptr %_.10
  %197 = call i64 @_B_one(), !dbg !50
  store i64 %197, ptr %34
  %198 = call i64 @_B_two(), !dbg !51
  store i64 %198, ptr %35
  %199 = load i64, ptr %34
  %200 = load i64, ptr %35
  %201 = icmp eq i64 %199, %200
  store i1 %201, ptr %36
  %202 = load i1, ptr %36
  store i1 %202, ptr %eeq
  %203 = load i1, ptr %eeq
  %204 = zext i1 %203 to i64
  %205 = or i64 %204, 72057594037927936
  %206 = getelementptr i8, ptr addrspace(1) null, i64 %205
  store ptr addrspace(1) %206, ptr %_.11
  %207 = call i64 @_B_one(), !dbg !52
  store i64 %207, ptr %37
  %208 = call i64 @_B_two(), !dbg !53
  store i64 %208, ptr %38
  %209 = load i64, ptr %37
  %210 = load i64, ptr %38
  %211 = icmp ne i64 %209, %210
  store i1 %211, ptr %39
  %212 = load i1, ptr %39
  store i1 %212, ptr %neeq
  %213 = load i1, ptr %neeq
  %214 = zext i1 %213 to i64
  %215 = or i64 %214, 72057594037927936
  %216 = getelementptr i8, ptr addrspace(1) null, i64 %215
  store ptr addrspace(1) %216, ptr %_.12
  %217 = call i64 @_B_one(), !dbg !54
  store i64 %217, ptr %40
  %218 = call i64 @_B_two(), !dbg !55
  store i64 %218, ptr %41
  %219 = load i64, ptr %40
  %220 = load i64, ptr %41
  %221 = and i64 %219, %220
  store i64 %221, ptr %42
  %222 = load i64, ptr %42
  store i64 %222, ptr %and
  %223 = load i64, ptr %and
  %224 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %223), !dbg !56
  store ptr addrspace(1) %224, ptr %_.13
  %225 = call i64 @_B_one(), !dbg !57
  store i64 %225, ptr %43
  %226 = call i64 @_B_two(), !dbg !58
  store i64 %226, ptr %44
  %227 = load i64, ptr %43
  %228 = load i64, ptr %44
  %229 = xor i64 %227, %228
  store i64 %229, ptr %45
  %230 = load i64, ptr %45
  store i64 %230, ptr %xor
  %231 = load i64, ptr %xor
  %232 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %231), !dbg !59
  store ptr addrspace(1) %232, ptr %_.14
  %233 = call i64 @_B_one(), !dbg !60
  store i64 %233, ptr %46
  %234 = call i64 @_B_two(), !dbg !61
  store i64 %234, ptr %47
  %235 = load i64, ptr %46
  %236 = load i64, ptr %47
  %237 = or i64 %235, %236
  store i64 %237, ptr %48
  %238 = load i64, ptr %48
  store i64 %238, ptr %or
  %239 = load i64, ptr %or
  %240 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %239), !dbg !62
  store ptr addrspace(1) %240, ptr %_.15
  %241 = call i64 @_B_one(), !dbg !63
  store i64 %241, ptr %49
  %242 = call i64 @_B_two(), !dbg !64
  store i64 %242, ptr %50
  %243 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !65
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = load i64, ptr %49
  %248 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %247), !dbg !66
  %249 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 0
  store ptr addrspace(1) %248, ptr addrspace(1) %249
  %250 = load i64, ptr %50
  %251 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %250), !dbg !67
  %252 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 1
  store ptr addrspace(1) %251, ptr addrspace(1) %252
  %253 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 1
  store i64 2, ptr addrspace(1) %253
  %254 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %255 = getelementptr i8, ptr addrspace(1) %254, i64 864691128455135236
  store ptr addrspace(1) %255, ptr %51
  %256 = load ptr addrspace(1), ptr %51
  store ptr addrspace(1) %256, ptr %arr
  %257 = load ptr addrspace(1), ptr %arr
  %258 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %257), !dbg !68
  store ptr addrspace(1) %258, ptr %_.16
  %259 = call i64 @_B_one(), !dbg !69
  store i64 %259, ptr %52
  %260 = call i64 @_B_two(), !dbg !70
  store i64 %260, ptr %53
  %261 = load i64, ptr %52
  %262 = load i64, ptr %53
  call void @_B_ignore(i64 %261, i64 %262), !dbg !71
  store ptr addrspace(1) null, ptr %54
  ret void
263:
  %264 = call ptr addrspace(1) @_bal_panic_construct(i64 8193), !dbg !21
  store ptr addrspace(1) %264, ptr %55
  br label %66
}
define internal void @_B_ignore(i64 %0, i64 %1) !dbg !11 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %7, label %6
6:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  ret void
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 22532), !dbg !73
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !74
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-misc/evalorder-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"one", linkageName:"_B_one", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"two", linkageName:"_B_two", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"ignore", linkageName:"_B_ignore", scope: !1, file: !1, line: 88, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 9, scope: !5)
!15 = !DILocation(line: 5, column: 14, scope: !5)
!16 = !DILocation(line: 5, column: 3, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 9, column: 9, scope: !7)
!19 = !DILocation(line: 10, column: 14, scope: !7)
!20 = !DILocation(line: 10, column: 3, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
!22 = !DILocation(line: 15, column: 16, scope: !9)
!23 = !DILocation(line: 16, column: 13, scope: !9)
!24 = !DILocation(line: 16, column: 21, scope: !9)
!25 = !DILocation(line: 18, column: 5, scope: !9)
!26 = !DILocation(line: 20, column: 13, scope: !9)
!27 = !DILocation(line: 20, column: 21, scope: !9)
!28 = !DILocation(line: 22, column: 5, scope: !9)
!29 = !DILocation(line: 24, column: 13, scope: !9)
!30 = !DILocation(line: 24, column: 21, scope: !9)
!31 = !DILocation(line: 26, column: 5, scope: !9)
!32 = !DILocation(line: 28, column: 13, scope: !9)
!33 = !DILocation(line: 28, column: 21, scope: !9)
!34 = !DILocation(line: 30, column: 5, scope: !9)
!35 = !DILocation(line: 32, column: 13, scope: !9)
!36 = !DILocation(line: 32, column: 21, scope: !9)
!37 = !DILocation(line: 34, column: 5, scope: !9)
!38 = !DILocation(line: 36, column: 16, scope: !9)
!39 = !DILocation(line: 36, column: 24, scope: !9)
!40 = !DILocation(line: 40, column: 18, scope: !9)
!41 = !DILocation(line: 40, column: 27, scope: !9)
!42 = !DILocation(line: 44, column: 16, scope: !9)
!43 = !DILocation(line: 44, column: 24, scope: !9)
!44 = !DILocation(line: 48, column: 18, scope: !9)
!45 = !DILocation(line: 48, column: 27, scope: !9)
!46 = !DILocation(line: 52, column: 16, scope: !9)
!47 = !DILocation(line: 52, column: 25, scope: !9)
!48 = !DILocation(line: 56, column: 17, scope: !9)
!49 = !DILocation(line: 56, column: 26, scope: !9)
!50 = !DILocation(line: 60, column: 17, scope: !9)
!51 = !DILocation(line: 60, column: 27, scope: !9)
!52 = !DILocation(line: 64, column: 18, scope: !9)
!53 = !DILocation(line: 64, column: 28, scope: !9)
!54 = !DILocation(line: 68, column: 13, scope: !9)
!55 = !DILocation(line: 68, column: 21, scope: !9)
!56 = !DILocation(line: 70, column: 5, scope: !9)
!57 = !DILocation(line: 72, column: 13, scope: !9)
!58 = !DILocation(line: 72, column: 21, scope: !9)
!59 = !DILocation(line: 74, column: 5, scope: !9)
!60 = !DILocation(line: 76, column: 12, scope: !9)
!61 = !DILocation(line: 76, column: 20, scope: !9)
!62 = !DILocation(line: 78, column: 5, scope: !9)
!63 = !DILocation(line: 80, column: 16, scope: !9)
!64 = !DILocation(line: 80, column: 23, scope: !9)
!65 = !DILocation(line: 80, column: 15, scope: !9)
!66 = !DILocation(line: 80, column: 15, scope: !9)
!67 = !DILocation(line: 80, column: 15, scope: !9)
!68 = !DILocation(line: 82, column: 5, scope: !9)
!69 = !DILocation(line: 84, column: 10, scope: !9)
!70 = !DILocation(line: 84, column: 17, scope: !9)
!71 = !DILocation(line: 84, column: 3, scope: !9)
!72 = !DILocation(line: 86, column: 0, scope: !9)
!73 = !DILocation(line: 0, column: 0, scope: !11)
!74 = !DILocation(line: 88, column: 9, scope: !11)
