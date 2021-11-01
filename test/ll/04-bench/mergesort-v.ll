@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
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
  %31 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %32 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31 to i8 addrspace(1)*
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
  %91 = bitcast i8 addrspace(1)* %90 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %92 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 1
  %93 = load i64, i64 addrspace(1)* %92, align 8
  %94 = icmp ult i64 %88, %93
  br i1 %94, label %129, label %139
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
  %130 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 3
  %131 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %130, align 8
  %132 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 %88
  %133 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %132, align 8
  store i8 addrspace(1)* %133, i8 addrspace(1)** %14
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %135 = addrspacecast i8 addrspace(1)* %134 to i8*
  %136 = ptrtoint i8* %135 to i64
  %137 = and i64 %136, 2233785415175766016
  %138 = icmp eq i64 %137, 576460752303423488
  br i1 %138, label %147, label %151
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %140, i8 addrspace(1)** %26
  br label %103
141:
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %143 = addrspacecast i8 addrspace(1)* %142 to i8*
  %144 = ptrtoint i8* %143 to i64
  %145 = and i64 %144, 2233785415175766016
  %146 = icmp eq i64 %145, 504403158265495552
  br i1 %146, label %157, label %162
147:
  %148 = call double @_bal_tagged_to_float(i8 addrspace(1)* %134)
  %149 = call {i64, i1} @_bal_float_to_int(double %148)
  %150 = extractvalue {i64, i1} %149, 1
  br i1 %150, label %155, label %152
151:
  store i8 addrspace(1)* %134, i8 addrspace(1)** %15
  br label %141
152:
  %153 = extractvalue {i64, i1} %149, 0
  %154 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %153)
  store i8 addrspace(1)* %154, i8 addrspace(1)** %15
  br label %141
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %156, i8 addrspace(1)** %26
  br label %103
157:
  %158 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %142)
  store i64 %158, i64* %16
  %159 = load i64, i64* %i.1
  %160 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %159, i64 1)
  %161 = extractvalue {i64, i1} %160, 1
  br i1 %161, label %173, label %164
162:
  %163 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %163, i8 addrspace(1)** %26
  br label %103
164:
  %165 = extractvalue {i64, i1} %160, 0
  store i64 %165, i64* %17
  %166 = load i64, i64* %17
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %168 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %167, i64 72057594037927928)
  %169 = bitcast i8 addrspace(1)* %168 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %170 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %169, i64 0, i32 1
  %171 = load i64, i64 addrspace(1)* %170, align 8
  %172 = icmp ult i64 %166, %171
  br i1 %172, label %175, label %185
173:
  %174 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %174, i8 addrspace(1)** %26
  br label %103
175:
  %176 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %169, i64 0, i32 3
  %177 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %176, align 8
  %178 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %177, i64 0, i64 %166
  %179 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %178, align 8
  store i8 addrspace(1)* %179, i8 addrspace(1)** %18
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %181 = addrspacecast i8 addrspace(1)* %180 to i8*
  %182 = ptrtoint i8* %181 to i64
  %183 = and i64 %182, 2233785415175766016
  %184 = icmp eq i64 %183, 576460752303423488
  br i1 %184, label %193, label %197
185:
  %186 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %186, i8 addrspace(1)** %26
  br label %103
187:
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %189 = addrspacecast i8 addrspace(1)* %188 to i8*
  %190 = ptrtoint i8* %189 to i64
  %191 = and i64 %190, 2233785415175766016
  %192 = icmp eq i64 %191, 504403158265495552
  br i1 %192, label %203, label %209
193:
  %194 = call double @_bal_tagged_to_float(i8 addrspace(1)* %180)
  %195 = call {i64, i1} @_bal_float_to_int(double %194)
  %196 = extractvalue {i64, i1} %195, 1
  br i1 %196, label %201, label %198
197:
  store i8 addrspace(1)* %180, i8 addrspace(1)** %19
  br label %187
