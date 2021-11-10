@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %s = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8
  %28 = load i8*, i8** @_bal_stack_guard
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %105, label %30
30:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %31 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %32 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31 to i8 addrspace(1)*
  %33 = getelementptr i8, i8 addrspace(1)* %32, i64 1297036692682702852
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %34, i8 addrspace(1)** %v
  %35 = load i64, i64* %len, !dbg !14
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  store i64 0, i64* %i
  br label %37
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %len
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %3
  %41 = load i1, i1* %3
  br i1 %41, label %59, label %42
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %44 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %43), !dbg !15
  store i8 addrspace(1)* %44, i8 addrspace(1)** %7, !dbg !15
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %45, i8 addrspace(1)** %s
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 -5), !dbg !16
  %48 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %47), !dbg !16
  store i64 %48, i64* %9, !dbg !16
  %49 = load i64, i64* %9
  %50 = load i64, i64* %len
  %51 = icmp eq i64 %49, %50
  store i1 %51, i1* %8
  %52 = load i1, i1* %8, !dbg !17
  %53 = zext i1 %52 to i64, !dbg !17
  %54 = or i64 %53, 72057594037927936, !dbg !17
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %56 = load i64, i64* %len
  %57 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %56, i64 1)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %109, label %107
59:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !18
  %61 = load i64, i64* %x, !dbg !18
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61), !dbg !18
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %60, i8 addrspace(1)* %62), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  %63 = load i64, i64* %x
  %64 = load i64, i64* %a
  %65 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %63, i64 %64)
  %66 = extractvalue {i64, i1} %65, 1
  br i1 %66, label %116, label %111
67:
  %68 = load i64, i64* %i
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %i
  br label %37
70:
  %71 = load i64, i64* %i.1
  %72 = load i64, i64* %11
  %73 = icmp slt i64 %71, %72
  store i1 %73, i1* %12
  %74 = load i1, i1* %12
  br i1 %74, label %87, label %75
75:
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !19
  %77 = call i64 @_B_checksum(i8 addrspace(1)* %76), !dbg !19
  store i64 %77, i64* %23, !dbg !19
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !20
  %79 = call i64 @_B_checksum(i8 addrspace(1)* %78), !dbg !20
  store i64 %79, i64* %24, !dbg !20
  %80 = load i64, i64* %23
  %81 = load i64, i64* %24
  %82 = icmp eq i64 %80, %81
  store i1 %82, i1* %22
  %83 = load i1, i1* %22, !dbg !21
  %84 = zext i1 %83 to i64, !dbg !21
  %85 = or i64 %84, 72057594037927936, !dbg !21
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !21
  ret void
87:
  %88 = load i64, i64* %i.1
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %90 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %89, i64 72057594037927928)
  %91 = bitcast i8 addrspace(1)* %90 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %92 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 1
  %93 = load i64, i64 addrspace(1)* %92, align 8
  %94 = icmp ult i64 %88, %93
  br i1 %94, label %129, label %142
95:
  %96 = zext i1 0 to i64, !dbg !22
  %97 = or i64 %96, 72057594037927936, !dbg !22
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %98), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !22
  br label %99
99:
  br label %100
100:
  %101 = load i64, i64* %i.1
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %i.1
  br label %70
103:
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_bal_panic(i8 addrspace(1)* %104)
  unreachable
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %106)
  unreachable
107:
  %108 = extractvalue {i64, i1} %57, 0
  store i64 %108, i64* %11
  store i64 0, i64* %i.1
  br label %70
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !13
  store i8 addrspace(1)* %110, i8 addrspace(1)** %26
  br label %103
111:
  %112 = extractvalue {i64, i1} %65, 0
  store i64 %112, i64* %5
  %113 = load i64, i64* %5
  %114 = load i64, i64* %m
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %118, label %120
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !13
  store i8 addrspace(1)* %117, i8 addrspace(1)** %26
  br label %103
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842), !dbg !13
  store i8 addrspace(1)* %119, i8 addrspace(1)** %26
  br label %103
