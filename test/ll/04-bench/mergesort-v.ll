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
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
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
  %8 = alloca i64
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i1
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
  store i64 %48, i64* %8, !dbg !16
  %49 = load i64, i64* %8
  %50 = load i64, i64* %len
  %51 = icmp eq i64 %49, %50
  store i1 %51, i1* %9
  %52 = load i1, i1* %9, !dbg !17
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
  store i64 %77, i64* %22, !dbg !19
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !20
  %79 = call i64 @_B_checksum(i8 addrspace(1)* %78), !dbg !20
  store i64 %79, i64* %23, !dbg !20
  %80 = load i64, i64* %22
  %81 = load i64, i64* %23
  %82 = icmp eq i64 %80, %81
  store i1 %82, i1* %24
  %83 = load i1, i1* %24, !dbg !21
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
  %130 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %91, i64 0, i32 0
  %131 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %130, align 8
  %132 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %131, i64 0, i32 1
  %133 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %132, align 8
  %134 = call i8 addrspace(1)* %133(i8 addrspace(1)* %88, i64 %89)
  %135 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %88, i8 addrspace(1)* %134)
  store i8 addrspace(1)* %135, i8 addrspace(1)** %13
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %137 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %136)
  %138 = extractvalue {i8 addrspace(1)*, i1} %137, 1
  br i1 %138, label %148, label %141
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %140, i8 addrspace(1)** %26
  br label %103
141:
  %142 = extractvalue {i8 addrspace(1)*, i1} %137, 0
  store i8 addrspace(1)* %142, i8 addrspace(1)** %14
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %144 = addrspacecast i8 addrspace(1)* %143 to i8*
  %145 = ptrtoint i8* %144 to i64
  %146 = and i64 %145, 2233785415175766016
  %147 = icmp eq i64 %146, 504403158265495552
  br i1 %147, label %150, label %155
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %149, i8 addrspace(1)** %26
  br label %103
150:
  %151 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %143)
  store i64 %151, i64* %15
  %152 = load i64, i64* %i.1
  %153 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %152, i64 1)
  %154 = extractvalue {i64, i1} %153, 1
  br i1 %154, label %166, label %157
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %156, i8 addrspace(1)** %26
  br label %103
157:
  %158 = extractvalue {i64, i1} %153, 0
  store i64 %158, i64* %16
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %160 = load i64, i64* %16
  %161 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %159, i64 72057594037927928)
  %162 = bitcast i8 addrspace(1)* %161 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %163 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %162, i64 0, i32 1
  %164 = load i64, i64 addrspace(1)* %163, align 8
  %165 = icmp ult i64 %160, %164
  br i1 %165, label %168, label %178
166:
  %167 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %167, i8 addrspace(1)** %26
  br label %103
168:
  %169 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %162, i64 0, i32 0
  %170 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %169, align 8
  %171 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %170, i64 0, i32 1
  %172 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %171, align 8
  %173 = call i8 addrspace(1)* %172(i8 addrspace(1)* %159, i64 %160)
  %174 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %159, i8 addrspace(1)* %173)
  store i8 addrspace(1)* %174, i8 addrspace(1)** %17
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %176 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %175)
  %177 = extractvalue {i8 addrspace(1)*, i1} %176, 1
  br i1 %177, label %187, label %180
178:
  %179 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %179, i8 addrspace(1)** %26
  br label %103
180:
  %181 = extractvalue {i8 addrspace(1)*, i1} %176, 0
  store i8 addrspace(1)* %181, i8 addrspace(1)** %18
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %183 = addrspacecast i8 addrspace(1)* %182 to i8*
  %184 = ptrtoint i8* %183 to i64
  %185 = and i64 %184, 2233785415175766016
  %186 = icmp eq i64 %185, 504403158265495552
  br i1 %186, label %189, label %195
187:
  %188 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %188, i8 addrspace(1)** %26
  br label %103
189:
  %190 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %182)
  store i64 %190, i64* %19
  %191 = load i64, i64* %15
  %192 = load i64, i64* %19
  %193 = icmp sgt i64 %191, %192
  store i1 %193, i1* %20
  %194 = load i1, i1* %20
  br i1 %194, label %95, label %99
