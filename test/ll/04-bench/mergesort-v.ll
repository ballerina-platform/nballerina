@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
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
  br i1 %29, label %110, label %30
30:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %31 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %35
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36
  %37 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702852
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %38, i8 addrspace(1)** %v
  %39 = load i64, i64* %len, !dbg !14
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  store i64 0, i64* %i
  br label %41
41:
  %42 = load i64, i64* %i
  %43 = load i64, i64* %len
  %44 = icmp slt i64 %42, %43
  store i1 %44, i1* %3
  %45 = load i1, i1* %3
  br i1 %45, label %63, label %46
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %48 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %47), !dbg !15
  store i8 addrspace(1)* %48, i8 addrspace(1)** %7, !dbg !15
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %s
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  %51 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %50, i64 -5), !dbg !16
  %52 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %51), !dbg !16
  store i64 %52, i64* %9, !dbg !16
  %53 = load i64, i64* %9
  %54 = load i64, i64* %len
  %55 = icmp eq i64 %53, %54
  store i1 %55, i1* %8
  %56 = load i1, i1* %8, !dbg !17
  %57 = zext i1 %56 to i64, !dbg !17
  %58 = or i64 %57, 72057594037927936, !dbg !17
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %60 = load i64, i64* %len
  %61 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %60, i64 1)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %114, label %112
63:
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !18
  %65 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %64, i64 -5), !dbg !18
  %66 = load i64, i64* %x, !dbg !18
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66), !dbg !18
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %65, i8 addrspace(1)* %67), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  %68 = load i64, i64* %x
  %69 = load i64, i64* %a
  %70 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %68, i64 %69)
  %71 = extractvalue {i64, i1} %70, 1
  br i1 %71, label %121, label %116
72:
  %73 = load i64, i64* %i
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %i
  br label %41
75:
  %76 = load i64, i64* %i.1
  %77 = load i64, i64* %11
  %78 = icmp slt i64 %76, %77
  store i1 %78, i1* %12
  %79 = load i1, i1* %12
  br i1 %79, label %92, label %80
80:
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !19
  %82 = call i64 @_B_checksum(i8 addrspace(1)* %81), !dbg !19
  store i64 %82, i64* %23, !dbg !19
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !20
  %84 = call i64 @_B_checksum(i8 addrspace(1)* %83), !dbg !20
  store i64 %84, i64* %24, !dbg !20
  %85 = load i64, i64* %23
  %86 = load i64, i64* %24
  %87 = icmp eq i64 %85, %86
  store i1 %87, i1* %22
  %88 = load i1, i1* %22, !dbg !21
  %89 = zext i1 %88 to i64, !dbg !21
  %90 = or i64 %89, 72057594037927936, !dbg !21
  %91 = getelementptr i8, i8 addrspace(1)* null, i64 %90, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !21
  ret void
92:
  %93 = load i64, i64* %i.1
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %95 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %94, i64 72057594037927928)
  %96 = bitcast i8 addrspace(1)* %95 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %97 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 1
  %98 = load i64, i64 addrspace(1)* %97, align 8
  %99 = icmp ult i64 %93, %98
  br i1 %99, label %134, label %144
100:
  %101 = zext i1 0 to i64, !dbg !22
  %102 = or i64 %101, 72057594037927936, !dbg !22
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !22
  br label %104
104:
  br label %105
105:
  %106 = load i64, i64* %i.1
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %i.1
  br label %75
108:
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_bal_panic(i8 addrspace(1)* %109)
  unreachable
110:
  %111 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %111)
  unreachable
112:
  %113 = extractvalue {i64, i1} %61, 0
  store i64 %113, i64* %11
  store i64 0, i64* %i.1
  br label %75
114:
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !13
  store i8 addrspace(1)* %115, i8 addrspace(1)** %26
  br label %108