120:
  %121 = icmp eq i64 %113, -9223372036854775808
  %122 = icmp eq i64 %114, -1
  %123 = and i1 %121, %122
  br i1 %123, label %126, label %124
124:
  %125 = srem i64 %113, %114
  store i64 %125, i64* %6
  br label %127
126:
  store i64 0, i64* %6
  br label %127
127:
  %128 = load i64, i64* %6
  store i64 %128, i64* %x
  br label %67
129:
  %130 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 0
  %131 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %130, align 8
  %132 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %131, i64 0, i32 1
  %133 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %132, align 8
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %135 = load i64, i64* %i.1
  %136 = call i8 addrspace(1)* %133(i8 addrspace(1)* %134, i64 %135)
  store i8 addrspace(1)* %136, i8 addrspace(1)** %14
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %138 = addrspacecast i8 addrspace(1)* %137 to i8*
  %139 = ptrtoint i8* %138 to i64
  %140 = and i64 %139, 2233785415175766016
  %141 = icmp eq i64 %140, 576460752303423488
  br i1 %141, label %150, label %154
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %143, i8 addrspace(1)** %26
  br label %103
144:
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %146 = addrspacecast i8 addrspace(1)* %145 to i8*
  %147 = ptrtoint i8* %146 to i64
  %148 = and i64 %147, 2233785415175766016
  %149 = icmp eq i64 %148, 504403158265495552
  br i1 %149, label %160, label %165
150:
  %151 = call double @_bal_tagged_to_float(i8 addrspace(1)* %137)
  %152 = call {i64, i1} @_bal_float_to_int(double %151)
  %153 = extractvalue {i64, i1} %152, 1
  br i1 %153, label %158, label %155
154:
  store i8 addrspace(1)* %137, i8 addrspace(1)** %15
  br label %144
155:
  %156 = extractvalue {i64, i1} %152, 0
  %157 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %156)
  store i8 addrspace(1)* %157, i8 addrspace(1)** %15
  br label %144
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %159, i8 addrspace(1)** %26
  br label %103
160:
  %161 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %145)
  store i64 %161, i64* %16
  %162 = load i64, i64* %i.1
  %163 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %162, i64 1)
  %164 = extractvalue {i64, i1} %163, 1
  br i1 %164, label %176, label %167
165:
  %166 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %166, i8 addrspace(1)** %26
  br label %103
167:
  %168 = extractvalue {i64, i1} %163, 0
  store i64 %168, i64* %17
  %169 = load i64, i64* %17
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %171 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %170, i64 72057594037927928)
  %172 = bitcast i8 addrspace(1)* %171 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %173 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 1
  %174 = load i64, i64 addrspace(1)* %173, align 8
  %175 = icmp ult i64 %169, %174
  br i1 %175, label %178, label %191
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %177, i8 addrspace(1)** %26
  br label %103
178:
  %179 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 0
  %180 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %179, align 8
  %181 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %180, i64 0, i32 1
  %182 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %181, align 8
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %184 = load i64, i64* %17
  %185 = call i8 addrspace(1)* %182(i8 addrspace(1)* %183, i64 %184)
  store i8 addrspace(1)* %185, i8 addrspace(1)** %18
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %187 = addrspacecast i8 addrspace(1)* %186 to i8*
  %188 = ptrtoint i8* %187 to i64
  %189 = and i64 %188, 2233785415175766016
  %190 = icmp eq i64 %189, 576460752303423488
  br i1 %190, label %199, label %203
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %192, i8 addrspace(1)** %26
  br label %103
193:
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %195 = addrspacecast i8 addrspace(1)* %194 to i8*
  %196 = ptrtoint i8* %195 to i64
  %197 = and i64 %196, 2233785415175766016
  %198 = icmp eq i64 %197, 504403158265495552
  br i1 %198, label %209, label %215
