@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i64
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i8
  %41 = load i8*, i8** @_bal_stack_guard
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %63, label %43
43:
  %44 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 2)
  %45 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 3
  %46 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %45, align 8
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %48 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %46, i64 0, i64 0
  store i8 addrspace(1)* %47, i8 addrspace(1)* addrspace(1)* %48
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 100)
  %50 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %46, i64 0, i64 1
  store i8 addrspace(1)* %49, i8 addrspace(1)* addrspace(1)* %50
  %51 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %51
  %52 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44 to i8 addrspace(1)*
  %53 = getelementptr i8, i8 addrspace(1)* %52, i64 1297036692682702852
  store i8 addrspace(1)* %53, i8 addrspace(1)** %1
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %54, i8 addrspace(1)** %x
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %56 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %55, i64 72057594037927928)
  %57 = bitcast i8 addrspace(1)* %56 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %58 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 1
  %59 = load i64, i64 addrspace(1)* %58, align 8
  %60 = icmp ult i64 1, %59
  br i1 %60, label %65, label %77
61:
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %39
  call void @_bal_panic(i8 addrspace(1)* %62)
  unreachable
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %64)
  unreachable
65:
  %66 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 3
  %67 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %66, align 8
  %68 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %67, i64 0, i64 1
  %69 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %68, align 8
  %70 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %69)
  store i64 %70, i64* %2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %72 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %71, i64 72057594037927928)
  %73 = bitcast i8 addrspace(1)* %72 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %74 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 1
  %75 = load i64, i64 addrspace(1)* %74, align 8
  %76 = icmp ult i64 1, %75
  br i1 %76, label %79, label %97
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !11
  store i8 addrspace(1)* %78, i8 addrspace(1)** %39
  br label %61
79:
  %80 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 3
  %81 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80, align 8
  %82 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %81, i64 0, i64 1
  %83 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %82, align 8
  %84 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %83)
  store i64 %84, i64* %3
  %85 = load i64, i64* %3
  %86 = and i64 63, 4
  %87 = ashr i64 %85, %86
  store i64 %87, i64* %4
  %88 = load i64, i64* %2
  %89 = load i64, i64* %4
  %90 = and i64 63, %89
  %91 = ashr i64 %88, %90
  store i64 %91, i64* %5
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %93 = load i64, i64* %5
  %94 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %93)
  %95 = call i64 @_bal_list_set(i8 addrspace(1)* %92, i64 1, i8 addrspace(1)* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %99, label %106
97:
  %98 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !11
  store i8 addrspace(1)* %98, i8 addrspace(1)** %39
  br label %61
99:
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %101 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %100, i64 72057594037927928)
  %102 = bitcast i8 addrspace(1)* %101 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %103 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 1
  %104 = load i64, i64 addrspace(1)* %103, align 8
  %105 = icmp ult i64 1, %104
  br i1 %105, label %109, label %123
106:
  %107 = or i64 %95, 1280
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 %107), !dbg !11
  store i8 addrspace(1)* %108, i8 addrspace(1)** %39
  br label %61
109:
  %110 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 3
  %111 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %110, align 8
  %112 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %111, i64 0, i64 1
  %113 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %112, align 8
  %114 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %113)
  store i64 %114, i64* %6
  %115 = load i64, i64* %6, !dbg !12
  %116 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %115), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %118 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %117, i64 72057594037927928)
  %119 = bitcast i8 addrspace(1)* %118 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %120 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %119, i64 0, i32 1
  %121 = load i64, i64 addrspace(1)* %120, align 8
  %122 = icmp ult i64 1, %121
  br i1 %122, label %125, label %134
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !11
  store i8 addrspace(1)* %124, i8 addrspace(1)** %39
  br label %61
125:
  %126 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %119, i64 0, i32 3
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 1
  %129 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %128, align 8
  %130 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %129)
  store i64 %130, i64* %8
  %131 = load i64, i64* %8
  %132 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %131, i64 99)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %143, label %136
134:
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !11
  store i8 addrspace(1)* %135, i8 addrspace(1)** %39
  br label %61