116:
  %117 = extractvalue {i64, i1} %70, 0
  store i64 %117, i64* %5
  %118 = load i64, i64* %5
  %119 = load i64, i64* %m
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %123, label %125
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !13
  store i8 addrspace(1)* %122, i8 addrspace(1)** %26
  br label %108
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842), !dbg !13
  store i8 addrspace(1)* %124, i8 addrspace(1)** %26
  br label %108
125:
  %126 = icmp eq i64 %118, -9223372036854775808
  %127 = icmp eq i64 %119, -1
  %128 = and i1 %126, %127
  br i1 %128, label %131, label %129
129:
  %130 = srem i64 %118, %119
  store i64 %130, i64* %6
  br label %132
131:
  store i64 0, i64* %6
  br label %132
132:
  %133 = load i64, i64* %6
  store i64 %133, i64* %x
  br label %72
134:
  %135 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 3
  %136 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %135, align 8
  %137 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %136, i64 0, i64 %93
  %138 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %137, align 8
  store i8 addrspace(1)* %138, i8 addrspace(1)** %14
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %140 = addrspacecast i8 addrspace(1)* %139 to i8*
  %141 = ptrtoint i8* %140 to i64
  %142 = and i64 %141, 2233785415175766016
  %143 = icmp eq i64 %142, 576460752303423488
  br i1 %143, label %152, label %156
144:
  %145 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %145, i8 addrspace(1)** %26
  br label %108
146:
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %148 = addrspacecast i8 addrspace(1)* %147 to i8*
  %149 = ptrtoint i8* %148 to i64
  %150 = and i64 %149, 2233785415175766016
  %151 = icmp eq i64 %150, 504403158265495552
  br i1 %151, label %162, label %167
152:
  %153 = call double @_bal_tagged_to_float(i8 addrspace(1)* %139)
  %154 = call {i64, i1} @_bal_float_to_int(double %153)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %160, label %157
156:
  store i8 addrspace(1)* %139, i8 addrspace(1)** %15
  br label %146
157:
  %158 = extractvalue {i64, i1} %154, 0
  %159 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %158)
  store i8 addrspace(1)* %159, i8 addrspace(1)** %15
  br label %146
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %161, i8 addrspace(1)** %26
  br label %108
162:
  %163 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %147)
  store i64 %163, i64* %16
  %164 = load i64, i64* %i.1
  %165 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %164, i64 1)
  %166 = extractvalue {i64, i1} %165, 1
  br i1 %166, label %178, label %169
167:
  %168 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %168, i8 addrspace(1)** %26
  br label %108
169:
  %170 = extractvalue {i64, i1} %165, 0
  store i64 %170, i64* %17
  %171 = load i64, i64* %17
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %173 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %172, i64 72057594037927928)
  %174 = bitcast i8 addrspace(1)* %173 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %175 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %174, i64 0, i32 1
  %176 = load i64, i64 addrspace(1)* %175, align 8
  %177 = icmp ult i64 %171, %176
  br i1 %177, label %180, label %190
178:
  %179 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %179, i8 addrspace(1)** %26
  br label %108
180:
  %181 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %174, i64 0, i32 3
  %182 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %181, align 8
  %183 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %182, i64 0, i64 %171
  %184 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %183, align 8
  store i8 addrspace(1)* %184, i8 addrspace(1)** %18
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %186 = addrspacecast i8 addrspace(1)* %185 to i8*
  %187 = ptrtoint i8* %186 to i64
  %188 = and i64 %187, 2233785415175766016
  %189 = icmp eq i64 %188, 576460752303423488
  br i1 %189, label %198, label %202
190:
  %191 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %191, i8 addrspace(1)** %26
  br label %108
192:
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %194 = addrspacecast i8 addrspace(1)* %193 to i8*
  %195 = ptrtoint i8* %194 to i64
  %196 = and i64 %195, 2233785415175766016
  %197 = icmp eq i64 %196, 504403158265495552
  br i1 %197, label %208, label %214
198:
  %199 = call double @_bal_tagged_to_float(i8 addrspace(1)* %185)
  %200 = call {i64, i1} @_bal_float_to_int(double %199)
  %201 = extractvalue {i64, i1} %200, 1
  br i1 %201, label %206, label %203