199:
  %200 = call double @_bal_tagged_to_float(i8 addrspace(1)* %186)
  %201 = call {i64, i1} @_bal_float_to_int(double %200)
  %202 = extractvalue {i64, i1} %201, 1
  br i1 %202, label %207, label %204
203:
  store i8 addrspace(1)* %186, i8 addrspace(1)** %19
  br label %193
204:
  %205 = extractvalue {i64, i1} %201, 0
  %206 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %205)
  store i8 addrspace(1)* %206, i8 addrspace(1)** %19
  br label %193
207:
  %208 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %208, i8 addrspace(1)** %26
  br label %103
209:
  %210 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %194)
  store i64 %210, i64* %20
  %211 = load i64, i64* %16
  %212 = load i64, i64* %20
  %213 = icmp sgt i64 %211, %212
  store i1 %213, i1* %13
  %214 = load i1, i1* %13
  br i1 %214, label %95, label %99
215:
  %216 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %216, i8 addrspace(1)** %26
  br label %103
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %36, label %12
12:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !24
  %14 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %13, i64 -5), !dbg !24
  %15 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %14), !dbg !24
  store i64 %15, i64* %2, !dbg !24
  store i64 0, i64* %i
  br label %16
16:
  %17 = load i64, i64* %i
  %18 = load i64, i64* %2
  %19 = icmp slt i64 %17, %18
  store i1 %19, i1* %3
  %20 = load i1, i1* %3
  br i1 %20, label %23, label %21
21:
  %22 = load i64, i64* %c
  ret i64 %22
23:
  %24 = load i64, i64* %i
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %25, i64 72057594037927928)
  %27 = bitcast i8 addrspace(1)* %26 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %28 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 1
  %29 = load i64, i64 addrspace(1)* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %38, label %51
31:
  %32 = load i64, i64* %i
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %i
  br label %16
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 0
  %40 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %39, align 8
  %41 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %40, i64 0, i32 1
  %42 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %41, align 8
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %44 = load i64, i64* %i
  %45 = call i8 addrspace(1)* %42(i8 addrspace(1)* %43, i64 %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %4
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %47 = addrspacecast i8 addrspace(1)* %46 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 576460752303423488
  br i1 %50, label %59, label %63
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %52, i8 addrspace(1)** %8
  br label %34
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %55 = addrspacecast i8 addrspace(1)* %54 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 504403158265495552
  br i1 %58, label %69, label %75
59:
  %60 = call double @_bal_tagged_to_float(i8 addrspace(1)* %46)
  %61 = call {i64, i1} @_bal_float_to_int(double %60)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %67, label %64
63:
  store i8 addrspace(1)* %46, i8 addrspace(1)** %5
  br label %53
64:
  %65 = extractvalue {i64, i1} %61, 0
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %5
  br label %53
67:
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %68, i8 addrspace(1)** %8
  br label %34
69:
  %70 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %54)
  store i64 %70, i64* %6
  %71 = load i64, i64* %c
  %72 = load i64, i64* %6
  %73 = xor i64 %71, %72
  store i64 %73, i64* %7
  %74 = load i64, i64* %7
  store i64 %74, i64* %c
  br label %31
75:
  %76 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %76, i8 addrspace(1)** %8
  br label %34
}
define internal i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %0) !dbg !9 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %mid = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %list1 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %i.1 = alloca i64
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %93, label %26
26:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !26
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 -5), !dbg !26
  %29 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %28), !dbg !26
  store i64 %29, i64* %3, !dbg !26
  %30 = load i64, i64* %3
  %31 = icmp sle i64 %30, 1
  store i1 %31, i1* %2
  %32 = load i1, i1* %2
  br i1 %32, label %33, label %35
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %34
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !27
  %37 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %36, i64 -5), !dbg !27
  %38 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %37), !dbg !27
  store i64 %38, i64* %4, !dbg !27
  %39 = load i64, i64* %4
  %40 = icmp eq i64 2, 0
  br i1 %40, label %95, label %97
