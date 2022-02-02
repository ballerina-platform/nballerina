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
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %101, label %26
26:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %27 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %28 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %27 to i8 addrspace(1)*
  %29 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702852
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %v
  %31 = load i64, i64* %len, !dbg !14
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  store i64 0, i64* %i
  br label %33
33:
  %34 = load i64, i64* %i
  %35 = load i64, i64* %len
  %36 = icmp slt i64 %34, %35
  store i1 %36, i1* %3
  %37 = load i1, i1* %3
  br i1 %37, label %55, label %38
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %40 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %39), !dbg !15
  store i8 addrspace(1)* %40, i8 addrspace(1)** %7, !dbg !15
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %s
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  %43 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %42), !dbg !16
  %44 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %43), !dbg !16
  store i64 %44, i64* %8, !dbg !16
  %45 = load i64, i64* %8
  %46 = load i64, i64* %len
  %47 = icmp eq i64 %45, %46
  store i1 %47, i1* %9
  %48 = load i1, i1* %9, !dbg !17
  %49 = zext i1 %48 to i64, !dbg !17
  %50 = or i64 %49, 72057594037927936, !dbg !17
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %52 = load i64, i64* %len
  %53 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %52, i64 1)
  %54 = extractvalue {i64, i1} %53, 1
  br i1 %54, label %105, label %103
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !18
  %57 = load i64, i64* %x, !dbg !18
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57), !dbg !18
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %56, i8 addrspace(1)* %58), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  %59 = load i64, i64* %x
  %60 = load i64, i64* %a
  %61 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %59, i64 %60)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %112, label %107
63:
  %64 = load i64, i64* %i
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i
  br label %33
66:
  %67 = load i64, i64* %i.1
  %68 = load i64, i64* %11
  %69 = icmp slt i64 %67, %68
  store i1 %69, i1* %12
  %70 = load i1, i1* %12
  br i1 %70, label %83, label %71
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !19
  %73 = call i64 @_B_checksum(i8 addrspace(1)* %72), !dbg !19
  store i64 %73, i64* %18, !dbg !19
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !20
  %75 = call i64 @_B_checksum(i8 addrspace(1)* %74), !dbg !20
  store i64 %75, i64* %19, !dbg !20
  %76 = load i64, i64* %18
  %77 = load i64, i64* %19
  %78 = icmp eq i64 %76, %77
  store i1 %78, i1* %20
  %79 = load i1, i1* %20, !dbg !21
  %80 = zext i1 %79 to i64, !dbg !21
  %81 = or i64 %80, 72057594037927936, !dbg !21
  %82 = getelementptr i8, i8 addrspace(1)* null, i64 %81, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !21
  ret void
83:
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %85 = load i64, i64* %i.1
  %86 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %84, i64 72057594037927928)
  %87 = bitcast i8 addrspace(1)* %86 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %88 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %87, i64 0, i32 1
  %89 = load i64, i64 addrspace(1)* %88, align 8
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %125, label %128
91:
  %92 = zext i1 0 to i64, !dbg !22
  %93 = or i64 %92, 72057594037927936, !dbg !22
  %94 = getelementptr i8, i8 addrspace(1)* null, i64 %93, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !22
  br label %95
95:
  br label %96
96:
  %97 = load i64, i64* %i.1
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %i.1
  br label %66
99:
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %100)
  unreachable
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %102)
  unreachable
103:
  %104 = extractvalue {i64, i1} %53, 0
  store i64 %104, i64* %11
  store i64 0, i64* %i.1
  br label %66
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !13
  store i8 addrspace(1)* %106, i8 addrspace(1)** %22
  br label %99
107:
  %108 = extractvalue {i64, i1} %61, 0
  store i64 %108, i64* %5
  %109 = load i64, i64* %5
  %110 = load i64, i64* %m
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %114, label %116
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !13
  store i8 addrspace(1)* %113, i8 addrspace(1)** %22
  br label %99
114:
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842), !dbg !13
  store i8 addrspace(1)* %115, i8 addrspace(1)** %22
  br label %99
116:
  %117 = icmp eq i64 %109, -9223372036854775808
  %118 = icmp eq i64 %110, -1
  %119 = and i1 %117, %118
  br i1 %119, label %122, label %120
120:
  %121 = srem i64 %109, %110
  store i64 %121, i64* %6
  br label %123
122:
  store i64 0, i64* %6
  br label %123
