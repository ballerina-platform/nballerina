@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
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
  %44 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 2)
  %45 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 3
  %46 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %45, align 8
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %48 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %46, i64 0, i64 0
  store i8 addrspace(1)* %47, i8 addrspace(1)* addrspace(1)* %48
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 100)
  %50 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %46, i64 0, i64 1
  store i8 addrspace(1)* %49, i8 addrspace(1)* addrspace(1)* %50
  %51 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %51
  %52 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44 to i8 addrspace(1)*
  %53 = getelementptr i8, i8 addrspace(1)* %52, i64 1297036692682702852
  store i8 addrspace(1)* %53, i8 addrspace(1)** %1
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %54, i8 addrspace(1)** %x
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %56 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %55, i64 72057594037927928)
  %57 = bitcast i8 addrspace(1)* %56 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %58 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 1
  %59 = load i64, i64 addrspace(1)* %58, align 8
  %60 = icmp ult i64 1, %59
  br i1 %60, label %65, label %79
61:
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %39
  call void @_bal_panic(i8 addrspace(1)* %62)
  unreachable
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %64)
  unreachable
65:
  %66 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 0
  %67 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %66, align 8
  %68 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %67, i64 0, i32 1
  %69 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %68, align 8
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %71 = call i8 addrspace(1)* %69(i8 addrspace(1)* %70, i64 1)
  %72 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %71)
  store i64 %72, i64* %2
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %74 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %73, i64 72057594037927928)
  %75 = bitcast i8 addrspace(1)* %74 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %76 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 1
  %77 = load i64, i64 addrspace(1)* %76, align 8
  %78 = icmp ult i64 1, %77
  br i1 %78, label %81, label %108
79:
  %80 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !11
  store i8 addrspace(1)* %80, i8 addrspace(1)** %39
  br label %61
81:
  %82 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 0
  %83 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %82, align 8
  %84 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %83, i64 0, i32 1
  %85 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %84, align 8
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %87 = call i8 addrspace(1)* %85(i8 addrspace(1)* %86, i64 1)
  %88 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %87)
  store i64 %88, i64* %3
  %89 = load i64, i64* %3
  %90 = and i64 63, 4
  %91 = ashr i64 %89, %90
  store i64 %91, i64* %4
  %92 = load i64, i64* %2
  %93 = load i64, i64* %4
  %94 = and i64 63, %93
  %95 = ashr i64 %92, %94
  store i64 %95, i64* %5
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %97 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %96, i64 72057594037927928)
  %98 = bitcast i8 addrspace(1)* %97 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %99 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 0
  %100 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %99, align 8
  %101 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %100, i64 0, i32 2
  %102 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %101, align 8
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %104 = load i64, i64* %5
  %105 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %104)
  %106 = call i64 %102(i8 addrspace(1)* %103, i64 1, i8 addrspace(1)* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %110, label %117
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !11
  store i8 addrspace(1)* %109, i8 addrspace(1)** %39
  br label %61
110:
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %112 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %111, i64 72057594037927928)
  %113 = bitcast i8 addrspace(1)* %112 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %114 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %113, i64 0, i32 1
  %115 = load i64, i64 addrspace(1)* %114, align 8
  %116 = icmp ult i64 1, %115
  br i1 %116, label %120, label %136
117:
  %118 = or i64 %106, 1280
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 %118), !dbg !11
  store i8 addrspace(1)* %119, i8 addrspace(1)** %39
  br label %61
120:
  %121 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %113, i64 0, i32 0
  %122 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %121, align 8
  %123 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %122, i64 0, i32 1
  %124 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %123, align 8
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %126 = call i8 addrspace(1)* %124(i8 addrspace(1)* %125, i64 1)
  %127 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %126)
  store i64 %127, i64* %6
  %128 = load i64, i64* %6, !dbg !12
  %129 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %128), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %129), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %131 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %130, i64 72057594037927928)
  %132 = bitcast i8 addrspace(1)* %131 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %133 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %132, i64 0, i32 1
  %134 = load i64, i64 addrspace(1)* %133, align 8
  %135 = icmp ult i64 1, %134
  br i1 %135, label %138, label %149
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !11
  store i8 addrspace(1)* %137, i8 addrspace(1)** %39
  br label %61