136:
  %137 = extractvalue {i64, i1} %132, 0
  store i64 %137, i64* %9
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %139 = load i64, i64* %9
  %140 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %139)
  %141 = call i64 @_bal_list_set(i8 addrspace(1)* %138, i64 1, i8 addrspace(1)* %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %145, label %152
143:
  %144 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !11
  store i8 addrspace(1)* %144, i8 addrspace(1)** %39
  br label %61
145:
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %147 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %146, i64 72057594037927928)
  %148 = bitcast i8 addrspace(1)* %147 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %149 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %148, i64 0, i32 1
  %150 = load i64, i64 addrspace(1)* %149, align 8
  %151 = icmp ult i64 1, %150
  br i1 %151, label %155, label %169
152:
  %153 = or i64 %141, 1792
  %154 = call i8 addrspace(1)* @_bal_panic_construct(i64 %153), !dbg !11
  store i8 addrspace(1)* %154, i8 addrspace(1)** %39
  br label %61
155:
  %156 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %148, i64 0, i32 3
  %157 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %156, align 8
  %158 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 1
  %159 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %158, align 8
  %160 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %159)
  store i64 %160, i64* %10
  %161 = load i64, i64* %10, !dbg !13
  %162 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %161), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %162), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !13
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %164 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %163, i64 72057594037927928)
  %165 = bitcast i8 addrspace(1)* %164 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %166 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %165, i64 0, i32 1
  %167 = load i64, i64 addrspace(1)* %166, align 8
  %168 = icmp ult i64 1, %167
  br i1 %168, label %171, label %183
169:
  %170 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !11
  store i8 addrspace(1)* %170, i8 addrspace(1)** %39
  br label %61
171:
  %172 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %165, i64 0, i32 3
  %173 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %172, align 8
  %174 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %173, i64 0, i64 1
  %175 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %174, align 8
  %176 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %175)
  store i64 %176, i64* %12
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %178 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %177, i64 72057594037927928)
  %179 = bitcast i8 addrspace(1)* %178 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %180 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %179, i64 0, i32 1
  %181 = load i64, i64 addrspace(1)* %180, align 8
  %182 = icmp ult i64 1, %181
  br i1 %182, label %185, label %197
183:
  %184 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %184, i8 addrspace(1)** %39
  br label %61
185:
  %186 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %179, i64 0, i32 3
  %187 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %186, align 8
  %188 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %187, i64 0, i64 1
  %189 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %188, align 8
  %190 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %189)
  store i64 %190, i64* %13
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %192 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %191, i64 72057594037927928)
  %193 = bitcast i8 addrspace(1)* %192 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %194 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %193, i64 0, i32 1
  %195 = load i64, i64 addrspace(1)* %194, align 8
  %196 = icmp ult i64 1, %195
  br i1 %196, label %199, label %209
197:
  %198 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %198, i8 addrspace(1)** %39
  br label %61
199:
  %200 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %193, i64 0, i32 3
  %201 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %200, align 8
  %202 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %201, i64 0, i64 1
  %203 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %202, align 8
  %204 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %203)
  store i64 %204, i64* %14
  %205 = load i64, i64* %13
  %206 = load i64, i64* %14
  %207 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %205, i64 %206)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %217, label %211
209:
  %210 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %210, i8 addrspace(1)** %39
  br label %61
211:
  %212 = extractvalue {i64, i1} %207, 0
  store i64 %212, i64* %15
  %213 = load i64, i64* %12
  %214 = load i64, i64* %15
  %215 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %213, i64 %214)
  %216 = extractvalue {i64, i1} %215, 1
  br i1 %216, label %226, label %219
217:
  %218 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !11
  store i8 addrspace(1)* %218, i8 addrspace(1)** %39
  br label %61
219:
  %220 = extractvalue {i64, i1} %215, 0
  store i64 %220, i64* %16
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %222 = load i64, i64* %16
  %223 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %222)
  %224 = call i64 @_bal_list_set(i8 addrspace(1)* %221, i64 1, i8 addrspace(1)* %223)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %228, label %235
226:
  %227 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !11
  store i8 addrspace(1)* %227, i8 addrspace(1)** %39
  br label %61