202:
  store i8 addrspace(1)* %185, i8 addrspace(1)** %19
  br label %192
203:
  %204 = extractvalue {i64, i1} %200, 0
  %205 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %204)
  store i8 addrspace(1)* %205, i8 addrspace(1)** %19
  br label %192
206:
  %207 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %207, i8 addrspace(1)** %26
  br label %108
208:
  %209 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %193)
  store i64 %209, i64* %20
  %210 = load i64, i64* %16
  %211 = load i64, i64* %20
  %212 = icmp sgt i64 %210, %211
  store i1 %212, i1* %13
  %213 = load i1, i1* %13
  br i1 %213, label %100, label %104
214:
  %215 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %215, i8 addrspace(1)** %26
  br label %108
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
  %27 = bitcast i8 addrspace(1)* %26 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %28 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 1
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
  %39 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 3
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
  br i1 %25, label %97, label %26
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
  br i1 %40, label %99, label %101
41:
  %42 = load i64, i64* %i
  %43 = load i64, i64* %mid
  %44 = icmp slt i64 %42, %43
  store i1 %44, i1* %7
  %45 = load i1, i1* %7
  br i1 %45, label %59, label %46
46:
  %47 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %48 = bitcast i8 addrspace(1)* %47 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %49 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %49
  %50 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %50
  %51 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %51
  %52 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %52
  %53 = getelementptr i8, i8 addrspace(1)* %47, i64 1297036692682702852
  store i8 addrspace(1)* %53, i8 addrspace(1)** %12
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %54, i8 addrspace(1)** %list2
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !28
  %56 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %55, i64 -5), !dbg !28
  %57 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %56), !dbg !28
  store i64 %57, i64* %13, !dbg !28
  %58 = load i64, i64* %mid
  store i64 %58, i64* %i.1
  br label %70
59:
  %60 = load i64, i64* %i
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %62 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %61, i64 72057594037927928)
  %63 = bitcast i8 addrspace(1)* %62 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %64 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 1
  %65 = load i64, i64 addrspace(1)* %64, align 8
  %66 = icmp ult i64 %60, %65
  br i1 %66, label %118, label %128
67:
  %68 = load i64, i64* %i
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %i
  br label %41
70:
  %71 = load i64, i64* %i.1
  %72 = load i64, i64* %13
  %73 = icmp slt i64 %71, %72
  store i1 %73, i1* %14
  %74 = load i1, i1* %14
  br i1 %74, label %84, label %75
75:
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !30
  %77 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %76), !dbg !30
  store i8 addrspace(1)* %77, i8 addrspace(1)** %19, !dbg !30
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !31
  %79 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %78), !dbg !31
  store i8 addrspace(1)* %79, i8 addrspace(1)** %20, !dbg !31
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !32
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !32
  %82 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %80, i8 addrspace(1)* %81), !dbg !32
  store i8 addrspace(1)* %82, i8 addrspace(1)** %21, !dbg !32
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  ret i8 addrspace(1)* %83
84:
  %85 = load i64, i64* %i.1
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %87 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %86, i64 72057594037927928)
  %88 = bitcast i8 addrspace(1)* %87 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %89 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 1
  %90 = load i64, i64 addrspace(1)* %89, align 8
  %91 = icmp ult i64 %85, %90
  br i1 %91, label %154, label %164
92:
  %93 = load i64, i64* %i.1
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %i.1
  br label %70
95:
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %96)
  unreachable
97:
  %98 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %98)
  unreachable
99:
  %100 = call i8 addrspace(1)* @_bal_panic_construct(i64 10242), !dbg !25
  store i8 addrspace(1)* %100, i8 addrspace(1)** %22
  br label %95
101:
  %102 = icmp eq i64 %39, -9223372036854775808
  %103 = icmp eq i64 2, -1
  %104 = and i1 %102, %103
  br i1 %104, label %116, label %105