138:
  %139 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %132, i64 0, i32 0
  %140 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %139, align 8
  %141 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %140, i64 0, i32 1
  %142 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %141, align 8
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %144 = call i8 addrspace(1)* %142(i8 addrspace(1)* %143, i64 1)
  %145 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %144)
  store i64 %145, i64* %8
  %146 = load i64, i64* %8
  %147 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %146, i64 99)
  %148 = extractvalue {i64, i1} %147, 1
  br i1 %148, label %165, label %151
149:
  %150 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !11
  store i8 addrspace(1)* %150, i8 addrspace(1)** %39
  br label %61
151:
  %152 = extractvalue {i64, i1} %147, 0
  store i64 %152, i64* %9
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %154 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %153, i64 72057594037927928)
  %155 = bitcast i8 addrspace(1)* %154 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %156 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %155, i64 0, i32 0
  %157 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %156, align 8
  %158 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %157, i64 0, i32 2
  %159 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %158, align 8
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %161 = load i64, i64* %9
  %162 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %161)
  %163 = call i64 %159(i8 addrspace(1)* %160, i64 1, i8 addrspace(1)* %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %167, label %174
165:
  %166 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !11
  store i8 addrspace(1)* %166, i8 addrspace(1)** %39
  br label %61
167:
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %169 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %168, i64 72057594037927928)
  %170 = bitcast i8 addrspace(1)* %169 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %171 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %170, i64 0, i32 1
  %172 = load i64, i64 addrspace(1)* %171, align 8
  %173 = icmp ult i64 1, %172
  br i1 %173, label %177, label %193
174:
  %175 = or i64 %163, 1792
  %176 = call i8 addrspace(1)* @_bal_panic_construct(i64 %175), !dbg !11
  store i8 addrspace(1)* %176, i8 addrspace(1)** %39
  br label %61
177:
  %178 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %170, i64 0, i32 0
  %179 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %178, align 8
  %180 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %179, i64 0, i32 1
  %181 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %180, align 8
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %183 = call i8 addrspace(1)* %181(i8 addrspace(1)* %182, i64 1)
  %184 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %183)
  store i64 %184, i64* %10
  %185 = load i64, i64* %10, !dbg !13
  %186 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %185), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %186), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !13
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %188 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %187, i64 72057594037927928)
  %189 = bitcast i8 addrspace(1)* %188 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %190 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 1
  %191 = load i64, i64 addrspace(1)* %190, align 8
  %192 = icmp ult i64 1, %191
  br i1 %192, label %195, label %209
193:
  %194 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !11
  store i8 addrspace(1)* %194, i8 addrspace(1)** %39
  br label %61
195:
  %196 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 0
  %197 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %196, align 8
  %198 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %197, i64 0, i32 1
  %199 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %198, align 8
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %201 = call i8 addrspace(1)* %199(i8 addrspace(1)* %200, i64 1)
  %202 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %201)
  store i64 %202, i64* %12
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %204 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %203, i64 72057594037927928)
  %205 = bitcast i8 addrspace(1)* %204 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %206 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 1
  %207 = load i64, i64 addrspace(1)* %206, align 8
  %208 = icmp ult i64 1, %207
  br i1 %208, label %211, label %225
209:
  %210 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %210, i8 addrspace(1)** %39
  br label %61
211:
  %212 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 0
  %213 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %212, align 8
  %214 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %213, i64 0, i32 1
  %215 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %214, align 8
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %217 = call i8 addrspace(1)* %215(i8 addrspace(1)* %216, i64 1)
  %218 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %217)
  store i64 %218, i64* %13
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %220 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %219, i64 72057594037927928)
  %221 = bitcast i8 addrspace(1)* %220 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %222 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %221, i64 0, i32 1
  %223 = load i64, i64 addrspace(1)* %222, align 8
  %224 = icmp ult i64 1, %223
  br i1 %224, label %227, label %239