41:
  %42 = load i64, i64* %i
  %43 = load i64, i64* %mid
  %44 = icmp slt i64 %42, %43
  store i1 %44, i1* %7
  %45 = load i1, i1* %7
  br i1 %45, label %55, label %46
46:
  %47 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %48 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47 to i8 addrspace(1)*
  %49 = getelementptr i8, i8 addrspace(1)* %48, i64 1297036692682702852
  store i8 addrspace(1)* %49, i8 addrspace(1)** %12
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %50, i8 addrspace(1)** %list2
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !28
  %52 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %51, i64 -5), !dbg !28
  %53 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %52), !dbg !28
  store i64 %53, i64* %13, !dbg !28
  %54 = load i64, i64* %mid
  store i64 %54, i64* %i.1
  br label %66
55:
  %56 = load i64, i64* %i
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %58 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %57, i64 72057594037927928)
  %59 = bitcast i8 addrspace(1)* %58 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %60 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 1
  %61 = load i64, i64 addrspace(1)* %60, align 8
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %110, label %123
63:
  %64 = load i64, i64* %i
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i
  br label %41
66:
  %67 = load i64, i64* %i.1
  %68 = load i64, i64* %13
  %69 = icmp slt i64 %67, %68
  store i1 %69, i1* %14
  %70 = load i1, i1* %14
  br i1 %70, label %80, label %71
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !30
  %73 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %72), !dbg !30
  store i8 addrspace(1)* %73, i8 addrspace(1)** %19, !dbg !30
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !31
  %75 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %74), !dbg !31
  store i8 addrspace(1)* %75, i8 addrspace(1)** %20, !dbg !31
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !32
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !32
  %78 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %76, i8 addrspace(1)* %77), !dbg !32
  store i8 addrspace(1)* %78, i8 addrspace(1)** %21, !dbg !32
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  ret i8 addrspace(1)* %79
80:
  %81 = load i64, i64* %i.1
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %83 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %82, i64 72057594037927928)
  %84 = bitcast i8 addrspace(1)* %83 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %85 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  %86 = load i64, i64 addrspace(1)* %85, align 8
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %148, label %161
88:
  %89 = load i64, i64* %i.1
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %i.1
  br label %66
91:
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %92)
  unreachable
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %94)
  unreachable
95:
  %96 = call i8 addrspace(1)* @_bal_panic_construct(i64 10242), !dbg !25
  store i8 addrspace(1)* %96, i8 addrspace(1)** %22
  br label %91
97:
  %98 = icmp eq i64 %39, -9223372036854775808
  %99 = icmp eq i64 2, -1
  %100 = and i1 %98, %99
  br i1 %100, label %108, label %101
101:
  %102 = sdiv i64 %39, 2
  store i64 %102, i64* %5
  %103 = load i64, i64* %5
  store i64 %103, i64* %mid
  %104 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %105 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104 to i8 addrspace(1)*
  %106 = getelementptr i8, i8 addrspace(1)* %105, i64 1297036692682702852
  store i8 addrspace(1)* %106, i8 addrspace(1)** %6
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %107, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %41
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !25
  store i8 addrspace(1)* %109, i8 addrspace(1)** %22
  br label %91
110:
  %111 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 0
  %112 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %111, align 8
  %113 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %112, i64 0, i32 1
  %114 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %113, align 8
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %116 = load i64, i64* %i
  %117 = call i8 addrspace(1)* %114(i8 addrspace(1)* %115, i64 %116)
  store i8 addrspace(1)* %117, i8 addrspace(1)** %8
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %119 = addrspacecast i8 addrspace(1)* %118 to i8*
  %120 = ptrtoint i8* %119 to i64
  %121 = and i64 %120, 2233785415175766016
  %122 = icmp eq i64 %121, 576460752303423488
  br i1 %122, label %131, label %135
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %124, i8 addrspace(1)** %22
  br label %91