123:
  %124 = load i64, i64* %6
  store i64 %124, i64* %x
  br label %63
125:
  %126 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %84, i64 4)
  %127 = icmp ne i8 addrspace(1)* %126, null
  br i1 %127, label %130, label %136
128:
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %129, i8 addrspace(1)** %22
  br label %99
130:
  %131 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %87, i64 0, i32 3
  %132 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %131, align 8
  %133 = bitcast i8* addrspace(1)* %132 to [0 x i64] addrspace(1)*
  %134 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %133, i64 0, i64 %85
  %135 = load i64, i64 addrspace(1)* %134, align 8
  store i64 %135, i64* %13
  br label %142
136:
  %137 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %87, i64 0, i32 0
  %138 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %137, align 8
  %139 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %138, i64 0, i32 3
  %140 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %139, align 8
  %141 = call i64 %140(i8 addrspace(1)* %84, i64 %85)
  store i64 %141, i64* %13
  br label %142
142:
  %143 = load i64, i64* %i.1
  %144 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %143, i64 1)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %155, label %146
146:
  %147 = extractvalue {i64, i1} %144, 0
  store i64 %147, i64* %14
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %149 = load i64, i64* %14
  %150 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %148, i64 72057594037927928)
  %151 = bitcast i8 addrspace(1)* %150 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %152 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %151, i64 0, i32 1
  %153 = load i64, i64 addrspace(1)* %152, align 8
  %154 = icmp ult i64 %149, %153
  br i1 %154, label %157, label %160
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %156, i8 addrspace(1)** %22
  br label %99
157:
  %158 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %148, i64 4)
  %159 = icmp ne i8 addrspace(1)* %158, null
  br i1 %159, label %162, label %168
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %161, i8 addrspace(1)** %22
  br label %99
162:
  %163 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %151, i64 0, i32 3
  %164 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %163, align 8
  %165 = bitcast i8* addrspace(1)* %164 to [0 x i64] addrspace(1)*
  %166 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %165, i64 0, i64 %149
  %167 = load i64, i64 addrspace(1)* %166, align 8
  store i64 %167, i64* %15
  br label %174
168:
  %169 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %151, i64 0, i32 0
  %170 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %169, align 8
  %171 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %170, i64 0, i32 3
  %172 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %171, align 8
  %173 = call i64 %172(i8 addrspace(1)* %148, i64 %149)
  store i64 %173, i64* %15
  br label %174
174:
  %175 = load i64, i64* %13
  %176 = load i64, i64* %15
  %177 = icmp sgt i64 %175, %176
  store i1 %177, i1* %16
  %178 = load i1, i1* %16
  br i1 %178, label %91, label %95
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !24
  %12 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %11), !dbg !24
  %13 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %12), !dbg !24
  store i64 %13, i64* %2, !dbg !24
  store i64 0, i64* %i
  br label %14
14:
  %15 = load i64, i64* %i
  %16 = load i64, i64* %2
  %17 = icmp slt i64 %15, %16
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %21, label %19
19:
  %20 = load i64, i64* %c
  ret i64 %20
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %23 = load i64, i64* %i
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 72057594037927928)
  %25 = bitcast i8 addrspace(1)* %24 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %26 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  %27 = load i64, i64 addrspace(1)* %26, align 8
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %36, label %39
29:
  %30 = load i64, i64* %i
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i
  br label %14
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 4)
  %38 = icmp ne i8 addrspace(1)* %37, null
  br i1 %38, label %41, label %47
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  br label %32
41:
  %42 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %25, i64 0, i32 3
  %43 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %42, align 8
  %44 = bitcast i8* addrspace(1)* %43 to [0 x i64] addrspace(1)*
  %45 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %44, i64 0, i64 %23
  %46 = load i64, i64 addrspace(1)* %45, align 8
  store i64 %46, i64* %4
  br label %53
47:
  %48 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %25, i64 0, i32 0
  %49 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %48, align 8
  %50 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %49, i64 0, i32 3
  %51 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %50, align 8
  %52 = call i64 %51(i8 addrspace(1)* %22, i64 %23)
  store i64 %52, i64* %4
  br label %53