225:
  %226 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %226, i8 addrspace(1)** %39
  br label %61
227:
  %228 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %221, i64 0, i32 0
  %229 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %228, align 8
  %230 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %229, i64 0, i32 1
  %231 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %230, align 8
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %233 = call i8 addrspace(1)* %231(i8 addrspace(1)* %232, i64 1)
  %234 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %233)
  store i64 %234, i64* %14
  %235 = load i64, i64* %13
  %236 = load i64, i64* %14
  %237 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %235, i64 %236)
  %238 = extractvalue {i64, i1} %237, 1
  br i1 %238, label %247, label %241
239:
  %240 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %240, i8 addrspace(1)** %39
  br label %61
241:
  %242 = extractvalue {i64, i1} %237, 0
  store i64 %242, i64* %15
  %243 = load i64, i64* %12
  %244 = load i64, i64* %15
  %245 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %243, i64 %244)
  %246 = extractvalue {i64, i1} %245, 1
  br i1 %246, label %263, label %249
247:
  %248 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !11
  store i8 addrspace(1)* %248, i8 addrspace(1)** %39
  br label %61
249:
  %250 = extractvalue {i64, i1} %245, 0
  store i64 %250, i64* %16
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %252 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %251, i64 72057594037927928)
  %253 = bitcast i8 addrspace(1)* %252 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %254 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %253, i64 0, i32 0
  %255 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %254, align 8
  %256 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %255, i64 0, i32 2
  %257 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %256, align 8
  %258 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %259 = load i64, i64* %16
  %260 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %259)
  %261 = call i64 %257(i8 addrspace(1)* %258, i64 1, i8 addrspace(1)* %260)
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %265, label %272
263:
  %264 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !11
  store i8 addrspace(1)* %264, i8 addrspace(1)** %39
  br label %61
265:
  %266 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %267 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %266, i64 72057594037927928)
  %268 = bitcast i8 addrspace(1)* %267 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %269 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %268, i64 0, i32 1
  %270 = load i64, i64 addrspace(1)* %269, align 8
  %271 = icmp ult i64 1, %270
  br i1 %271, label %275, label %299
272:
  %273 = or i64 %261, 2304
  %274 = call i8 addrspace(1)* @_bal_panic_construct(i64 %273), !dbg !11
  store i8 addrspace(1)* %274, i8 addrspace(1)** %39
  br label %61
275:
  %276 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %268, i64 0, i32 0
  %277 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %276, align 8
  %278 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %277, i64 0, i32 1
  %279 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %278, align 8
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %281 = call i8 addrspace(1)* %279(i8 addrspace(1)* %280, i64 1)
  %282 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %281)
  store i64 %282, i64* %17
  %283 = load i64, i64* %17, !dbg !14
  %284 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %283), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %284), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !14
  %285 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 1)
  %286 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %285, i64 0, i32 3
  %287 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %286, align 8
  %288 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %287, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)* addrspace(1)* %288
  %289 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %285, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %289
  %290 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %285 to i8 addrspace(1)*
  %291 = getelementptr i8, i8 addrspace(1)* %290, i64 1297036692682702852
  store i8 addrspace(1)* %291, i8 addrspace(1)** %19
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  store i8 addrspace(1)* %292, i8 addrspace(1)** %s
  %293 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %294 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %293, i64 72057594037927928)
  %295 = bitcast i8 addrspace(1)* %294 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %296 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %295, i64 0, i32 1
  %297 = load i64, i64 addrspace(1)* %296, align 8
  %298 = icmp ult i64 0, %297
  br i1 %298, label %301, label %321
299:
  %300 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !11
  store i8 addrspace(1)* %300, i8 addrspace(1)** %39
  br label %61