195:
  %196 = call i8 addrspace(1)* @_bal_panic_construct(i64 5123), !dbg !13
  store i8 addrspace(1)* %196, i8 addrspace(1)** %26
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
  %39 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %27, i64 0, i32 0
  %40 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %39, align 8
  %41 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %40, i64 0, i32 1
  %42 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %41, align 8
  %43 = call i8 addrspace(1)* %42(i8 addrspace(1)* %24, i64 %25)
  %44 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %24, i8 addrspace(1)* %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %4
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %46 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %45)
  %47 = extractvalue {i8 addrspace(1)*, i1} %46, 1
  br i1 %47, label %57, label %50
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %49, i8 addrspace(1)** %8
  br label %34
50:
  %51 = extractvalue {i8 addrspace(1)*, i1} %46, 0
  store i8 addrspace(1)* %51, i8 addrspace(1)** %5
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %53 = addrspacecast i8 addrspace(1)* %52 to i8*
  %54 = ptrtoint i8* %53 to i64
  %55 = and i64 %54, 2233785415175766016
  %56 = icmp eq i64 %55, 504403158265495552
  br i1 %56, label %59, label %65
57:
  %58 = call i8 addrspace(1)* @_bal_panic_construct(i64 7681), !dbg !23
  store i8 addrspace(1)* %58, i8 addrspace(1)** %8
  br label %34
59:
  %60 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %52)
  store i64 %60, i64* %6
  %61 = load i64, i64* %c
  %62 = load i64, i64* %6
  %63 = xor i64 %61, %62
  store i64 %63, i64* %7
  %64 = load i64, i64* %7
  store i64 %64, i64* %c
  br label %31
65:
  %66 = call i8 addrspace(1)* @_bal_panic_construct(i64 7683), !dbg !23
  store i8 addrspace(1)* %66, i8 addrspace(1)** %8
  br label %34
}
define internal i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %0) !dbg !9 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i1
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
  store i64 %29, i64* %2, !dbg !26
  %30 = load i64, i64* %2
  %31 = icmp sle i64 %30, 1
  store i1 %31, i1* %3
  %32 = load i1, i1* %3
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
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %82 = load i64, i64* %i.1
  %83 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %81, i64 72057594037927928)
  %84 = bitcast i8 addrspace(1)* %83 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %85 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  %86 = load i64, i64 addrspace(1)* %85, align 8
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %138, label %148
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
  %118 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %117)
  %119 = extractvalue {i8 addrspace(1)*, i1} %118, 1
  br i1 %119, label %129, label %122
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %121, i8 addrspace(1)** %22
  br label %91
122:
  %123 = extractvalue {i8 addrspace(1)*, i1} %118, 0
  store i8 addrspace(1)* %123, i8 addrspace(1)** %9
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %125 = addrspacecast i8 addrspace(1)* %124 to i8*
  %126 = ptrtoint i8* %125 to i64
  %127 = and i64 %126, 2233785415175766016
  %128 = icmp eq i64 %127, 504403158265495552
  br i1 %128, label %131, label %136
129:
  %130 = call i8 addrspace(1)* @_bal_panic_construct(i64 11009), !dbg !25
  store i8 addrspace(1)* %130, i8 addrspace(1)** %22
  br label %91
131:
  %132 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %124)
  store i64 %132, i64* %10
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %134 = load i64, i64* %10, !dbg !29
  %135 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %134), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %133, i8 addrspace(1)* %135), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !29
  br label %63
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !25
  store i8 addrspace(1)* %137, i8 addrspace(1)** %22
  br label %91
138:
  %139 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %84, i64 0, i32 0
  %140 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %139, align 8
  %141 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %140, i64 0, i32 1
  %142 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %141, align 8
  %143 = call i8 addrspace(1)* %142(i8 addrspace(1)* %81, i64 %82)
  %144 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %81, i8 addrspace(1)* %143)
  store i8 addrspace(1)* %144, i8 addrspace(1)** %15
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %146 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %145)
  %147 = extractvalue {i8 addrspace(1)*, i1} %146, 1
  br i1 %147, label %157, label %150
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %149, i8 addrspace(1)** %22
  br label %91
150:
  %151 = extractvalue {i8 addrspace(1)*, i1} %146, 0
  store i8 addrspace(1)* %151, i8 addrspace(1)** %16
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %153 = addrspacecast i8 addrspace(1)* %152 to i8*
  %154 = ptrtoint i8* %153 to i64
  %155 = and i64 %154, 2233785415175766016
  %156 = icmp eq i64 %155, 504403158265495552
  br i1 %156, label %159, label %164
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 12033), !dbg !25
  store i8 addrspace(1)* %158, i8 addrspace(1)** %22
  br label %91