53:
  %54 = load i64, i64* %c
  %55 = load i64, i64* %4
  %56 = xor i64 %54, %55
  store i64 %56, i64* %5
  %57 = load i64, i64* %5
  store i64 %57, i64* %c
  br label %29
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
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %89, label %22
22:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !26
  %24 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %23), !dbg !26
  %25 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %24), !dbg !26
  store i64 %25, i64* %2, !dbg !26
  %26 = load i64, i64* %2
  %27 = icmp sle i64 %26, 1
  store i1 %27, i1* %3
  %28 = load i1, i1* %3
  br i1 %28, label %29, label %31
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %30
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !27
  %33 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %32), !dbg !27
  %34 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %33), !dbg !27
  store i64 %34, i64* %4, !dbg !27
  %35 = load i64, i64* %4
  %36 = icmp eq i64 2, 0
  br i1 %36, label %91, label %93
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %mid
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %7
  %41 = load i1, i1* %7
  br i1 %41, label %51, label %42
42:
  %43 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %44 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %43 to i8 addrspace(1)*
  %45 = getelementptr i8, i8 addrspace(1)* %44, i64 1297036692682702852
  store i8 addrspace(1)* %45, i8 addrspace(1)** %10
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %46, i8 addrspace(1)** %list2
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !28
  %48 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %47), !dbg !28
  %49 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %48), !dbg !28
  store i64 %49, i64* %11, !dbg !28
  %50 = load i64, i64* %mid
  store i64 %50, i64* %i.1
  br label %62
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %53 = load i64, i64* %i
  %54 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %52, i64 72057594037927928)
  %55 = bitcast i8 addrspace(1)* %54 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %56 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %55, i64 0, i32 1
  %57 = load i64, i64 addrspace(1)* %56, align 8
  %58 = icmp ult i64 %53, %57
  br i1 %58, label %106, label %109
59:
  %60 = load i64, i64* %i
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %i
  br label %37
62:
  %63 = load i64, i64* %i.1
  %64 = load i64, i64* %11
  %65 = icmp slt i64 %63, %64
  store i1 %65, i1* %12
  %66 = load i1, i1* %12
  br i1 %66, label %76, label %67
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !30
  %69 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %68), !dbg !30
  store i8 addrspace(1)* %69, i8 addrspace(1)** %15, !dbg !30
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !31
  %71 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %70), !dbg !31
  store i8 addrspace(1)* %71, i8 addrspace(1)** %16, !dbg !31
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !32
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !32
  %74 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %72, i8 addrspace(1)* %73), !dbg !32
  store i8 addrspace(1)* %74, i8 addrspace(1)** %17, !dbg !32
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %75
76:
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %78 = load i64, i64* %i.1
  %79 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %77, i64 72057594037927928)
  %80 = bitcast i8 addrspace(1)* %79 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %81 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  %82 = load i64, i64 addrspace(1)* %81, align 8
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %127, label %130
84:
  %85 = load i64, i64* %i.1
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %i.1
  br label %62
87:
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_bal_panic(i8 addrspace(1)* %88)
  unreachable
89:
  %90 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %90)
  unreachable
91:
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 10242), !dbg !25
  store i8 addrspace(1)* %92, i8 addrspace(1)** %18
  br label %87
93:
  %94 = icmp eq i64 %35, -9223372036854775808
  %95 = icmp eq i64 2, -1
  %96 = and i1 %94, %95
  br i1 %96, label %104, label %97
97:
  %98 = sdiv i64 %35, 2
  store i64 %98, i64* %5
  %99 = load i64, i64* %5
  store i64 %99, i64* %mid
  %100 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %101 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %100 to i8 addrspace(1)*
  %102 = getelementptr i8, i8 addrspace(1)* %101, i64 1297036692682702852
  store i8 addrspace(1)* %102, i8 addrspace(1)** %6
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %103, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %37
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !25
  store i8 addrspace(1)* %105, i8 addrspace(1)** %18
  br label %87
106:
  %107 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %52, i64 4)
  %108 = icmp ne i8 addrspace(1)* %107, null
  br i1 %108, label %111, label %117
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %110, i8 addrspace(1)** %18
  br label %87
111:
  %112 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %55, i64 0, i32 3
  %113 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %112, align 8
  %114 = bitcast i8* addrspace(1)* %113 to [0 x i64] addrspace(1)*
  %115 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %114, i64 0, i64 %53
  %116 = load i64, i64 addrspace(1)* %115, align 8
  store i64 %116, i64* %8
  br label %123