228:
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %230 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %229, i64 72057594037927928)
  %231 = bitcast i8 addrspace(1)* %230 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %232 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %231, i64 0, i32 1
  %233 = load i64, i64 addrspace(1)* %232, align 8
  %234 = icmp ult i64 1, %233
  br i1 %234, label %238, label %260
235:
  %236 = or i64 %224, 2304
  %237 = call i8 addrspace(1)* @_bal_panic_construct(i64 %236), !dbg !11
  store i8 addrspace(1)* %237, i8 addrspace(1)** %39
  br label %61
238:
  %239 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %231, i64 0, i32 3
  %240 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %239, align 8
  %241 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %240, i64 0, i64 1
  %242 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %241, align 8
  %243 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %242)
  store i64 %243, i64* %17
  %244 = load i64, i64* %17, !dbg !14
  %245 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %244), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %245), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !14
  %246 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 1)
  %247 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %246, i64 0, i32 3
  %248 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %247, align 8
  %249 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %248, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)* addrspace(1)* %249
  %250 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %246, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %250
  %251 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %246 to i8 addrspace(1)*
  %252 = getelementptr i8, i8 addrspace(1)* %251, i64 1297036692682702852
  store i8 addrspace(1)* %252, i8 addrspace(1)** %19
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  store i8 addrspace(1)* %253, i8 addrspace(1)** %s
  %254 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %255 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %254, i64 72057594037927928)
  %256 = bitcast i8 addrspace(1)* %255 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %257 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %256, i64 0, i32 1
  %258 = load i64, i64 addrspace(1)* %257, align 8
  %259 = icmp ult i64 0, %258
  br i1 %259, label %262, label %273
260:
  %261 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !11
  store i8 addrspace(1)* %261, i8 addrspace(1)** %39
  br label %61
262:
  %263 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %256, i64 0, i32 3
  %264 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %263, align 8
  %265 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %264, i64 0, i64 0
  %266 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %265, align 8
  store i8 addrspace(1)* %266, i8 addrspace(1)** %20
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %268 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %267, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098305485593343776))
  store i8 addrspace(1)* %268, i8 addrspace(1)** %21
  %269 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %270 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %271 = call i64 @_bal_list_set(i8 addrspace(1)* %269, i64 0, i8 addrspace(1)* %270)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %275, label %282
273:
  %274 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !11
  store i8 addrspace(1)* %274, i8 addrspace(1)** %39
  br label %61
275:
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %277 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %276, i64 72057594037927928)
  %278 = bitcast i8 addrspace(1)* %277 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %279 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %278, i64 0, i32 1
  %280 = load i64, i64 addrspace(1)* %279, align 8
  %281 = icmp ult i64 0, %280
  br i1 %281, label %285, label %295
282:
  %283 = or i64 %271, 3072
  %284 = call i8 addrspace(1)* @_bal_panic_construct(i64 %283), !dbg !11
  store i8 addrspace(1)* %284, i8 addrspace(1)** %39
  br label %61
285:
  %286 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %278, i64 0, i32 3
  %287 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %286, align 8
  %288 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %287, i64 0, i64 0
  %289 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %288, align 8
  store i8 addrspace(1)* %289, i8 addrspace(1)** %22
  %290 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %290), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !15
  %291 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %292 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %293 = call i64 @_bal_list_set(i8 addrspace(1)* %291, i64 1, i8 addrspace(1)* %292)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %297, label %306
295:
  %296 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !11
  store i8 addrspace(1)* %296, i8 addrspace(1)** %39
  br label %61
297:
  %298 = call i64 @_B_func1(), !dbg !16
  store i64 %298, i64* %24, !dbg !16
  %299 = load i64, i64* %24
  %300 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %301 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %300, i64 72057594037927928)
  %302 = bitcast i8 addrspace(1)* %301 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %303 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %302, i64 0, i32 1
  %304 = load i64, i64 addrspace(1)* %303, align 8
  %305 = icmp ult i64 %299, %304
  br i1 %305, label %309, label %318
306:
  %307 = or i64 %293, 3584
  %308 = call i8 addrspace(1)* @_bal_panic_construct(i64 %307), !dbg !11
  store i8 addrspace(1)* %308, i8 addrspace(1)** %39
  br label %61