125:
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %127 = addrspacecast i8 addrspace(1)* %126 to i8*
  %128 = ptrtoint i8* %127 to i64
  %129 = and i64 %128, 2233785415175766016
  %130 = icmp eq i64 %129, 504403158265495552
  br i1 %130, label %141, label %146
131:
  %132 = call double @_bal_tagged_to_float(i8 addrspace(1)* %118)
  %133 = call {i64, i1} @_bal_float_to_int(double %132)
  %134 = extractvalue {i64, i1} %133, 1
  br i1 %134, label %139, label %136
135:
  store i8 addrspace(1)* %118, i8 addrspace(1)** %9
  br label %125
136:
  %137 = extractvalue {i64, i1} %133, 0
  %138 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %137)
  store i8 addrspace(1)* %138, i8 addrspace(1)** %9
  br label %125
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %140, i8 addrspace(1)** %22
  br label %91
141:
  %142 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %126)
  store i64 %142, i64* %10
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %144 = load i64, i64* %10, !dbg !29
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %144), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %143, i8 addrspace(1)* %145), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !29
  br label %63
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %147, i8 addrspace(1)** %22
  br label %91
148:
  %149 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 0
  %150 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %149, align 8
  %151 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %150, i64 0, i32 1
  %152 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %151, align 8
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %154 = load i64, i64* %i.1
  %155 = call i8 addrspace(1)* %152(i8 addrspace(1)* %153, i64 %154)
  store i8 addrspace(1)* %155, i8 addrspace(1)** %15
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %157 = addrspacecast i8 addrspace(1)* %156 to i8*
  %158 = ptrtoint i8* %157 to i64
  %159 = and i64 %158, 2233785415175766016
  %160 = icmp eq i64 %159, 576460752303423488
  br i1 %160, label %169, label %173
161:
  %162 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %162, i8 addrspace(1)** %22
  br label %91
163:
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %165 = addrspacecast i8 addrspace(1)* %164 to i8*
  %166 = ptrtoint i8* %165 to i64
  %167 = and i64 %166, 2233785415175766016
  %168 = icmp eq i64 %167, 504403158265495552
  br i1 %168, label %179, label %184
169:
  %170 = call double @_bal_tagged_to_float(i8 addrspace(1)* %156)
  %171 = call {i64, i1} @_bal_float_to_int(double %170)
  %172 = extractvalue {i64, i1} %171, 1
  br i1 %172, label %177, label %174
173:
  store i8 addrspace(1)* %156, i8 addrspace(1)** %16
  br label %163
174:
  %175 = extractvalue {i64, i1} %171, 0
  %176 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %175)
  store i8 addrspace(1)* %176, i8 addrspace(1)** %16
  br label %163
177:
  %178 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %178, i8 addrspace(1)** %22
  br label %91
179:
  %180 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %164)
  store i64 %180, i64* %17
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %182 = load i64, i64* %17, !dbg !33
  %183 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %182), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %181, i8 addrspace(1)* %183), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !33
  br label %88
184:
  %185 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %185, i8 addrspace(1)** %22
  br label %91
}
define internal i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !11 {
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %i1 = alloca i64
  %i2 = alloca i64
  %len1 = alloca i64
  %4 = alloca i64
  %len2 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8
  %31 = load i8*, i8** @_bal_stack_guard
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %116, label %33
33:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %34 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %35 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34 to i8 addrspace(1)*
  %36 = getelementptr i8, i8 addrspace(1)* %35, i64 1297036692682702852
  store i8 addrspace(1)* %36, i8 addrspace(1)** %3
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %37, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !35
  %39 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %38, i64 -5), !dbg !35
  %40 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %39), !dbg !35
  store i64 %40, i64* %4, !dbg !35
  %41 = load i64, i64* %4
  store i64 %41, i64* %len1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !36
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 -5), !dbg !36
  %44 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %43), !dbg !36
  store i64 %44, i64* %5, !dbg !36
  %45 = load i64, i64* %5
  store i64 %45, i64* %len2
  br label %46
46:
  br label %47
