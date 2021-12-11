@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
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
  %31 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %32 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %31 to i8 addrspace(1)*
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
  %47 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %46), !dbg !16
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
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %89 = load i64, i64* %i.1
  %90 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %88, i64 72057594037927928)
  %91 = bitcast i8 addrspace(1)* %90 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %92 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %91, i64 0, i32 1
  %93 = load i64, i64 addrspace(1)* %92, align 8
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %129, label %141
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
  %130 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %91, i64 0, i32 0
  %131 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %130, align 8
  %132 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %131, i64 0, i32 1
  %133 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %132, align 8
  %134 = call i8 addrspace(1)* %133(i8 addrspace(1)* %88, i64 %89)
  %135 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %88, i8 addrspace(1)* %134)
  store i8 addrspace(1)* %135, i8 addrspace(1)** %14
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %137 = addrspacecast i8 addrspace(1)* %136 to i8*
  %138 = ptrtoint i8* %137 to i64
  %139 = and i64 %138, 2233785415175766016
  %140 = icmp eq i64 %139, 576460752303423488
  br i1 %140, label %149, label %153
141:
  %142 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %142, i8 addrspace(1)** %26
  br label %103
143:
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %145 = addrspacecast i8 addrspace(1)* %144 to i8*
  %146 = ptrtoint i8* %145 to i64
  %147 = and i64 %146, 2233785415175766016
  %148 = icmp eq i64 %147, 504403158265495552
  br i1 %148, label %159, label %164
149:
  %150 = call double @_bal_tagged_to_float(i8 addrspace(1)* %136)
  %151 = call {i64, i1} @_bal_float_to_int(double %150)
  %152 = extractvalue {i64, i1} %151, 1
  br i1 %152, label %157, label %154
153:
  store i8 addrspace(1)* %136, i8 addrspace(1)** %15
  br label %143
154:
  %155 = extractvalue {i64, i1} %151, 0
  %156 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %155)
  store i8 addrspace(1)* %156, i8 addrspace(1)** %15
  br label %143
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %158, i8 addrspace(1)** %26
  br label %103
159:
  %160 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %144)
  store i64 %160, i64* %16
  %161 = load i64, i64* %i.1
  %162 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %161, i64 1)
  %163 = extractvalue {i64, i1} %162, 1
  br i1 %163, label %175, label %166
164:
  %165 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %165, i8 addrspace(1)** %26
  br label %103
166:
  %167 = extractvalue {i64, i1} %162, 0
  store i64 %167, i64* %17
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %169 = load i64, i64* %17
  %170 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %168, i64 72057594037927928)
  %171 = bitcast i8 addrspace(1)* %170 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %172 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %171, i64 0, i32 1
  %173 = load i64, i64 addrspace(1)* %172, align 8
  %174 = icmp ult i64 %169, %173
  br i1 %174, label %177, label %189
175:
  %176 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %176, i8 addrspace(1)** %26
  br label %103
177:
  %178 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %171, i64 0, i32 0
  %179 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %178, align 8
  %180 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %179, i64 0, i32 1
  %181 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %180, align 8
  %182 = call i8 addrspace(1)* %181(i8 addrspace(1)* %168, i64 %169)
  %183 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %168, i8 addrspace(1)* %182)
  store i8 addrspace(1)* %183, i8 addrspace(1)** %18
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %185 = addrspacecast i8 addrspace(1)* %184 to i8*
  %186 = ptrtoint i8* %185 to i64
  %187 = and i64 %186, 2233785415175766016
  %188 = icmp eq i64 %187, 576460752303423488
  br i1 %188, label %197, label %201
189:
  %190 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %190, i8 addrspace(1)** %26
  br label %103
191:
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %193 = addrspacecast i8 addrspace(1)* %192 to i8*
  %194 = ptrtoint i8* %193 to i64
  %195 = and i64 %194, 2233785415175766016
  %196 = icmp eq i64 %195, 504403158265495552
  br i1 %196, label %207, label %213
197:
  %198 = call double @_bal_tagged_to_float(i8 addrspace(1)* %184)
  %199 = call {i64, i1} @_bal_float_to_int(double %198)
  %200 = extractvalue {i64, i1} %199, 1
  br i1 %200, label %205, label %202
201:
  store i8 addrspace(1)* %184, i8 addrspace(1)** %19
  br label %191