301:
  %302 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %295, i64 0, i32 0
  %303 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %302, align 8
  %304 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %303, i64 0, i32 1
  %305 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %304, align 8
  %306 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %307 = call i8 addrspace(1)* %305(i8 addrspace(1)* %306, i64 0)
  store i8 addrspace(1)* %307, i8 addrspace(1)** %20
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %309 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %308, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098305485593343776))
  store i8 addrspace(1)* %309, i8 addrspace(1)** %21
  %310 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %311 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %310, i64 72057594037927928)
  %312 = bitcast i8 addrspace(1)* %311 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %313 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %312, i64 0, i32 0
  %314 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %313, align 8
  %315 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %314, i64 0, i32 2
  %316 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %315, align 8
  %317 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %318 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %319 = call i64 %316(i8 addrspace(1)* %317, i64 0, i8 addrspace(1)* %318)
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %323, label %330
321:
  %322 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !11
  store i8 addrspace(1)* %322, i8 addrspace(1)** %39
  br label %61
323:
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %325 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %324, i64 72057594037927928)
  %326 = bitcast i8 addrspace(1)* %325 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %327 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %326, i64 0, i32 1
  %328 = load i64, i64 addrspace(1)* %327, align 8
  %329 = icmp ult i64 0, %328
  br i1 %329, label %333, label %352
330:
  %331 = or i64 %319, 3072
  %332 = call i8 addrspace(1)* @_bal_panic_construct(i64 %331), !dbg !11
  store i8 addrspace(1)* %332, i8 addrspace(1)** %39
  br label %61
333:
  %334 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %326, i64 0, i32 0
  %335 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %334, align 8
  %336 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %335, i64 0, i32 1
  %337 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %336, align 8
  %338 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %339 = call i8 addrspace(1)* %337(i8 addrspace(1)* %338, i64 0)
  store i8 addrspace(1)* %339, i8 addrspace(1)** %22
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %340), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !15
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %342 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %341, i64 72057594037927928)
  %343 = bitcast i8 addrspace(1)* %342 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %344 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %343, i64 0, i32 0
  %345 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %344, align 8
  %346 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %345, i64 0, i32 2
  %347 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %346, align 8
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %349 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %350 = call i64 %347(i8 addrspace(1)* %348, i64 1, i8 addrspace(1)* %349)
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %354, label %363
352:
  %353 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !11
  store i8 addrspace(1)* %353, i8 addrspace(1)** %39
  br label %61
354:
  %355 = call i64 @_B_func1(), !dbg !16
  store i64 %355, i64* %24, !dbg !16
  %356 = load i64, i64* %24
  %357 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %358 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %357, i64 72057594037927928)
  %359 = bitcast i8 addrspace(1)* %358 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %360 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %359, i64 0, i32 1
  %361 = load i64, i64 addrspace(1)* %360, align 8
  %362 = icmp ult i64 %356, %361
  br i1 %362, label %366, label %378
363:
  %364 = or i64 %350, 3584
  %365 = call i8 addrspace(1)* @_bal_panic_construct(i64 %364), !dbg !11
  store i8 addrspace(1)* %365, i8 addrspace(1)** %39
  br label %61
366:
  %367 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %359, i64 0, i32 0
  %368 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %367, align 8
  %369 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %368, i64 0, i32 1
  %370 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %369, align 8
  %371 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %372 = load i64, i64* %24
  %373 = call i8 addrspace(1)* %370(i8 addrspace(1)* %371, i64 %372)
  %374 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %373)
  store i64 %374, i64* %25
  %375 = load i64, i64* %25
  %376 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %375, i64 3)
  %377 = extractvalue {i64, i1} %376, 1
  br i1 %377, label %395, label %380
378:
  %379 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !11
  store i8 addrspace(1)* %379, i8 addrspace(1)** %39
  br label %61