159:
  %160 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %152)
  store i64 %160, i64* %17
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %162 = load i64, i64* %17, !dbg !33
  %163 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %162), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %161, i8 addrspace(1)* %163), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !33
  br label %88
164:
  %165 = call i8 addrspace(1)* @_bal_panic_construct(i64 12035), !dbg !25
  store i8 addrspace(1)* %165, i8 addrspace(1)** %22
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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i1
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
  br i1 %51, label %52, label %83
52:
  %53 = load i64, i64* %i2
  %54 = load i64, i64* %len2
  %55 = icmp slt i64 %53, %54
  store i1 %55, i1* %7
  %56 = load i1, i1* %7
  br i1 %56, label %57, label %82
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %59 = load i64, i64* %i1
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 72057594037927928)
  %61 = bitcast i8 addrspace(1)* %60 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %62 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %61, i64 0, i32 1
  %63 = load i64, i64 addrspace(1)* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %118, label %128
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %67 = load i64, i64* %i1
  %68 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %66, i64 72057594037927928)
  %69 = bitcast i8 addrspace(1)* %68 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %70 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %69, i64 0, i32 1
  %71 = load i64, i64 addrspace(1)* %70, align 8
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %179, label %191
73:
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %75 = load i64, i64* %i2
  %76 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 72057594037927928)
  %77 = bitcast i8 addrspace(1)* %76 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %78 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %77, i64 0, i32 1
  %79 = load i64, i64 addrspace(1)* %78, align 8
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %198, label %210
81:
  br label %46
82:
  br label %83
83:
  br label %84
84:
  br label %85
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
  br i1 %97, label %217, label %229
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
  br i1 %111, label %236, label %248
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
  %119 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %61, i64 0, i32 0
  %120 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %119, align 8
  %121 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %120, i64 0, i32 1
  %122 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %121, align 8
  %123 = call i8 addrspace(1)* %122(i8 addrspace(1)* %58, i64 %59)
  %124 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %58, i8 addrspace(1)* %123)
  store i8 addrspace(1)* %124, i8 addrspace(1)** %8
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %126 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %125)
  %127 = extractvalue {i8 addrspace(1)*, i1} %126, 1
  br i1 %127, label %137, label %130
128:
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %129, i8 addrspace(1)** %29
  br label %114
130:
  %131 = extractvalue {i8 addrspace(1)*, i1} %126, 0
  store i8 addrspace(1)* %131, i8 addrspace(1)** %9
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %133 = addrspacecast i8 addrspace(1)* %132 to i8*
  %134 = ptrtoint i8* %133 to i64
  %135 = and i64 %134, 2233785415175766016
  %136 = icmp eq i64 %135, 504403158265495552
  br i1 %136, label %139, label %148
137:
  %138 = call i8 addrspace(1)* @_bal_panic_construct(i64 15617), !dbg !34
  store i8 addrspace(1)* %138, i8 addrspace(1)** %29
  br label %114
139:
  %140 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %132)
  store i64 %140, i64* %10
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %142 = load i64, i64* %i2
  %143 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %141, i64 72057594037927928)
  %144 = bitcast i8 addrspace(1)* %143 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %145 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %144, i64 0, i32 1
  %146 = load i64, i64 addrspace(1)* %145, align 8
  %147 = icmp ult i64 %142, %146
  br i1 %147, label %150, label %160
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %149, i8 addrspace(1)** %29
  br label %114
150:
  %151 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %144, i64 0, i32 0
  %152 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %151, align 8
  %153 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %152, i64 0, i32 1
  %154 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %153, align 8
  %155 = call i8 addrspace(1)* %154(i8 addrspace(1)* %141, i64 %142)
  %156 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %141, i8 addrspace(1)* %155)
  store i8 addrspace(1)* %156, i8 addrspace(1)** %11
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %158 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %157)
  %159 = extractvalue {i8 addrspace(1)*, i1} %158, 1
  br i1 %159, label %169, label %162
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %161, i8 addrspace(1)** %29
  br label %114
162:
  %163 = extractvalue {i8 addrspace(1)*, i1} %158, 0
  store i8 addrspace(1)* %163, i8 addrspace(1)** %12
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %165 = addrspacecast i8 addrspace(1)* %164 to i8*
  %166 = ptrtoint i8* %165 to i64
  %167 = and i64 %166, 2233785415175766016
  %168 = icmp eq i64 %167, 504403158265495552
  br i1 %168, label %171, label %177