47:
  %48 = load i64, i64* %i1
  %49 = load i64, i64* %len1
  %50 = icmp slt i64 %48, %49
  store i1 %50, i1* %6
  %51 = load i1, i1* %6
  br i1 %51, label %53, label %84
52:
  br label %85
53:
  %54 = load i64, i64* %i2
  %55 = load i64, i64* %len2
  %56 = icmp slt i64 %54, %55
  store i1 %56, i1* %7
  %57 = load i1, i1* %7
  br i1 %57, label %58, label %83
58:
  %59 = load i64, i64* %i1
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 72057594037927928)
  %62 = bitcast i8 addrspace(1)* %61 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %63 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  %64 = load i64, i64 addrspace(1)* %63, align 8
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %118, label %131
66:
  %67 = load i64, i64* %i1
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %69 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %68, i64 72057594037927928)
  %70 = bitcast i8 addrspace(1)* %69 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %71 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  %72 = load i64, i64 addrspace(1)* %71, align 8
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %199, label %212
74:
  %75 = load i64, i64* %i2
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %77 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %76, i64 72057594037927928)
  %78 = bitcast i8 addrspace(1)* %77 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %79 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %78, i64 0, i32 1
  %80 = load i64, i64 addrspace(1)* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %219, label %232
82:
  br label %46
83:
  br label %84
84:
  br label %52
85:
  %86 = load i64, i64* %i1
  %87 = load i64, i64* %len1
  %88 = icmp slt i64 %86, %87
  store i1 %88, i1* %21
  %89 = load i1, i1* %21
  br i1 %89, label %90, label %98
90:
  %91 = load i64, i64* %i1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %92, i64 72057594037927928)
  %94 = bitcast i8 addrspace(1)* %93 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 1
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %239, label %252
98:
  br label %99
99:
  %100 = load i64, i64* %i2
  %101 = load i64, i64* %len2
  %102 = icmp slt i64 %100, %101
  store i1 %102, i1* %25
  %103 = load i1, i1* %25
  br i1 %103, label %104, label %112
104:
  %105 = load i64, i64* %i2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %107 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %106, i64 72057594037927928)
  %108 = bitcast i8 addrspace(1)* %107 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %109 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 1
  %110 = load i64, i64 addrspace(1)* %109, align 8
  %111 = icmp ult i64 %105, %110
  br i1 %111, label %259, label %272
112:
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %113
114:
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_bal_panic(i8 addrspace(1)* %115)
  unreachable
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 13316), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %117)
  unreachable
118:
  %119 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 0
  %120 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %119, align 8
  %121 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %120, i64 0, i32 1
  %122 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %121, align 8
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %124 = load i64, i64* %i1
  %125 = call i8 addrspace(1)* %122(i8 addrspace(1)* %123, i64 %124)
  store i8 addrspace(1)* %125, i8 addrspace(1)** %9
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %127 = addrspacecast i8 addrspace(1)* %126 to i8*
  %128 = ptrtoint i8* %127 to i64
  %129 = and i64 %128, 2233785415175766016
  %130 = icmp eq i64 %129, 576460752303423488
  br i1 %130, label %139, label %143
131:
  %132 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %132, i8 addrspace(1)** %29
  br label %114
133:
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %135 = addrspacecast i8 addrspace(1)* %134 to i8*
  %136 = ptrtoint i8* %135 to i64
  %137 = and i64 %136, 2233785415175766016
  %138 = icmp eq i64 %137, 504403158265495552
  br i1 %138, label %149, label %158
139:
  %140 = call double @_bal_tagged_to_float(i8 addrspace(1)* %126)
  %141 = call {i64, i1} @_bal_float_to_int(double %140)
  %142 = extractvalue {i64, i1} %141, 1
  br i1 %142, label %147, label %144
143:
  store i8 addrspace(1)* %126, i8 addrspace(1)** %10
  br label %133
144:
  %145 = extractvalue {i64, i1} %141, 0
  %146 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %145)
  store i8 addrspace(1)* %146, i8 addrspace(1)** %10
  br label %133