202:
  %203 = extractvalue {i64, i1} %199, 0
  %204 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %203)
  store i8 addrspace(1)* %204, i8 addrspace(1)** %19
  br label %191
205:
  %206 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %206, i8 addrspace(1)** %26
  br label %103
207:
  %208 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %192)
  store i64 %208, i64* %20
  %209 = load i64, i64* %16
  %210 = load i64, i64* %20
  %211 = icmp sgt i64 %209, %210
  store i1 %211, i1* %13
  %212 = load i1, i1* %13
  br i1 %212, label %95, label %99
213:
  %214 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %214, i8 addrspace(1)** %26
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
  %14 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %13), !dbg !24
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
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = load i64, i64* %i
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 72057594037927928)
  %27 = bitcast i8 addrspace(1)* %26 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %28 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %27, i64 0, i32 1
  %29 = load i64, i64 addrspace(1)* %28, align 8
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %38, label %50
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
  %39 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %27, i64 0, i32 0
  %40 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %39, align 8
  %41 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %40, i64 0, i32 1
  %42 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %41, align 8
  %43 = call i8 addrspace(1)* %42(i8 addrspace(1)* %24, i64 %25)
  %44 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %24, i8 addrspace(1)* %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %4
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %46 = addrspacecast i8 addrspace(1)* %45 to i8*
  %47 = ptrtoint i8* %46 to i64
  %48 = and i64 %47, 2233785415175766016
  %49 = icmp eq i64 %48, 576460752303423488
  br i1 %49, label %58, label %62
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %51, i8 addrspace(1)** %8
  br label %34
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %54 = addrspacecast i8 addrspace(1)* %53 to i8*
  %55 = ptrtoint i8* %54 to i64
  %56 = and i64 %55, 2233785415175766016
  %57 = icmp eq i64 %56, 504403158265495552
  br i1 %57, label %68, label %74
58:
  %59 = call double @_bal_tagged_to_float(i8 addrspace(1)* %45)
  %60 = call {i64, i1} @_bal_float_to_int(double %59)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %66, label %63
62:
  store i8 addrspace(1)* %45, i8 addrspace(1)** %5
  br label %52
63:
  %64 = extractvalue {i64, i1} %60, 0
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %64)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %5
  br label %52
66:
  %67 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %67, i8 addrspace(1)** %8
  br label %34
68:
  %69 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %53)
  store i64 %69, i64* %6
  %70 = load i64, i64* %c
  %71 = load i64, i64* %6
  %72 = xor i64 %70, %71
  store i64 %72, i64* %7
  %73 = load i64, i64* %7
  store i64 %73, i64* %c
  br label %31
74:
  %75 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %75, i8 addrspace(1)** %8
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
  %28 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %27), !dbg !26
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
  %37 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %36), !dbg !27
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
  %47 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %48 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %47 to i8 addrspace(1)*
  %49 = getelementptr i8, i8 addrspace(1)* %48, i64 1297036692682702852
  store i8 addrspace(1)* %49, i8 addrspace(1)** %12
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %50, i8 addrspace(1)** %list2
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !28
  %52 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %51), !dbg !28
  %53 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %52), !dbg !28
  store i64 %53, i64* %13, !dbg !28
  %54 = load i64, i64* %mid
  store i64 %54, i64* %i.1
  br label %66
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %57 = load i64, i64* %i
  %58 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %56, i64 72057594037927928)
  %59 = bitcast i8 addrspace(1)* %58 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %60 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %59, i64 0, i32 1
  %61 = load i64, i64 addrspace(1)* %60, align 8
  %62 = icmp ult i64 %57, %61
  br i1 %62, label %110, label %122
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
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %82 = load i64, i64* %i.1
  %83 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %81, i64 72057594037927928)
  %84 = bitcast i8 addrspace(1)* %83 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %85 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  %86 = load i64, i64 addrspace(1)* %85, align 8
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %147, label %159
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
  %104 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %105 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %104 to i8 addrspace(1)*
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
  %111 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %59, i64 0, i32 0
  %112 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %111, align 8
  %113 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %112, i64 0, i32 1
  %114 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %113, align 8
  %115 = call i8 addrspace(1)* %114(i8 addrspace(1)* %56, i64 %57)
  %116 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %56, i8 addrspace(1)* %115)
  store i8 addrspace(1)* %116, i8 addrspace(1)** %8
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %118 = addrspacecast i8 addrspace(1)* %117 to i8*
  %119 = ptrtoint i8* %118 to i64
  %120 = and i64 %119, 2233785415175766016
  %121 = icmp eq i64 %120, 576460752303423488
  br i1 %121, label %130, label %134