380:
  %381 = extractvalue {i64, i1} %376, 0
  store i64 %381, i64* %26
  %382 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %383 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %382, i64 72057594037927928)
  %384 = bitcast i8 addrspace(1)* %383 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %385 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %384, i64 0, i32 0
  %386 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %385, align 8
  %387 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %386, i64 0, i32 2
  %388 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %387, align 8
  %389 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %390 = load i64, i64* %24
  %391 = load i64, i64* %26
  %392 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %391)
  %393 = call i64 %388(i8 addrspace(1)* %389, i64 %390, i8 addrspace(1)* %392)
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %397, label %404
395:
  %396 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !11
  store i8 addrspace(1)* %396, i8 addrspace(1)** %39
  br label %61
397:
  %398 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %399 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %398, i64 72057594037927928)
  %400 = bitcast i8 addrspace(1)* %399 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %401 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %400, i64 0, i32 1
  %402 = load i64, i64 addrspace(1)* %401, align 8
  %403 = icmp ult i64 1, %402
  br i1 %403, label %407, label %423
404:
  %405 = or i64 %393, 3840
  %406 = call i8 addrspace(1)* @_bal_panic_construct(i64 %405), !dbg !11
  store i8 addrspace(1)* %406, i8 addrspace(1)** %39
  br label %61
407:
  %408 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %400, i64 0, i32 0
  %409 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %408, align 8
  %410 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %409, i64 0, i32 1
  %411 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %410, align 8
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %413 = call i8 addrspace(1)* %411(i8 addrspace(1)* %412, i64 1)
  %414 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %413)
  store i64 %414, i64* %27
  %415 = load i64, i64* %27, !dbg !17
  %416 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %415), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %416), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !17
  %417 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %418 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %417, i64 72057594037927928)
  %419 = bitcast i8 addrspace(1)* %418 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %420 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %419, i64 0, i32 1
  %421 = load i64, i64 addrspace(1)* %420, align 8
  %422 = icmp ult i64 1, %421
  br i1 %422, label %425, label %436
423:
  %424 = call i8 addrspace(1)* @_bal_panic_construct(i64 4101), !dbg !11
  store i8 addrspace(1)* %424, i8 addrspace(1)** %39
  br label %61
425:
  %426 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %419, i64 0, i32 0
  %427 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %426, align 8
  %428 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %427, i64 0, i32 1
  %429 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %428, align 8
  %430 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %431 = call i8 addrspace(1)* %429(i8 addrspace(1)* %430, i64 1)
  %432 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %431)
  store i64 %432, i64* %29
  %433 = load i64, i64* %29
  %434 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %433, i64 2)
  %435 = extractvalue {i64, i1} %434, 1
  br i1 %435, label %452, label %438
436:
  %437 = call i8 addrspace(1)* @_bal_panic_construct(i64 4357), !dbg !11
  store i8 addrspace(1)* %437, i8 addrspace(1)** %39
  br label %61
438:
  %439 = extractvalue {i64, i1} %434, 0
  store i64 %439, i64* %30
  %440 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %441 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %440, i64 72057594037927928)
  %442 = bitcast i8 addrspace(1)* %441 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %443 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %442, i64 0, i32 0
  %444 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %443, align 8
  %445 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %444, i64 0, i32 2
  %446 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %445, align 8
  %447 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %448 = load i64, i64* %30
  %449 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %448)
  %450 = call i64 %446(i8 addrspace(1)* %447, i64 1, i8 addrspace(1)* %449)
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %454, label %461
452:
  %453 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !11
  store i8 addrspace(1)* %453, i8 addrspace(1)** %39
  br label %61
454:
  %455 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %456 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %455, i64 72057594037927928)
  %457 = bitcast i8 addrspace(1)* %456 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %458 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %457, i64 0, i32 1
  %459 = load i64, i64 addrspace(1)* %458, align 8
  %460 = icmp ult i64 1, %459
  br i1 %460, label %464, label %482