105:
  %106 = sdiv i64 %39, 2
  store i64 %106, i64* %5
  %107 = load i64, i64* %5
  store i64 %107, i64* %mid
  %108 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %109 = bitcast i8 addrspace(1)* %108 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %110 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %110
  %111 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %111
  %112 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %112
  %113 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %113
  %114 = getelementptr i8, i8 addrspace(1)* %108, i64 1297036692682702852
  store i8 addrspace(1)* %114, i8 addrspace(1)** %6
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %115, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %41
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !25
  store i8 addrspace(1)* %117, i8 addrspace(1)** %22
  br label %95
118:
  %119 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 3
  %120 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %119, align 8
  %121 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %120, i64 0, i64 %60
  %122 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %121, align 8
  store i8 addrspace(1)* %122, i8 addrspace(1)** %8
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %124 = addrspacecast i8 addrspace(1)* %123 to i8*
  %125 = ptrtoint i8* %124 to i64
  %126 = and i64 %125, 2233785415175766016
  %127 = icmp eq i64 %126, 576460752303423488
  br i1 %127, label %136, label %140
128:
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %129, i8 addrspace(1)** %22
  br label %95
130:
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %132 = addrspacecast i8 addrspace(1)* %131 to i8*
  %133 = ptrtoint i8* %132 to i64
  %134 = and i64 %133, 2233785415175766016
  %135 = icmp eq i64 %134, 504403158265495552
  br i1 %135, label %146, label %152
136:
  %137 = call double @_bal_tagged_to_float(i8 addrspace(1)* %123)
  %138 = call {i64, i1} @_bal_float_to_int(double %137)
  %139 = extractvalue {i64, i1} %138, 1
  br i1 %139, label %144, label %141
140:
  store i8 addrspace(1)* %123, i8 addrspace(1)** %9
  br label %130
141:
  %142 = extractvalue {i64, i1} %138, 0
  %143 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %142)
  store i8 addrspace(1)* %143, i8 addrspace(1)** %9
  br label %130
144:
  %145 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %145, i8 addrspace(1)** %22
  br label %95
146:
  %147 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %131)
  store i64 %147, i64* %10
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %149 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %148, i64 -5), !dbg !29
  %150 = load i64, i64* %10, !dbg !29
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %149, i8 addrspace(1)* %151), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !29
  br label %67
152:
  %153 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %153, i8 addrspace(1)** %22
  br label %95
154:
  %155 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 3
  %156 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %155, align 8
  %157 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %156, i64 0, i64 %85
  %158 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %157, align 8
  store i8 addrspace(1)* %158, i8 addrspace(1)** %15
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %160 = addrspacecast i8 addrspace(1)* %159 to i8*
  %161 = ptrtoint i8* %160 to i64
  %162 = and i64 %161, 2233785415175766016
  %163 = icmp eq i64 %162, 576460752303423488
  br i1 %163, label %172, label %176
164:
  %165 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %165, i8 addrspace(1)** %22
  br label %95
166:
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %168 = addrspacecast i8 addrspace(1)* %167 to i8*
  %169 = ptrtoint i8* %168 to i64
  %170 = and i64 %169, 2233785415175766016
  %171 = icmp eq i64 %170, 504403158265495552
  br i1 %171, label %182, label %188
172:
  %173 = call double @_bal_tagged_to_float(i8 addrspace(1)* %159)
  %174 = call {i64, i1} @_bal_float_to_int(double %173)
  %175 = extractvalue {i64, i1} %174, 1
  br i1 %175, label %180, label %177
176:
  store i8 addrspace(1)* %159, i8 addrspace(1)** %16
  br label %166
177:
  %178 = extractvalue {i64, i1} %174, 0
  %179 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %178)
  store i8 addrspace(1)* %179, i8 addrspace(1)** %16
  br label %166
180:
  %181 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %181, i8 addrspace(1)** %22
  br label %95