117:
  %118 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %55, i64 0, i32 0
  %119 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %118, align 8
  %120 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %119, i64 0, i32 3
  %121 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %120, align 8
  %122 = call i64 %121(i8 addrspace(1)* %52, i64 %53)
  store i64 %122, i64* %8
  br label %123
123:
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %125 = load i64, i64* %8, !dbg !29
  %126 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %125), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %124, i8 addrspace(1)* %126), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !29
  br label %59
127:
  %128 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %77, i64 4)
  %129 = icmp ne i8 addrspace(1)* %128, null
  br i1 %129, label %132, label %138
130:
  %131 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %131, i8 addrspace(1)** %18
  br label %87
132:
  %133 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %80, i64 0, i32 3
  %134 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %133, align 8
  %135 = bitcast i8* addrspace(1)* %134 to [0 x i64] addrspace(1)*
  %136 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %135, i64 0, i64 %78
  %137 = load i64, i64 addrspace(1)* %136, align 8
  store i64 %137, i64* %13
  br label %144
138:
  %139 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %80, i64 0, i32 0
  %140 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %139, align 8
  %141 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %140, i64 0, i32 3
  %142 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %141, align 8
  %143 = call i64 %142(i8 addrspace(1)* %77, i64 %78)
  store i64 %143, i64* %13
  br label %144
144:
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %146 = load i64, i64* %13, !dbg !33
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %146), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %145, i8 addrspace(1)* %147), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !33
  br label %84
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
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i1
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %112, label %29
29:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %30 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %31 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %30 to i8 addrspace(1)*
  %32 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702852
  store i8 addrspace(1)* %32, i8 addrspace(1)** %3
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %33, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !35
  %35 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %34), !dbg !35
  %36 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %35), !dbg !35
  store i64 %36, i64* %4, !dbg !35
  %37 = load i64, i64* %4
  store i64 %37, i64* %len1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !36
  %39 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %38), !dbg !36
  %40 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %39), !dbg !36
  store i64 %40, i64* %5, !dbg !36
  %41 = load i64, i64* %5
  store i64 %41, i64* %len2
  br label %42
42:
  br label %43
43:
  %44 = load i64, i64* %i1
  %45 = load i64, i64* %len1
  %46 = icmp slt i64 %44, %45
  store i1 %46, i1* %6
  %47 = load i1, i1* %6
  br i1 %47, label %48, label %79
48:
  %49 = load i64, i64* %i2
  %50 = load i64, i64* %len2
  %51 = icmp slt i64 %49, %50
  store i1 %51, i1* %7
  %52 = load i1, i1* %7
  br i1 %52, label %53, label %78
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %55 = load i64, i64* %i1
  %56 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %54, i64 72057594037927928)
  %57 = bitcast i8 addrspace(1)* %56 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %58 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %57, i64 0, i32 1
  %59 = load i64, i64 addrspace(1)* %58, align 8
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %114, label %117
61:
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %63 = load i64, i64* %i1
  %64 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %62, i64 72057594037927928)
  %65 = bitcast i8 addrspace(1)* %64 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %66 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %65, i64 0, i32 1
  %67 = load i64, i64 addrspace(1)* %66, align 8
  %68 = icmp ult i64 %63, %67
  br i1 %68, label %161, label %164
69:
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %71 = load i64, i64* %i2
  %72 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %70, i64 72057594037927928)
  %73 = bitcast i8 addrspace(1)* %72 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %74 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %73, i64 0, i32 1
  %75 = load i64, i64 addrspace(1)* %74, align 8
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %190, label %193
77:
  br label %42
78:
  br label %79
79:
  br label %80
80:
  br label %81
81:
  %82 = load i64, i64* %i1
  %83 = load i64, i64* %len1
  %84 = icmp slt i64 %82, %83
  store i1 %84, i1* %17
  %85 = load i1, i1* %17
  br i1 %85, label %86, label %94
86:
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %88 = load i64, i64* %i1
  %89 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %87, i64 72057594037927928)
  %90 = bitcast i8 addrspace(1)* %89 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %91 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  %92 = load i64, i64 addrspace(1)* %91, align 8
  %93 = icmp ult i64 %88, %92
  br i1 %93, label %219, label %222
94:
  br label %95
95:
  %96 = load i64, i64* %i2
  %97 = load i64, i64* %len2
  %98 = icmp slt i64 %96, %97
  store i1 %98, i1* %21
  %99 = load i1, i1* %21
  br i1 %99, label %100, label %108