198:
  %199 = extractvalue {i64, i1} %195, 0
  %200 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %199)
  store i8 addrspace(1)* %200, i8 addrspace(1)** %19
  br label %187
201:
  %202 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %202, i8 addrspace(1)** %26
  br label %103
203:
  %204 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %188)
  store i64 %204, i64* %20
  %205 = load i64, i64* %16
  %206 = load i64, i64* %20
  %207 = icmp sgt i64 %205, %206
  store i1 %207, i1* %13
  %208 = load i1, i1* %13
  br i1 %208, label %95, label %99
209:
  %210 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %210, i8 addrspace(1)** %26
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
  %27 = bitcast i8 addrspace(1)* %26 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %28 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 1
  %29 = load i64, i64 addrspace(1)* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %38, label %48
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
  %39 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 3
  %40 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %39, align 8
  %41 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %40, i64 0, i64 %24
  %42 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %41, align 8
  store i8 addrspace(1)* %42, i8 addrspace(1)** %4
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 576460752303423488
  br i1 %47, label %56, label %60
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %49, i8 addrspace(1)** %8
  br label %34
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %52 = addrspacecast i8 addrspace(1)* %51 to i8*
  %53 = ptrtoint i8* %52 to i64
  %54 = and i64 %53, 2233785415175766016
  %55 = icmp eq i64 %54, 504403158265495552
  br i1 %55, label %66, label %72
56:
  %57 = call double @_bal_tagged_to_float(i8 addrspace(1)* %43)
  %58 = call {i64, i1} @_bal_float_to_int(double %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %64, label %61
60:
  store i8 addrspace(1)* %43, i8 addrspace(1)** %5
  br label %50
61:
  %62 = extractvalue {i64, i1} %58, 0
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  store i8 addrspace(1)* %63, i8 addrspace(1)** %5
  br label %50
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %65, i8 addrspace(1)** %8
  br label %34
66:
  %67 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %51)
  store i64 %67, i64* %6
  %68 = load i64, i64* %c
  %69 = load i64, i64* %6
  %70 = xor i64 %68, %69
  store i64 %70, i64* %7
  %71 = load i64, i64* %7
  store i64 %71, i64* %c
  br label %31
72:
  %73 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %73, i8 addrspace(1)** %8
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
  %47 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %48 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47 to i8 addrspace(1)*
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
  %59 = bitcast i8 addrspace(1)* %58 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %60 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 1
  %61 = load i64, i64 addrspace(1)* %60, align 8
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %110, label %120
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
  %84 = bitcast i8 addrspace(1)* %83 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %85 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  %86 = load i64, i64 addrspace(1)* %85, align 8
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %145, label %155
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
  %104 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %105 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104 to i8 addrspace(1)*
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
  %111 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 3
  %112 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %111, align 8
  %113 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %112, i64 0, i64 %56
  %114 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %113, align 8
  store i8 addrspace(1)* %114, i8 addrspace(1)** %8
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %116 = addrspacecast i8 addrspace(1)* %115 to i8*
  %117 = ptrtoint i8* %116 to i64
  %118 = and i64 %117, 2233785415175766016
  %119 = icmp eq i64 %118, 576460752303423488
  br i1 %119, label %128, label %132
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %121, i8 addrspace(1)** %22
  br label %91
122:
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %124 = addrspacecast i8 addrspace(1)* %123 to i8*
  %125 = ptrtoint i8* %124 to i64
  %126 = and i64 %125, 2233785415175766016
  %127 = icmp eq i64 %126, 504403158265495552
  br i1 %127, label %138, label %143
128:
  %129 = call double @_bal_tagged_to_float(i8 addrspace(1)* %115)
  %130 = call {i64, i1} @_bal_float_to_int(double %129)
  %131 = extractvalue {i64, i1} %130, 1
  br i1 %131, label %136, label %133