122:
  %123 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %123, i8 addrspace(1)** %22
  br label %91
124:
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %126 = addrspacecast i8 addrspace(1)* %125 to i8*
  %127 = ptrtoint i8* %126 to i64
  %128 = and i64 %127, 2233785415175766016
  %129 = icmp eq i64 %128, 504403158265495552
  br i1 %129, label %140, label %145
130:
  %131 = call double @_bal_tagged_to_float(i8 addrspace(1)* %117)
  %132 = call {i64, i1} @_bal_float_to_int(double %131)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %138, label %135
134:
  store i8 addrspace(1)* %117, i8 addrspace(1)** %9
  br label %124
135:
  %136 = extractvalue {i64, i1} %132, 0
  %137 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %136)
  store i8 addrspace(1)* %137, i8 addrspace(1)** %9
  br label %124
138:
  %139 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %139, i8 addrspace(1)** %22
  br label %91
140:
  %141 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %125)
  store i64 %141, i64* %10
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %143 = load i64, i64* %10, !dbg !29
  %144 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %143), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %142, i8 addrspace(1)* %144), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !29
  br label %63
145:
  %146 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %146, i8 addrspace(1)** %22
  br label %91
147:
  %148 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %84, i64 0, i32 0
  %149 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %148, align 8
  %150 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %149, i64 0, i32 1
  %151 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %150, align 8
  %152 = call i8 addrspace(1)* %151(i8 addrspace(1)* %81, i64 %82)
  %153 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %81, i8 addrspace(1)* %152)
  store i8 addrspace(1)* %153, i8 addrspace(1)** %15
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %155 = addrspacecast i8 addrspace(1)* %154 to i8*
  %156 = ptrtoint i8* %155 to i64
  %157 = and i64 %156, 2233785415175766016
  %158 = icmp eq i64 %157, 576460752303423488
  br i1 %158, label %167, label %171
159:
  %160 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %160, i8 addrspace(1)** %22
  br label %91
161:
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %163 = addrspacecast i8 addrspace(1)* %162 to i8*
  %164 = ptrtoint i8* %163 to i64
  %165 = and i64 %164, 2233785415175766016
  %166 = icmp eq i64 %165, 504403158265495552
  br i1 %166, label %177, label %182
167:
  %168 = call double @_bal_tagged_to_float(i8 addrspace(1)* %154)
  %169 = call {i64, i1} @_bal_float_to_int(double %168)
  %170 = extractvalue {i64, i1} %169, 1
  br i1 %170, label %175, label %172
171:
  store i8 addrspace(1)* %154, i8 addrspace(1)** %16
  br label %161
172:
  %173 = extractvalue {i64, i1} %169, 0
  %174 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %173)
  store i8 addrspace(1)* %174, i8 addrspace(1)** %16
  br label %161
175:
  %176 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %176, i8 addrspace(1)** %22
  br label %91
177:
  %178 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %162)
  store i64 %178, i64* %17
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %180 = load i64, i64* %17, !dbg !33
  %181 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %180), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %179, i8 addrspace(1)* %181), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !33
  br label %88