147:
  %148 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %148, i8 addrspace(1)** %29
  br label %114
149:
  %150 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %134)
  store i64 %150, i64* %11
  %151 = load i64, i64* %i2
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %153 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %152, i64 72057594037927928)
  %154 = bitcast i8 addrspace(1)* %153 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %155 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %154, i64 0, i32 1
  %156 = load i64, i64 addrspace(1)* %155, align 8
  %157 = icmp ult i64 %151, %156
  br i1 %157, label %160, label %173
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %159, i8 addrspace(1)** %29
  br label %114
160:
  %161 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %154, i64 0, i32 0
  %162 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %161, align 8
  %163 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %162, i64 0, i32 1
  %164 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %163, align 8
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %166 = load i64, i64* %i2
  %167 = call i8 addrspace(1)* %164(i8 addrspace(1)* %165, i64 %166)
  store i8 addrspace(1)* %167, i8 addrspace(1)** %12
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %169 = addrspacecast i8 addrspace(1)* %168 to i8*
  %170 = ptrtoint i8* %169 to i64
  %171 = and i64 %170, 2233785415175766016
  %172 = icmp eq i64 %171, 576460752303423488
  br i1 %172, label %181, label %185
173:
  %174 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %174, i8 addrspace(1)** %29
  br label %114
175:
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %177 = addrspacecast i8 addrspace(1)* %176 to i8*
  %178 = ptrtoint i8* %177 to i64
  %179 = and i64 %178, 2233785415175766016
  %180 = icmp eq i64 %179, 504403158265495552
  br i1 %180, label %191, label %197
181:
  %182 = call double @_bal_tagged_to_float(i8 addrspace(1)* %168)
  %183 = call {i64, i1} @_bal_float_to_int(double %182)
  %184 = extractvalue {i64, i1} %183, 1
  br i1 %184, label %189, label %186
185:
  store i8 addrspace(1)* %168, i8 addrspace(1)** %13
  br label %175
186:
  %187 = extractvalue {i64, i1} %183, 0
  %188 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %187)
  store i8 addrspace(1)* %188, i8 addrspace(1)** %13
  br label %175
189:
  %190 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %190, i8 addrspace(1)** %29
  br label %114
191:
  %192 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %176)
  store i64 %192, i64* %14
  %193 = load i64, i64* %11
  %194 = load i64, i64* %14
  %195 = icmp sle i64 %193, %194
  store i1 %195, i1* %8
  %196 = load i1, i1* %8
  br i1 %196, label %66, label %74
197:
  %198 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %198, i8 addrspace(1)** %29
  br label %114
199:
  %200 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 0
  %201 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %200, align 8
  %202 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %201, i64 0, i32 1
  %203 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %202, align 8
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %205 = load i64, i64* %i1
  %206 = call i8 addrspace(1)* %203(i8 addrspace(1)* %204, i64 %205)
  store i8 addrspace(1)* %206, i8 addrspace(1)** %15
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %207, i8 addrspace(1)* %208), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !37
  %209 = load i64, i64* %i1
  %210 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %209, i64 1)
  %211 = extractvalue {i64, i1} %210, 1
  br i1 %211, label %217, label %214
212:
  %213 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %213, i8 addrspace(1)** %29
  br label %114
214:
  %215 = extractvalue {i64, i1} %210, 0
  store i64 %215, i64* %17
  %216 = load i64, i64* %17
  store i64 %216, i64* %i1
  br label %82
217:
  %218 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %218, i8 addrspace(1)** %29
  br label %114
219:
  %220 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %78, i64 0, i32 0
  %221 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %220, align 8
  %222 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %221, i64 0, i32 1
  %223 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %222, align 8
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %225 = load i64, i64* %i2
  %226 = call i8 addrspace(1)* %223(i8 addrspace(1)* %224, i64 %225)
  store i8 addrspace(1)* %226, i8 addrspace(1)** %18
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %227, i8 addrspace(1)* %228), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !38
  %229 = load i64, i64* %i2
  %230 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %229, i64 1)
  %231 = extractvalue {i64, i1} %230, 1
  br i1 %231, label %237, label %234