132:
  store i8 addrspace(1)* %115, i8 addrspace(1)** %9
  br label %122
133:
  %134 = extractvalue {i64, i1} %130, 0
  %135 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %134)
  store i8 addrspace(1)* %135, i8 addrspace(1)** %9
  br label %122
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %137, i8 addrspace(1)** %22
  br label %91
138:
  %139 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %123)
  store i64 %139, i64* %10
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %141 = load i64, i64* %10, !dbg !29
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %140, i8 addrspace(1)* %142), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !29
  br label %63
143:
  %144 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %144, i8 addrspace(1)** %22
  br label %91
145:
  %146 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 3
  %147 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %146, align 8
  %148 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 %81
  %149 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %148, align 8
  store i8 addrspace(1)* %149, i8 addrspace(1)** %15
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %151 = addrspacecast i8 addrspace(1)* %150 to i8*
  %152 = ptrtoint i8* %151 to i64
  %153 = and i64 %152, 2233785415175766016
  %154 = icmp eq i64 %153, 576460752303423488
  br i1 %154, label %163, label %167
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %156, i8 addrspace(1)** %22
  br label %91
157:
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %159 = addrspacecast i8 addrspace(1)* %158 to i8*
  %160 = ptrtoint i8* %159 to i64
  %161 = and i64 %160, 2233785415175766016
  %162 = icmp eq i64 %161, 504403158265495552
  br i1 %162, label %173, label %178
163:
  %164 = call double @_bal_tagged_to_float(i8 addrspace(1)* %150)
  %165 = call {i64, i1} @_bal_float_to_int(double %164)
  %166 = extractvalue {i64, i1} %165, 1
  br i1 %166, label %171, label %168
167:
  store i8 addrspace(1)* %150, i8 addrspace(1)** %16
  br label %157
168:
  %169 = extractvalue {i64, i1} %165, 0
  %170 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %169)
  store i8 addrspace(1)* %170, i8 addrspace(1)** %16
  br label %157
171:
  %172 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %172, i8 addrspace(1)** %22
  br label %91
173:
  %174 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %158)
  store i64 %174, i64* %17
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %176 = load i64, i64* %17, !dbg !33
  %177 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %176), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %175, i8 addrspace(1)* %177), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !33
  br label %88
178:
  %179 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %179, i8 addrspace(1)** %22
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
  %34 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %35 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34 to i8 addrspace(1)*
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
  %62 = bitcast i8 addrspace(1)* %61 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %63 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  %64 = load i64, i64 addrspace(1)* %63, align 8
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %118, label %128
66:
  %67 = load i64, i64* %i1
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %69 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %68, i64 72057594037927928)
  %70 = bitcast i8 addrspace(1)* %69 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %71 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  %72 = load i64, i64 addrspace(1)* %71, align 8
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %193, label %203
74:
  %75 = load i64, i64* %i2
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %77 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %76, i64 72057594037927928)
  %78 = bitcast i8 addrspace(1)* %77 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %79 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %78, i64 0, i32 1
  %80 = load i64, i64 addrspace(1)* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %210, label %220
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
  %94 = bitcast i8 addrspace(1)* %93 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 1
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %227, label %237
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
  %108 = bitcast i8 addrspace(1)* %107 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %109 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 1
  %110 = load i64, i64 addrspace(1)* %109, align 8
  %111 = icmp ult i64 %105, %110
  br i1 %111, label %244, label %254
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
  %119 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 3
  %120 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %119, align 8
  %121 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %120, i64 0, i64 %59
  %122 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %121, align 8
  store i8 addrspace(1)* %122, i8 addrspace(1)** %9
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %124 = addrspacecast i8 addrspace(1)* %123 to i8*
  %125 = ptrtoint i8* %124 to i64
  %126 = and i64 %125, 2233785415175766016
  %127 = icmp eq i64 %126, 576460752303423488
  br i1 %127, label %136, label %140