182:
  %183 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %183, i8 addrspace(1)** %22
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
  %34 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %35 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %34 to i8 addrspace(1)*
  %36 = getelementptr i8, i8 addrspace(1)* %35, i64 1297036692682702852
  store i8 addrspace(1)* %36, i8 addrspace(1)** %3
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %37, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !35
  %39 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %38), !dbg !35
  %40 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %39), !dbg !35
  store i64 %40, i64* %4, !dbg !35
  %41 = load i64, i64* %4
  store i64 %41, i64* %len1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !36
  %43 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %42), !dbg !36
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
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %60 = load i64, i64* %i1
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %59, i64 72057594037927928)
  %62 = bitcast i8 addrspace(1)* %61 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %63 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  %64 = load i64, i64 addrspace(1)* %63, align 8
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %118, label %130
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %68 = load i64, i64* %i1
  %69 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %67, i64 72057594037927928)
  %70 = bitcast i8 addrspace(1)* %69 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %71 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  %72 = load i64, i64 addrspace(1)* %71, align 8
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %197, label %209
74:
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %76 = load i64, i64* %i2
  %77 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %75, i64 72057594037927928)
  %78 = bitcast i8 addrspace(1)* %77 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %79 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %78, i64 0, i32 1
  %80 = load i64, i64 addrspace(1)* %79, align 8
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %216, label %228
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
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %92 = load i64, i64* %i1
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %91, i64 72057594037927928)
  %94 = bitcast i8 addrspace(1)* %93 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %95 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %94, i64 0, i32 1
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %235, label %247
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
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %106 = load i64, i64* %i2
  %107 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %105, i64 72057594037927928)
  %108 = bitcast i8 addrspace(1)* %107 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %109 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %108, i64 0, i32 1
  %110 = load i64, i64 addrspace(1)* %109, align 8
  %111 = icmp ult i64 %106, %110
  br i1 %111, label %254, label %266
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
  %119 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %62, i64 0, i32 0
  %120 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %119, align 8
  %121 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %120, i64 0, i32 1
  %122 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %121, align 8
  %123 = call i8 addrspace(1)* %122(i8 addrspace(1)* %59, i64 %60)
  %124 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %59, i8 addrspace(1)* %123)
  store i8 addrspace(1)* %124, i8 addrspace(1)** %9
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %126 = addrspacecast i8 addrspace(1)* %125 to i8*
  %127 = ptrtoint i8* %126 to i64
  %128 = and i64 %127, 2233785415175766016
  %129 = icmp eq i64 %128, 576460752303423488
  br i1 %129, label %138, label %142
130:
  %131 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %131, i8 addrspace(1)** %29
  br label %114
132:
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %134 = addrspacecast i8 addrspace(1)* %133 to i8*
  %135 = ptrtoint i8* %134 to i64
  %136 = and i64 %135, 2233785415175766016
  %137 = icmp eq i64 %136, 504403158265495552
  br i1 %137, label %148, label %157
138:
  %139 = call double @_bal_tagged_to_float(i8 addrspace(1)* %125)
  %140 = call {i64, i1} @_bal_float_to_int(double %139)
  %141 = extractvalue {i64, i1} %140, 1
  br i1 %141, label %146, label %143
142:
  store i8 addrspace(1)* %125, i8 addrspace(1)** %10
  br label %132
143:
  %144 = extractvalue {i64, i1} %140, 0
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %144)
  store i8 addrspace(1)* %145, i8 addrspace(1)** %10
  br label %132
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %147, i8 addrspace(1)** %29
  br label %114
148:
  %149 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %133)
  store i64 %149, i64* %11
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %151 = load i64, i64* %i2
  %152 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %150, i64 72057594037927928)
  %153 = bitcast i8 addrspace(1)* %152 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %154 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %153, i64 0, i32 1
  %155 = load i64, i64 addrspace(1)* %154, align 8
  %156 = icmp ult i64 %151, %155
  br i1 %156, label %159, label %171
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %158, i8 addrspace(1)** %29
  br label %114
159:
  %160 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %153, i64 0, i32 0
  %161 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %160, align 8
  %162 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %161, i64 0, i32 1
  %163 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %162, align 8
  %164 = call i8 addrspace(1)* %163(i8 addrspace(1)* %150, i64 %151)
  %165 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %150, i8 addrspace(1)* %164)
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
  br label %114
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
  br label %114
189:
  %190 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %174)
  store i64 %190, i64* %14
  %191 = load i64, i64* %11
  %192 = load i64, i64* %14
  %193 = icmp sle i64 %191, %192
  store i1 %193, i1* %8
  %194 = load i1, i1* %8
  br i1 %194, label %66, label %74
195:
  %196 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %196, i8 addrspace(1)** %29
  br label %114
197:
  %198 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70, i64 0, i32 0
  %199 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %198, align 8
  %200 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %199, i64 0, i32 1
  %201 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %200, align 8
  %202 = call i8 addrspace(1)* %201(i8 addrspace(1)* %67, i64 %68)
  %203 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %67, i8 addrspace(1)* %202)
  store i8 addrspace(1)* %203, i8 addrspace(1)** %15
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %204, i8 addrspace(1)* %205), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !37
  %206 = load i64, i64* %i1
  %207 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %206, i64 1)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %214, label %211
209:
  %210 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %210, i8 addrspace(1)** %29
  br label %114