100:
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %102 = load i64, i64* %i2
  %103 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %101, i64 72057594037927928)
  %104 = bitcast i8 addrspace(1)* %103 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %105 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %104, i64 0, i32 1
  %106 = load i64, i64 addrspace(1)* %105, align 8
  %107 = icmp ult i64 %102, %106
  br i1 %107, label %248, label %251
108:
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %109
110:
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_bal_panic(i8 addrspace(1)* %111)
  unreachable
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 13316), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %113)
  unreachable
114:
  %115 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %54, i64 4)
  %116 = icmp ne i8 addrspace(1)* %115, null
  br i1 %116, label %119, label %125
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %118, i8 addrspace(1)** %25
  br label %110
119:
  %120 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %57, i64 0, i32 3
  %121 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %120, align 8
  %122 = bitcast i8* addrspace(1)* %121 to [0 x i64] addrspace(1)*
  %123 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %122, i64 0, i64 %55
  %124 = load i64, i64 addrspace(1)* %123, align 8
  store i64 %124, i64* %8
  br label %131
125:
  %126 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %57, i64 0, i32 0
  %127 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %126, align 8
  %128 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %127, i64 0, i32 3
  %129 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %128, align 8
  %130 = call i64 %129(i8 addrspace(1)* %54, i64 %55)
  store i64 %130, i64* %8
  br label %131
131:
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %133 = load i64, i64* %i2
  %134 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %132, i64 72057594037927928)
  %135 = bitcast i8 addrspace(1)* %134 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %136 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %135, i64 0, i32 1
  %137 = load i64, i64 addrspace(1)* %136, align 8
  %138 = icmp ult i64 %133, %137
  br i1 %138, label %139, label %142
139:
  %140 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %132, i64 4)
  %141 = icmp ne i8 addrspace(1)* %140, null
  br i1 %141, label %144, label %150
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %143, i8 addrspace(1)** %25
  br label %110
144:
  %145 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %135, i64 0, i32 3
  %146 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %145, align 8
  %147 = bitcast i8* addrspace(1)* %146 to [0 x i64] addrspace(1)*
  %148 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %147, i64 0, i64 %133
  %149 = load i64, i64 addrspace(1)* %148, align 8
  store i64 %149, i64* %9
  br label %156
150:
  %151 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %135, i64 0, i32 0
  %152 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %151, align 8
  %153 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %152, i64 0, i32 3
  %154 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %153, align 8
  %155 = call i64 %154(i8 addrspace(1)* %132, i64 %133)
  store i64 %155, i64* %9
  br label %156
156:
  %157 = load i64, i64* %8
  %158 = load i64, i64* %9
  %159 = icmp sle i64 %157, %158
  store i1 %159, i1* %10
  %160 = load i1, i1* %10
  br i1 %160, label %61, label %69
161:
  %162 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %62, i64 4)
  %163 = icmp ne i8 addrspace(1)* %162, null
  br i1 %163, label %166, label %172
164:
  %165 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %165, i8 addrspace(1)** %25
  br label %110
166:
  %167 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %65, i64 0, i32 3
  %168 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %167, align 8
  %169 = bitcast i8* addrspace(1)* %168 to [0 x i64] addrspace(1)*
  %170 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %169, i64 0, i64 %63
  %171 = load i64, i64 addrspace(1)* %170, align 8
  store i64 %171, i64* %11
  br label %178
172:
  %173 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %65, i64 0, i32 0
  %174 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %173, align 8
  %175 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %174, i64 0, i32 3
  %176 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %175, align 8
  %177 = call i64 %176(i8 addrspace(1)* %62, i64 %63)
  store i64 %177, i64* %11
  br label %178
178:
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %180 = load i64, i64* %11, !dbg !37
  %181 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %180), !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %179, i8 addrspace(1)* %181), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !37
  %182 = load i64, i64* %i1
  %183 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %182, i64 1)
  %184 = extractvalue {i64, i1} %183, 1
  br i1 %184, label %188, label %185
185:
  %186 = extractvalue {i64, i1} %183, 0
  store i64 %186, i64* %13
  %187 = load i64, i64* %13
  store i64 %187, i64* %i1
  br label %77
188:
  %189 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %189, i8 addrspace(1)** %25
  br label %110