128:
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %129, i8 addrspace(1)** %29
  br label %114
130:
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %132 = addrspacecast i8 addrspace(1)* %131 to i8*
  %133 = ptrtoint i8* %132 to i64
  %134 = and i64 %133, 2233785415175766016
  %135 = icmp eq i64 %134, 504403158265495552
  br i1 %135, label %146, label %155
136:
  %137 = call double @_bal_tagged_to_float(i8 addrspace(1)* %123)
  %138 = call {i64, i1} @_bal_float_to_int(double %137)
  %139 = extractvalue {i64, i1} %138, 1
  br i1 %139, label %144, label %141
140:
  store i8 addrspace(1)* %123, i8 addrspace(1)** %10
  br label %130
141:
  %142 = extractvalue {i64, i1} %138, 0
  %143 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %142)
  store i8 addrspace(1)* %143, i8 addrspace(1)** %10
  br label %130
144:
  %145 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %145, i8 addrspace(1)** %29
  br label %114
146:
  %147 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %131)
  store i64 %147, i64* %11
  %148 = load i64, i64* %i2
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %150 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %149, i64 72057594037927928)
  %151 = bitcast i8 addrspace(1)* %150 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %152 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %151, i64 0, i32 1
  %153 = load i64, i64 addrspace(1)* %152, align 8
  %154 = icmp ult i64 %148, %153
  br i1 %154, label %157, label %167
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %156, i8 addrspace(1)** %29
  br label %114
157:
  %158 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %151, i64 0, i32 3
  %159 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %158, align 8
  %160 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %159, i64 0, i64 %148
  %161 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %160, align 8
  store i8 addrspace(1)* %161, i8 addrspace(1)** %12
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %163 = addrspacecast i8 addrspace(1)* %162 to i8*
  %164 = ptrtoint i8* %163 to i64
  %165 = and i64 %164, 2233785415175766016
  %166 = icmp eq i64 %165, 576460752303423488
  br i1 %166, label %175, label %179
167:
  %168 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %168, i8 addrspace(1)** %29
  br label %114
169:
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %171 = addrspacecast i8 addrspace(1)* %170 to i8*
  %172 = ptrtoint i8* %171 to i64
  %173 = and i64 %172, 2233785415175766016
  %174 = icmp eq i64 %173, 504403158265495552
  br i1 %174, label %185, label %191
175:
  %176 = call double @_bal_tagged_to_float(i8 addrspace(1)* %162)
  %177 = call {i64, i1} @_bal_float_to_int(double %176)
  %178 = extractvalue {i64, i1} %177, 1
  br i1 %178, label %183, label %180
179:
  store i8 addrspace(1)* %162, i8 addrspace(1)** %13
  br label %169
180:
  %181 = extractvalue {i64, i1} %177, 0
  %182 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %181)
  store i8 addrspace(1)* %182, i8 addrspace(1)** %13
  br label %169
183:
  %184 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %184, i8 addrspace(1)** %29
  br label %114
185:
  %186 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %170)
  store i64 %186, i64* %14
  %187 = load i64, i64* %11
  %188 = load i64, i64* %14
  %189 = icmp sle i64 %187, %188
  store i1 %189, i1* %8
  %190 = load i1, i1* %8
  br i1 %190, label %66, label %74
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %192, i8 addrspace(1)** %29
  br label %114
193:
  %194 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 3
  %195 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %194, align 8
  %196 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %195, i64 0, i64 %67
  %197 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %196, align 8
  store i8 addrspace(1)* %197, i8 addrspace(1)** %15
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %198, i8 addrspace(1)* %199), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !37
  %200 = load i64, i64* %i1
  %201 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %200, i64 1)
  %202 = extractvalue {i64, i1} %201, 1
  br i1 %202, label %208, label %205
203:
  %204 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %204, i8 addrspace(1)** %29
  br label %114