309:
  %310 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %302, i64 0, i32 3
  %311 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %310, align 8
  %312 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %311, i64 0, i64 %299
  %313 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %312, align 8
  %314 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %313)
  store i64 %314, i64* %25
  %315 = load i64, i64* %25
  %316 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %315, i64 3)
  %317 = extractvalue {i64, i1} %316, 1
  br i1 %317, label %328, label %320
318:
  %319 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !11
  store i8 addrspace(1)* %319, i8 addrspace(1)** %39
  br label %61
320:
  %321 = extractvalue {i64, i1} %316, 0
  store i64 %321, i64* %26
  %322 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %323 = load i64, i64* %24
  %324 = load i64, i64* %26
  %325 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %324)
  %326 = call i64 @_bal_list_set(i8 addrspace(1)* %322, i64 %323, i8 addrspace(1)* %325)
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %330, label %337
328:
  %329 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !11
  store i8 addrspace(1)* %329, i8 addrspace(1)** %39
  br label %61
330:
  %331 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %332 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %331, i64 72057594037927928)
  %333 = bitcast i8 addrspace(1)* %332 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %334 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %333, i64 0, i32 1
  %335 = load i64, i64 addrspace(1)* %334, align 8
  %336 = icmp ult i64 1, %335
  br i1 %336, label %340, label %354
337:
  %338 = or i64 %326, 3840
  %339 = call i8 addrspace(1)* @_bal_panic_construct(i64 %338), !dbg !11
  store i8 addrspace(1)* %339, i8 addrspace(1)** %39
  br label %61
340:
  %341 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %333, i64 0, i32 3
  %342 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %341, align 8
  %343 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %342, i64 0, i64 1
  %344 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %343, align 8
  %345 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %344)
  store i64 %345, i64* %27
  %346 = load i64, i64* %27, !dbg !17
  %347 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %346), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %347), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !17
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %349 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %348, i64 72057594037927928)
  %350 = bitcast i8 addrspace(1)* %349 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %351 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %350, i64 0, i32 1
  %352 = load i64, i64 addrspace(1)* %351, align 8
  %353 = icmp ult i64 1, %352
  br i1 %353, label %356, label %365
354:
  %355 = call i8 addrspace(1)* @_bal_panic_construct(i64 4101), !dbg !11
  store i8 addrspace(1)* %355, i8 addrspace(1)** %39
  br label %61
356:
  %357 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %350, i64 0, i32 3
  %358 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %357, align 8
  %359 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %358, i64 0, i64 1
  %360 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %359, align 8
  %361 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %360)
  store i64 %361, i64* %29
  %362 = load i64, i64* %29
  %363 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %362, i64 2)
  %364 = extractvalue {i64, i1} %363, 1
  br i1 %364, label %374, label %367
365:
  %366 = call i8 addrspace(1)* @_bal_panic_construct(i64 4357), !dbg !11
  store i8 addrspace(1)* %366, i8 addrspace(1)** %39
  br label %61
367:
  %368 = extractvalue {i64, i1} %363, 0
  store i64 %368, i64* %30
  %369 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %370 = load i64, i64* %30
  %371 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %370)
  %372 = call i64 @_bal_list_set(i8 addrspace(1)* %369, i64 1, i8 addrspace(1)* %371)
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %376, label %383
374:
  %375 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !11
  store i8 addrspace(1)* %375, i8 addrspace(1)** %39
  br label %61
376:
  %377 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %378 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %377, i64 72057594037927928)
  %379 = bitcast i8 addrspace(1)* %378 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %380 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %379, i64 0, i32 1
  %381 = load i64, i64 addrspace(1)* %380, align 8
  %382 = icmp ult i64 1, %381
  br i1 %382, label %386, label %402
383:
  %384 = or i64 %372, 4352
  %385 = call i8 addrspace(1)* @_bal_panic_construct(i64 %384), !dbg !11
  store i8 addrspace(1)* %385, i8 addrspace(1)** %39
  br label %61