190:
  %191 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %70, i64 4)
  %192 = icmp ne i8 addrspace(1)* %191, null
  br i1 %192, label %195, label %201
193:
  %194 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %194, i8 addrspace(1)** %25
  br label %110
195:
  %196 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %73, i64 0, i32 3
  %197 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %196, align 8
  %198 = bitcast i8* addrspace(1)* %197 to [0 x i64] addrspace(1)*
  %199 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %198, i64 0, i64 %71
  %200 = load i64, i64 addrspace(1)* %199, align 8
  store i64 %200, i64* %14
  br label %207
201:
  %202 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %73, i64 0, i32 0
  %203 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %202, align 8
  %204 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %203, i64 0, i32 3
  %205 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %204, align 8
  %206 = call i64 %205(i8 addrspace(1)* %70, i64 %71)
  store i64 %206, i64* %14
  br label %207
207:
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %209 = load i64, i64* %14, !dbg !38
  %210 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %209), !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %208, i8 addrspace(1)* %210), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !38
  %211 = load i64, i64* %i2
  %212 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %211, i64 1)
  %213 = extractvalue {i64, i1} %212, 1
  br i1 %213, label %217, label %214
214:
  %215 = extractvalue {i64, i1} %212, 0
  store i64 %215, i64* %16
  %216 = load i64, i64* %16
  store i64 %216, i64* %i2
  br label %77
217:
  %218 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %218, i8 addrspace(1)** %25
  br label %110
219:
  %220 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %87, i64 4)
  %221 = icmp ne i8 addrspace(1)* %220, null
  br i1 %221, label %224, label %230
222:
  %223 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %223, i8 addrspace(1)** %25
  br label %110
224:
  %225 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %90, i64 0, i32 3
  %226 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %225, align 8
  %227 = bitcast i8* addrspace(1)* %226 to [0 x i64] addrspace(1)*
  %228 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %227, i64 0, i64 %88
  %229 = load i64, i64 addrspace(1)* %228, align 8
  store i64 %229, i64* %18
  br label %236
230:
  %231 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %90, i64 0, i32 0
  %232 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %231, align 8
  %233 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %232, i64 0, i32 3
  %234 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %233, align 8
  %235 = call i64 %234(i8 addrspace(1)* %87, i64 %88)
  store i64 %235, i64* %18
  br label %236
236:
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %238 = load i64, i64* %18, !dbg !39
  %239 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %238), !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %237, i8 addrspace(1)* %239), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !39
  %240 = load i64, i64* %i1
  %241 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %240, i64 1)
  %242 = extractvalue {i64, i1} %241, 1
  br i1 %242, label %246, label %243
243:
  %244 = extractvalue {i64, i1} %241, 0
  store i64 %244, i64* %20
  %245 = load i64, i64* %20
  store i64 %245, i64* %i1
  br label %81
246:
  %247 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %247, i8 addrspace(1)** %25
  br label %110
248:
  %249 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %101, i64 4)
  %250 = icmp ne i8 addrspace(1)* %249, null
  br i1 %250, label %253, label %259
251:
  %252 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %252, i8 addrspace(1)** %25
  br label %110
253:
  %254 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %104, i64 0, i32 3
  %255 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %254, align 8
  %256 = bitcast i8* addrspace(1)* %255 to [0 x i64] addrspace(1)*
  %257 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %256, i64 0, i64 %102
  %258 = load i64, i64 addrspace(1)* %257, align 8
  store i64 %258, i64* %22
  br label %265
259:
  %260 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %104, i64 0, i32 0
  %261 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %260, align 8
  %262 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %261, i64 0, i32 3
  %263 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %262, align 8
  %264 = call i64 %263(i8 addrspace(1)* %101, i64 %102)
  store i64 %264, i64* %22
  br label %265
265:
  %266 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %267 = load i64, i64* %22, !dbg !40
  %268 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %267), !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %266, i8 addrspace(1)* %268), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !40
  %269 = load i64, i64* %i2
  %270 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %269, i64 1)
  %271 = extractvalue {i64, i1} %270, 1
  br i1 %271, label %275, label %272
272:
  %273 = extractvalue {i64, i1} %270, 0
  store i64 %273, i64* %24
  %274 = load i64, i64* %24
  store i64 %274, i64* %i2
  br label %95
275:
  %276 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %276, i8 addrspace(1)** %25
  br label %110
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-bench/intmergesort-v.bal", directory:"")
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