182:
  %183 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %167)
  store i64 %183, i64* %17
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %185 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %184, i64 -5), !dbg !33
  %186 = load i64, i64* %17, !dbg !33
  %187 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %186), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %185, i8 addrspace(1)* %187), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !33
  br label %92
188:
  %189 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %189, i8 addrspace(1)** %22
  br label %95
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
  br i1 %32, label %120, label %33
33:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %34 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %35 = bitcast i8 addrspace(1)* %34 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %36
  %37 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %37
  %38 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %38
  %39 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %39
  %40 = getelementptr i8, i8 addrspace(1)* %34, i64 1297036692682702852
  store i8 addrspace(1)* %40, i8 addrspace(1)** %3
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %41, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !35
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 -5), !dbg !35
  %44 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %43), !dbg !35
  store i64 %44, i64* %4, !dbg !35
  %45 = load i64, i64* %4
  store i64 %45, i64* %len1
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !36
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 -5), !dbg !36
  %48 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %47), !dbg !36
  store i64 %48, i64* %5, !dbg !36
  %49 = load i64, i64* %5
  store i64 %49, i64* %len2
  br label %50
50:
  br label %51
51:
  %52 = load i64, i64* %i1
  %53 = load i64, i64* %len1
  %54 = icmp slt i64 %52, %53
  store i1 %54, i1* %6
  %55 = load i1, i1* %6
  br i1 %55, label %57, label %88
56:
  br label %89
57:
  %58 = load i64, i64* %i2
  %59 = load i64, i64* %len2
  %60 = icmp slt i64 %58, %59
  store i1 %60, i1* %7
  %61 = load i1, i1* %7
  br i1 %61, label %62, label %87
62:
  %63 = load i64, i64* %i1
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %65 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %64, i64 72057594037927928)
  %66 = bitcast i8 addrspace(1)* %65 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %67 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 1
  %68 = load i64, i64 addrspace(1)* %67, align 8
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %122, label %132
70:
  %71 = load i64, i64* %i1
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %73 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %72, i64 72057594037927928)
  %74 = bitcast i8 addrspace(1)* %73 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %75 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 1
  %76 = load i64, i64 addrspace(1)* %75, align 8
  %77 = icmp ult i64 %71, %76
  br i1 %77, label %197, label %208
78:
  %79 = load i64, i64* %i2
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %81 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %80, i64 72057594037927928)
  %82 = bitcast i8 addrspace(1)* %81 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %83 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 1
  %84 = load i64, i64 addrspace(1)* %83, align 8
  %85 = icmp ult i64 %79, %84
  br i1 %85, label %215, label %226
86:
  br label %50
87:
  br label %88
88:
  br label %56
89:
  %90 = load i64, i64* %i1
  %91 = load i64, i64* %len1
  %92 = icmp slt i64 %90, %91
  store i1 %92, i1* %21
  %93 = load i1, i1* %21
  br i1 %93, label %94, label %102
94:
  %95 = load i64, i64* %i1
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %97 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %96, i64 72057594037927928)
  %98 = bitcast i8 addrspace(1)* %97 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %99 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 1
  %100 = load i64, i64 addrspace(1)* %99, align 8
  %101 = icmp ult i64 %95, %100
  br i1 %101, label %233, label %244
102:
  br label %103
103:
  %104 = load i64, i64* %i2
  %105 = load i64, i64* %len2
  %106 = icmp slt i64 %104, %105
  store i1 %106, i1* %25
  %107 = load i1, i1* %25
  br i1 %107, label %108, label %116
108:
  %109 = load i64, i64* %i2
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %111 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %110, i64 72057594037927928)
  %112 = bitcast i8 addrspace(1)* %111 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %113 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %112, i64 0, i32 1
  %114 = load i64, i64 addrspace(1)* %113, align 8
  %115 = icmp ult i64 %109, %114
  br i1 %115, label %251, label %262
116:
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %117
118:
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_bal_panic(i8 addrspace(1)* %119)
  unreachable
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 13316), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %121)
  unreachable