232:
  %233 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %233, i8 addrspace(1)** %29
  br label %114
234:
  %235 = extractvalue {i64, i1} %230, 0
  store i64 %235, i64* %20
  %236 = load i64, i64* %20
  store i64 %236, i64* %i2
  br label %82
237:
  %238 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %238, i8 addrspace(1)** %29
  br label %114
239:
  %240 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 0
  %241 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %240, align 8
  %242 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %241, i64 0, i32 1
  %243 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %242, align 8
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %245 = load i64, i64* %i1
  %246 = call i8 addrspace(1)* %243(i8 addrspace(1)* %244, i64 %245)
  store i8 addrspace(1)* %246, i8 addrspace(1)** %22
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %248 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %247, i8 addrspace(1)* %248), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !39
  %249 = load i64, i64* %i1
  %250 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %249, i64 1)
  %251 = extractvalue {i64, i1} %250, 1
  br i1 %251, label %257, label %254
252:
  %253 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %253, i8 addrspace(1)** %29
  br label %114
254:
  %255 = extractvalue {i64, i1} %250, 0
  store i64 %255, i64* %24
  %256 = load i64, i64* %24
  store i64 %256, i64* %i1
  br label %85
257:
  %258 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %258, i8 addrspace(1)** %29
  br label %114
259:
  %260 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 0
  %261 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %260, align 8
  %262 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %261, i64 0, i32 1
  %263 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %262, align 8
  %264 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %265 = load i64, i64* %i2
  %266 = call i8 addrspace(1)* %263(i8 addrspace(1)* %264, i64 %265)
  store i8 addrspace(1)* %266, i8 addrspace(1)** %26
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %267, i8 addrspace(1)* %268), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !40
  %269 = load i64, i64* %i2
  %270 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %269, i64 1)
  %271 = extractvalue {i64, i1} %270, 1
  br i1 %271, label %277, label %274
272:
  %273 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %273, i8 addrspace(1)** %29
  br label %114
274:
  %275 = extractvalue {i64, i1} %270, 0
  store i64 %275, i64* %28
  %276 = load i64, i64* %28
  store i64 %276, i64* %i2
  br label %99
277:
  %278 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %278, i8 addrspace(1)** %29
  br label %114
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/mergesort-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"checksum", linkageName:"_B_checksum", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"sort", linkageName:"_B_sort", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"merge", linkageName:"_B_merge", scope: !1, file: !1, line: 52, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 17, column: 14, scope: !5)
!16 = !DILocation(line: 18, column: 23, scope: !5)
!17 = !DILocation(line: 18, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 14, scope: !5)
!19 = !DILocation(line: 24, column: 15, scope: !5)
!20 = !DILocation(line: 24, column: 30, scope: !5)
!21 = !DILocation(line: 24, column: 4, scope: !5)
!22 = !DILocation(line: 21, column: 12, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 29, column: 35, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 37, column: 15, scope: !9)
!27 = !DILocation(line: 40, column: 22, scope: !9)
!28 = !DILocation(line: 46, column: 37, scope: !9)
!29 = !DILocation(line: 43, column: 18, scope: !9)
!30 = !DILocation(line: 49, column: 17, scope: !9)
!31 = !DILocation(line: 49, column: 30, scope: !9)
!32 = !DILocation(line: 49, column: 11, scope: !9)
!33 = !DILocation(line: 47, column: 18, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 56, column: 24, scope: !11)
!36 = !DILocation(line: 57, column: 24, scope: !11)
!37 = !DILocation(line: 62, column: 31, scope: !11)
!38 = !DILocation(line: 66, column: 31, scope: !11)
!39 = !DILocation(line: 75, column: 19, scope: !11)
!40 = !DILocation(line: 79, column: 19, scope: !11)