386:
  %387 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %379, i64 0, i32 3
  %388 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %387, align 8
  %389 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %388, i64 0, i64 1
  %390 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %389, align 8
  %391 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %390)
  store i64 %391, i64* %31
  %392 = load i64, i64* %31, !dbg !18
  %393 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %392), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %393), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !18
  %394 = call i64 @_B_func1(), !dbg !19
  store i64 %394, i64* %33, !dbg !19
  %395 = load i64, i64* %33
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %397 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %396, i64 72057594037927928)
  %398 = bitcast i8 addrspace(1)* %397 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %399 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %398, i64 0, i32 1
  %400 = load i64, i64 addrspace(1)* %399, align 8
  %401 = icmp ult i64 %395, %400
  br i1 %401, label %404, label %415
402:
  %403 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !11
  store i8 addrspace(1)* %403, i8 addrspace(1)** %39
  br label %61
404:
  %405 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %398, i64 0, i32 3
  %406 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %405, align 8
  %407 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %406, i64 0, i64 %395
  %408 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %407, align 8
  %409 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %408)
  store i64 %409, i64* %34
  %410 = call i64 @_B_func2(), !dbg !20
  store i64 %410, i64* %35, !dbg !20
  %411 = load i64, i64* %34
  %412 = load i64, i64* %35
  %413 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %411, i64 %412)
  %414 = extractvalue {i64, i1} %413, 1
  br i1 %414, label %425, label %417
415:
  %416 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869), !dbg !11
  store i8 addrspace(1)* %416, i8 addrspace(1)** %39
  br label %61
417:
  %418 = extractvalue {i64, i1} %413, 0
  store i64 %418, i64* %36
  %419 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %420 = load i64, i64* %33
  %421 = load i64, i64* %36
  %422 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %421)
  %423 = call i64 @_bal_list_set(i8 addrspace(1)* %419, i64 %420, i8 addrspace(1)* %422)
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %427, label %434
425:
  %426 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !11
  store i8 addrspace(1)* %426, i8 addrspace(1)** %39
  br label %61
427:
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %429 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %428, i64 72057594037927928)
  %430 = bitcast i8 addrspace(1)* %429 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %431 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %430, i64 0, i32 1
  %432 = load i64, i64 addrspace(1)* %431, align 8
  %433 = icmp ult i64 1, %432
  br i1 %433, label %437, label %445
434:
  %435 = or i64 %423, 4864
  %436 = call i8 addrspace(1)* @_bal_panic_construct(i64 %435), !dbg !11
  store i8 addrspace(1)* %436, i8 addrspace(1)** %39
  br label %61
437:
  %438 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %430, i64 0, i32 3
  %439 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %438, align 8
  %440 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %439, i64 0, i64 1
  %441 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %440, align 8
  %442 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %441)
  store i64 %442, i64* %37
  %443 = load i64, i64* %37, !dbg !21
  %444 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %443), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %444), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !21
  ret void
445:
  %446 = call i8 addrspace(1)* @_bal_panic_construct(i64 5381), !dbg !11
  store i8 addrspace(1)* %446, i8 addrspace(1)** %39
  br label %61
}
define internal i64 @_B_func1() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475656240854374)), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !23
  ret i64 1
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !22
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal i64 @_B_func2() !dbg !9 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475660535821670)), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !25
  ret i64 2
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 7428), !dbg !24
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func1", linkageName:"_B_func1", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"func2", linkageName:"_B_func2", scope: !1, file: !1, line: 29, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 4, scope: !5)
!16 = !DILocation(line: 15, column: 6, scope: !5)
!17 = !DILocation(line: 16, column: 4, scope: !5)
!18 = !DILocation(line: 18, column: 4, scope: !5)
!19 = !DILocation(line: 19, column: 6, scope: !5)
!20 = !DILocation(line: 19, column: 18, scope: !5)
!21 = !DILocation(line: 21, column: 4, scope: !5)
!22 = !DILocation(line: 0, column: 0, scope: !7)
!23 = !DILocation(line: 25, column: 4, scope: !7)
!24 = !DILocation(line: 0, column: 0, scope: !9)
!25 = !DILocation(line: 30, column: 4, scope: !9)