169:
  %170 = call i8 addrspace(1)* @_bal_panic_construct(i64 15617), !dbg !34
  store i8 addrspace(1)* %170, i8 addrspace(1)** %29
  br label %114
171:
  %172 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %164)
  store i64 %172, i64* %13
  %173 = load i64, i64* %10
  %174 = load i64, i64* %13
  %175 = icmp sle i64 %173, %174
  store i1 %175, i1* %14
  %176 = load i1, i1* %14
  br i1 %176, label %65, label %73
177:
  %178 = call i8 addrspace(1)* @_bal_panic_construct(i64 15619), !dbg !34
  store i8 addrspace(1)* %178, i8 addrspace(1)** %29
  br label %114
179:
  %180 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %69, i64 0, i32 0
  %181 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %180, align 8
  %182 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %181, i64 0, i32 1
  %183 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %182, align 8
  %184 = call i8 addrspace(1)* %183(i8 addrspace(1)* %66, i64 %67)
  %185 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %66, i8 addrspace(1)* %184)
  store i8 addrspace(1)* %185, i8 addrspace(1)** %15
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %186, i8 addrspace(1)* %187), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !37
  %188 = load i64, i64* %i1
  %189 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %188, i64 1)
  %190 = extractvalue {i64, i1} %189, 1
  br i1 %190, label %196, label %193
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %192, i8 addrspace(1)** %29
  br label %114
193:
  %194 = extractvalue {i64, i1} %189, 0
  store i64 %194, i64* %17
  %195 = load i64, i64* %17
  store i64 %195, i64* %i1
  br label %81
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %197, i8 addrspace(1)** %29
  br label %114
198:
  %199 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %77, i64 0, i32 0
  %200 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %199, align 8
  %201 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %200, i64 0, i32 1
  %202 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %201, align 8
  %203 = call i8 addrspace(1)* %202(i8 addrspace(1)* %74, i64 %75)
  %204 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %74, i8 addrspace(1)* %203)
  store i8 addrspace(1)* %204, i8 addrspace(1)** %18
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %205, i8 addrspace(1)* %206), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !38
  %207 = load i64, i64* %i2
  %208 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %207, i64 1)
  %209 = extractvalue {i64, i1} %208, 1
  br i1 %209, label %215, label %212
210:
  %211 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %211, i8 addrspace(1)** %29
  br label %114
212:
  %213 = extractvalue {i64, i1} %208, 0
  store i64 %213, i64* %20
  %214 = load i64, i64* %20
  store i64 %214, i64* %i2
  br label %81
215:
  %216 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %216, i8 addrspace(1)** %29
  br label %114
217:
  %218 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %94, i64 0, i32 0
  %219 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %218, align 8
  %220 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %219, i64 0, i32 1
  %221 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %220, align 8
  %222 = call i8 addrspace(1)* %221(i8 addrspace(1)* %91, i64 %92)
  %223 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %91, i8 addrspace(1)* %222)
  store i8 addrspace(1)* %223, i8 addrspace(1)** %22
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %224, i8 addrspace(1)* %225), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !39
  %226 = load i64, i64* %i1
  %227 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %226, i64 1)
  %228 = extractvalue {i64, i1} %227, 1
  br i1 %228, label %234, label %231
229:
  %230 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %230, i8 addrspace(1)** %29
  br label %114
231:
  %232 = extractvalue {i64, i1} %227, 0
  store i64 %232, i64* %24
  %233 = load i64, i64* %24
  store i64 %233, i64* %i1
  br label %85
234:
  %235 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %235, i8 addrspace(1)** %29
  br label %114
236:
  %237 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %108, i64 0, i32 0
  %238 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %237, align 8
  %239 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %238, i64 0, i32 1
  %240 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %239, align 8
  %241 = call i8 addrspace(1)* %240(i8 addrspace(1)* %105, i64 %106)
  %242 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %105, i8 addrspace(1)* %241)
  store i8 addrspace(1)* %242, i8 addrspace(1)** %26
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %243, i8 addrspace(1)* %244), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !40
  %245 = load i64, i64* %i2
  %246 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %245, i64 1)
  %247 = extractvalue {i64, i1} %246, 1
  br i1 %247, label %253, label %250
248:
  %249 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %249, i8 addrspace(1)** %29
  br label %114
250:
  %251 = extractvalue {i64, i1} %246, 0
  store i64 %251, i64* %28
  %252 = load i64, i64* %28
  store i64 %252, i64* %i2
  br label %99
253:
  %254 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %254, i8 addrspace(1)** %29
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