211:
  %212 = extractvalue {i64, i1} %207, 0
  store i64 %212, i64* %17
  %213 = load i64, i64* %17
  store i64 %213, i64* %i1
  br label %82
214:
  %215 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %215, i8 addrspace(1)** %29
  br label %114
216:
  %217 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %78, i64 0, i32 0
  %218 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %217, align 8
  %219 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %218, i64 0, i32 1
  %220 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %219, align 8
  %221 = call i8 addrspace(1)* %220(i8 addrspace(1)* %75, i64 %76)
  %222 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %75, i8 addrspace(1)* %221)
  store i8 addrspace(1)* %222, i8 addrspace(1)** %18
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %223, i8 addrspace(1)* %224), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !38
  %225 = load i64, i64* %i2
  %226 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %225, i64 1)
  %227 = extractvalue {i64, i1} %226, 1
  br i1 %227, label %233, label %230
228:
  %229 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %229, i8 addrspace(1)** %29
  br label %114
230:
  %231 = extractvalue {i64, i1} %226, 0
  store i64 %231, i64* %20
  %232 = load i64, i64* %20
  store i64 %232, i64* %i2
  br label %82
233:
  %234 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %234, i8 addrspace(1)** %29
  br label %114
235:
  %236 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %94, i64 0, i32 0
  %237 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %236, align 8
  %238 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %237, i64 0, i32 1
  %239 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %238, align 8
  %240 = call i8 addrspace(1)* %239(i8 addrspace(1)* %91, i64 %92)
  %241 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %91, i8 addrspace(1)* %240)
  store i8 addrspace(1)* %241, i8 addrspace(1)** %22
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %242, i8 addrspace(1)* %243), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !39
  %244 = load i64, i64* %i1
  %245 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %244, i64 1)
  %246 = extractvalue {i64, i1} %245, 1
  br i1 %246, label %252, label %249
247:
  %248 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %248, i8 addrspace(1)** %29
  br label %114
249:
  %250 = extractvalue {i64, i1} %245, 0
  store i64 %250, i64* %24
  %251 = load i64, i64* %24
  store i64 %251, i64* %i1
  br label %85
252:
  %253 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %253, i8 addrspace(1)** %29
  br label %114
254:
  %255 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %108, i64 0, i32 0
  %256 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %255, align 8
  %257 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %256, i64 0, i32 1
  %258 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %257, align 8
  %259 = call i8 addrspace(1)* %258(i8 addrspace(1)* %105, i64 %106)
  %260 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %105, i8 addrspace(1)* %259)
  store i8 addrspace(1)* %260, i8 addrspace(1)** %26
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %262 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %261, i8 addrspace(1)* %262), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !40
  %263 = load i64, i64* %i2
  %264 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %263, i64 1)
  %265 = extractvalue {i64, i1} %264, 1
  br i1 %265, label %271, label %268
266:
  %267 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %267, i8 addrspace(1)** %29
  br label %114
268:
  %269 = extractvalue {i64, i1} %264, 0
  store i64 %269, i64* %28
  %270 = load i64, i64* %28
  store i64 %270, i64* %i2
  br label %99
271:
  %272 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %272, i8 addrspace(1)** %29
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
!16 = !DILocation(line: 18, column: 17, scope: !5)
!17 = !DILocation(line: 18, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 10, scope: !5)
!19 = !DILocation(line: 24, column: 15, scope: !5)
!20 = !DILocation(line: 24, column: 30, scope: !5)
!21 = !DILocation(line: 24, column: 4, scope: !5)
!22 = !DILocation(line: 21, column: 12, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 29, column: 29, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 37, column: 9, scope: !9)
!27 = !DILocation(line: 40, column: 16, scope: !9)
!28 = !DILocation(line: 46, column: 31, scope: !9)
!29 = !DILocation(line: 43, column: 14, scope: !9)
!30 = !DILocation(line: 49, column: 17, scope: !9)
!31 = !DILocation(line: 49, column: 30, scope: !9)
!32 = !DILocation(line: 49, column: 11, scope: !9)
!33 = !DILocation(line: 47, column: 14, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 56, column: 18, scope: !11)
!36 = !DILocation(line: 57, column: 18, scope: !11)
!37 = !DILocation(line: 62, column: 27, scope: !11)
!38 = !DILocation(line: 66, column: 27, scope: !11)
!39 = !DILocation(line: 75, column: 15, scope: !11)
!40 = !DILocation(line: 79, column: 15, scope: !11)