122:
  %123 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 3
  %124 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %123, align 8
  %125 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %124, i64 0, i64 %63
  %126 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %125, align 8
  store i8 addrspace(1)* %126, i8 addrspace(1)** %9
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %128 = addrspacecast i8 addrspace(1)* %127 to i8*
  %129 = ptrtoint i8* %128 to i64
  %130 = and i64 %129, 2233785415175766016
  %131 = icmp eq i64 %130, 576460752303423488
  br i1 %131, label %140, label %144
132:
  %133 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %133, i8 addrspace(1)** %29
  br label %118
134:
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %136 = addrspacecast i8 addrspace(1)* %135 to i8*
  %137 = ptrtoint i8* %136 to i64
  %138 = and i64 %137, 2233785415175766016
  %139 = icmp eq i64 %138, 504403158265495552
  br i1 %139, label %150, label %159
140:
  %141 = call double @_bal_tagged_to_float(i8 addrspace(1)* %127)
  %142 = call {i64, i1} @_bal_float_to_int(double %141)
  %143 = extractvalue {i64, i1} %142, 1
  br i1 %143, label %148, label %145
144:
  store i8 addrspace(1)* %127, i8 addrspace(1)** %10
  br label %134
145:
  %146 = extractvalue {i64, i1} %142, 0
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %146)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %10
  br label %134
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %149, i8 addrspace(1)** %29
  br label %118
150:
  %151 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %135)
  store i64 %151, i64* %11
  %152 = load i64, i64* %i2
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %154 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %153, i64 72057594037927928)
  %155 = bitcast i8 addrspace(1)* %154 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %156 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %155, i64 0, i32 1
  %157 = load i64, i64 addrspace(1)* %156, align 8
  %158 = icmp ult i64 %152, %157
  br i1 %158, label %161, label %171
159:
  %160 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %160, i8 addrspace(1)** %29
  br label %118
161:
  %162 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %155, i64 0, i32 3
  %163 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %162, align 8
  %164 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %163, i64 0, i64 %152
  %165 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %164, align 8
  store i8 addrspace(1)* %165, i8 addrspace(1)** %12
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %167 = addrspacecast i8 addrspace(1)* %166 to i8*
  %168 = ptrtoint i8* %167 to i64
  %169 = and i64 %168, 2233785415175766016
  %170 = icmp eq i64 %169, 576460752303423488
  br i1 %170, label %179, label %183
171:
  %172 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %172, i8 addrspace(1)** %29
  br label %118
173:
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %175 = addrspacecast i8 addrspace(1)* %174 to i8*
  %176 = ptrtoint i8* %175 to i64
  %177 = and i64 %176, 2233785415175766016
  %178 = icmp eq i64 %177, 504403158265495552
  br i1 %178, label %189, label %195
179:
  %180 = call double @_bal_tagged_to_float(i8 addrspace(1)* %166)
  %181 = call {i64, i1} @_bal_float_to_int(double %180)
  %182 = extractvalue {i64, i1} %181, 1
  br i1 %182, label %187, label %184
183:
  store i8 addrspace(1)* %166, i8 addrspace(1)** %13
  br label %173
184:
  %185 = extractvalue {i64, i1} %181, 0
  %186 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %185)
  store i8 addrspace(1)* %186, i8 addrspace(1)** %13
  br label %173
187:
  %188 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %188, i8 addrspace(1)** %29
  br label %118
189:
  %190 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %174)
  store i64 %190, i64* %14
  %191 = load i64, i64* %11
  %192 = load i64, i64* %14
  %193 = icmp sle i64 %191, %192
  store i1 %193, i1* %8
  %194 = load i1, i1* %8
  br i1 %194, label %70, label %78
195:
  %196 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %196, i8 addrspace(1)** %29
  br label %118