461:
  %462 = or i64 %450, 4352
  %463 = call i8 addrspace(1)* @_bal_panic_construct(i64 %462), !dbg !11
  store i8 addrspace(1)* %463, i8 addrspace(1)** %39
  br label %61
464:
  %465 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %457, i64 0, i32 0
  %466 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %465, align 8
  %467 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %466, i64 0, i32 1
  %468 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %467, align 8
  %469 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %470 = call i8 addrspace(1)* %468(i8 addrspace(1)* %469, i64 1)
  %471 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %470)
  store i64 %471, i64* %31
  %472 = load i64, i64* %31, !dbg !18
  %473 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %472), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %473), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !18
  %474 = call i64 @_B_func1(), !dbg !19
  store i64 %474, i64* %33, !dbg !19
  %475 = load i64, i64* %33
  %476 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %477 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %476, i64 72057594037927928)
  %478 = bitcast i8 addrspace(1)* %477 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %479 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %478, i64 0, i32 1
  %480 = load i64, i64 addrspace(1)* %479, align 8
  %481 = icmp ult i64 %475, %480
  br i1 %481, label %484, label %498
482:
  %483 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !11
  store i8 addrspace(1)* %483, i8 addrspace(1)** %39
  br label %61
484:
  %485 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %478, i64 0, i32 0
  %486 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %485, align 8
  %487 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %486, i64 0, i32 1
  %488 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %487, align 8
  %489 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %490 = load i64, i64* %33
  %491 = call i8 addrspace(1)* %488(i8 addrspace(1)* %489, i64 %490)
  %492 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %491)
  store i64 %492, i64* %34
  %493 = call i64 @_B_func2(), !dbg !20
  store i64 %493, i64* %35, !dbg !20
  %494 = load i64, i64* %34
  %495 = load i64, i64* %35
  %496 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %494, i64 %495)
  %497 = extractvalue {i64, i1} %496, 1
  br i1 %497, label %515, label %500
498:
  %499 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869), !dbg !11
  store i8 addrspace(1)* %499, i8 addrspace(1)** %39
  br label %61
500:
  %501 = extractvalue {i64, i1} %496, 0
  store i64 %501, i64* %36
  %502 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %503 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %502, i64 72057594037927928)
  %504 = bitcast i8 addrspace(1)* %503 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %505 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %504, i64 0, i32 0
  %506 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %505, align 8
  %507 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %506, i64 0, i32 2
  %508 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %507, align 8
  %509 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %510 = load i64, i64* %33
  %511 = load i64, i64* %36
  %512 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %511)
  %513 = call i64 %508(i8 addrspace(1)* %509, i64 %510, i8 addrspace(1)* %512)
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %517, label %524
515:
  %516 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !11
  store i8 addrspace(1)* %516, i8 addrspace(1)** %39
  br label %61
517:
  %518 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %519 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %518, i64 72057594037927928)
  %520 = bitcast i8 addrspace(1)* %519 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %521 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %520, i64 0, i32 1
  %522 = load i64, i64 addrspace(1)* %521, align 8
  %523 = icmp ult i64 1, %522
  br i1 %523, label %527, label %537
524:
  %525 = or i64 %513, 4864
  %526 = call i8 addrspace(1)* @_bal_panic_construct(i64 %525), !dbg !11
  store i8 addrspace(1)* %526, i8 addrspace(1)** %39
  br label %61
527:
  %528 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %520, i64 0, i32 0
  %529 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %528, align 8
  %530 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %529, i64 0, i32 1
  %531 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %530, align 8
  %532 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %533 = call i8 addrspace(1)* %531(i8 addrspace(1)* %532, i64 1)
  %534 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %533)
  store i64 %534, i64* %37
  %535 = load i64, i64* %37, !dbg !21
  %536 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %535), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %536), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !21
  ret void
537:
  %538 = call i8 addrspace(1)* @_bal_panic_construct(i64 5381), !dbg !11
  store i8 addrspace(1)* %538, i8 addrspace(1)** %39
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