205:
  %206 = extractvalue {i64, i1} %201, 0
  store i64 %206, i64* %17
  %207 = load i64, i64* %17
  store i64 %207, i64* %i1
  br label %82
208:
  %209 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %209, i8 addrspace(1)** %29
  br label %114
210:
  %211 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %78, i64 0, i32 3
  %212 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %211, align 8
  %213 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %212, i64 0, i64 %75
  %214 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %213, align 8
  store i8 addrspace(1)* %214, i8 addrspace(1)** %18
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %215, i8 addrspace(1)* %216), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !38
  %217 = load i64, i64* %i2
  %218 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %217, i64 1)
  %219 = extractvalue {i64, i1} %218, 1
  br i1 %219, label %225, label %222
220:
  %221 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %221, i8 addrspace(1)** %29
  br label %114
222:
  %223 = extractvalue {i64, i1} %218, 0
  store i64 %223, i64* %20
  %224 = load i64, i64* %20
  store i64 %224, i64* %i2
  br label %82
225:
  %226 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %226, i8 addrspace(1)** %29
  br label %114
227:
  %228 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 3
  %229 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %228, align 8
  %230 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %229, i64 0, i64 %91
  %231 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %230, align 8
  store i8 addrspace(1)* %231, i8 addrspace(1)** %22
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %232, i8 addrspace(1)* %233), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !39
  %234 = load i64, i64* %i1
  %235 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %234, i64 1)
  %236 = extractvalue {i64, i1} %235, 1
  br i1 %236, label %242, label %239
237:
  %238 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %238, i8 addrspace(1)** %29
  br label %114
239:
  %240 = extractvalue {i64, i1} %235, 0
  store i64 %240, i64* %24
  %241 = load i64, i64* %24
  store i64 %241, i64* %i1
  br label %85
242:
  %243 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %243, i8 addrspace(1)** %29
  br label %114
244:
  %245 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 3
  %246 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %245, align 8
  %247 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %246, i64 0, i64 %105
  %248 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %247, align 8
  store i8 addrspace(1)* %248, i8 addrspace(1)** %26
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %249, i8 addrspace(1)* %250), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !40
  %251 = load i64, i64* %i2
  %252 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %251, i64 1)
  %253 = extractvalue {i64, i1} %252, 1
  br i1 %253, label %259, label %256
254:
  %255 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %255, i8 addrspace(1)** %29
  br label %114
256:
  %257 = extractvalue {i64, i1} %252, 0
  store i64 %257, i64* %28
  %258 = load i64, i64* %28
  store i64 %258, i64* %i2
  br label %99
259:
  %260 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %260, i8 addrspace(1)** %29
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
!16 = !DILocation(line: 18, column: 16, scope: !5)
!17 = !DILocation(line: 18, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 8, scope: !5)
!19 = !DILocation(line: 24, column: 15, scope: !5)
!20 = !DILocation(line: 24, column: 30, scope: !5)
!21 = !DILocation(line: 24, column: 4, scope: !5)
!22 = !DILocation(line: 21, column: 12, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 29, column: 28, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 37, column: 8, scope: !9)
!27 = !DILocation(line: 40, column: 15, scope: !9)
!28 = !DILocation(line: 46, column: 30, scope: !9)
!29 = !DILocation(line: 43, column: 8, scope: !9)
!30 = !DILocation(line: 49, column: 17, scope: !9)
!31 = !DILocation(line: 49, column: 30, scope: !9)
!32 = !DILocation(line: 49, column: 11, scope: !9)
!33 = !DILocation(line: 47, column: 8, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 56, column: 17, scope: !11)
!36 = !DILocation(line: 57, column: 17, scope: !11)
!37 = !DILocation(line: 62, column: 20, scope: !11)
!38 = !DILocation(line: 66, column: 20, scope: !11)
!39 = !DILocation(line: 75, column: 8, scope: !11)
!40 = !DILocation(line: 79, column: 8, scope: !11)