197:
  %198 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 3
  %199 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %198, align 8
  %200 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %199, i64 0, i64 %71
  %201 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %200, align 8
  store i8 addrspace(1)* %201, i8 addrspace(1)** %15
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %203 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %202, i64 -5), !dbg !37
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %203, i8 addrspace(1)* %204), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !37
  %205 = load i64, i64* %i1
  %206 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %205, i64 1)
  %207 = extractvalue {i64, i1} %206, 1
  br i1 %207, label %213, label %210
208:
  %209 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %209, i8 addrspace(1)** %29
  br label %118
210:
  %211 = extractvalue {i64, i1} %206, 0
  store i64 %211, i64* %17
  %212 = load i64, i64* %17
  store i64 %212, i64* %i1
  br label %86
213:
  %214 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %214, i8 addrspace(1)** %29
  br label %118
215:
  %216 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 3
  %217 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %216, align 8
  %218 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %217, i64 0, i64 %79
  %219 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %218, align 8
  store i8 addrspace(1)* %219, i8 addrspace(1)** %18
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %221 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %220, i64 -5), !dbg !38
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %221, i8 addrspace(1)* %222), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !38
  %223 = load i64, i64* %i2
  %224 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %223, i64 1)
  %225 = extractvalue {i64, i1} %224, 1
  br i1 %225, label %231, label %228
226:
  %227 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %227, i8 addrspace(1)** %29
  br label %118
228:
  %229 = extractvalue {i64, i1} %224, 0
  store i64 %229, i64* %20
  %230 = load i64, i64* %20
  store i64 %230, i64* %i2
  br label %86
231:
  %232 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %232, i8 addrspace(1)** %29
  br label %118
233:
  %234 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 3
  %235 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %234, align 8
  %236 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %235, i64 0, i64 %95
  %237 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %236, align 8
  store i8 addrspace(1)* %237, i8 addrspace(1)** %22
  %238 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %239 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %238, i64 -5), !dbg !39
  %240 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %239, i8 addrspace(1)* %240), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !39
  %241 = load i64, i64* %i1
  %242 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %241, i64 1)
  %243 = extractvalue {i64, i1} %242, 1
  br i1 %243, label %249, label %246
244:
  %245 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %245, i8 addrspace(1)** %29
  br label %118
246:
  %247 = extractvalue {i64, i1} %242, 0
  store i64 %247, i64* %24
  %248 = load i64, i64* %24
  store i64 %248, i64* %i1
  br label %89
249:
  %250 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %250, i8 addrspace(1)** %29
  br label %118
251:
  %252 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %112, i64 0, i32 3
  %253 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %252, align 8
  %254 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %253, i64 0, i64 %109
  %255 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %254, align 8
  store i8 addrspace(1)* %255, i8 addrspace(1)** %26
  %256 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %257 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %256, i64 -5), !dbg !40
  %258 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %257, i8 addrspace(1)* %258), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !40
  %259 = load i64, i64* %i2
  %260 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %259, i64 1)
  %261 = extractvalue {i64, i1} %260, 1
  br i1 %261, label %267, label %264
262:
  %263 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %263, i8 addrspace(1)** %29
  br label %118
264:
  %265 = extractvalue {i64, i1} %260, 0
  store i64 %265, i64* %28
  %266 = load i64, i64* %28
  store i64 %266, i64* %i2
  br label %103
267:
  %268 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %268, i8 addrspace(1)** %29
  br label %118
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
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
!18 = !DILocation(line: 14, column: 9, scope: !5)
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
!29 = !DILocation(line: 43, column: 13, scope: !9)
!30 = !DILocation(line: 49, column: 17, scope: !9)
!31 = !DILocation(line: 49, column: 30, scope: !9)
!32 = !DILocation(line: 49, column: 11, scope: !9)
!33 = !DILocation(line: 47, column: 13, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 56, column: 17, scope: !11)
!36 = !DILocation(line: 57, column: 17, scope: !11)
!37 = !DILocation(line: 62, column: 26, scope: !11)
!38 = !DILocation(line: 66, column: 26, scope: !11)
!39 = !DILocation(line: 75, column: 14, scope: !11)
!40 = !DILocation(line: 79, column: 14, scope: !11)
