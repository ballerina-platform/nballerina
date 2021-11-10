@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i64
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i8
  %44 = load i8*, i8** @_bal_stack_guard
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %64, label %46
46:
  %47 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %48 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 3
  %49 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %48, align 8
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  %51 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %50, i8 addrspace(1)* addrspace(1)* %51
  %52 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %52
  %53 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47 to i8 addrspace(1)*
  %54 = getelementptr i8, i8 addrspace(1)* %53, i64 1297036692682702852
  store i8 addrspace(1)* %54, i8 addrspace(1)** %1
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %55, i8 addrspace(1)** %x
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %57 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %56, i64 72057594037927928)
  %58 = bitcast i8 addrspace(1)* %57 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %59 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 1
  %60 = load i64, i64 addrspace(1)* %59, align 8
  %61 = icmp ult i64 0, %60
  br i1 %61, label %66, label %77
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  call void @_bal_panic(i8 addrspace(1)* %63)
  unreachable
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %65)
  unreachable
66:
  %67 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 0
  %68 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %67, align 8
  %69 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %68, i64 0, i32 1
  %70 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %69, align 8
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %72 = call i8 addrspace(1)* %70(i8 addrspace(1)* %71, i64 0)
  %73 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %72)
  store i64 %73, i64* %2
  %74 = load i64, i64* %2
  %75 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %74, i64 3)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %93, label %79
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %42
  br label %62
79:
  %80 = extractvalue {i64, i1} %75, 0
  store i64 %80, i64* %3
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %82 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %81, i64 72057594037927928)
  %83 = bitcast i8 addrspace(1)* %82 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %84 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 0
  %85 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %84, align 8
  %86 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %85, i64 0, i32 2
  %87 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %86, align 8
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %89 = load i64, i64* %3
  %90 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %89)
  %91 = call i64 %87(i8 addrspace(1)* %88, i64 0, i8 addrspace(1)* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %95, label %102
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !7
  store i8 addrspace(1)* %94, i8 addrspace(1)** %42
  br label %62
95:
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %97 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %96, i64 72057594037927928)
  %98 = bitcast i8 addrspace(1)* %97 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %99 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 1
  %100 = load i64, i64 addrspace(1)* %99, align 8
  %101 = icmp ult i64 0, %100
  br i1 %101, label %105, label %121
102:
  %103 = or i64 %91, 1280
  %104 = call i8 addrspace(1)* @_bal_panic_construct(i64 %103), !dbg !7
  store i8 addrspace(1)* %104, i8 addrspace(1)** %42
  br label %62
105:
  %106 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 0
  %107 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %106, align 8
  %108 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %107, i64 0, i32 1
  %109 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %108, align 8
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %111 = call i8 addrspace(1)* %109(i8 addrspace(1)* %110, i64 0)
  %112 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %111)
  store i64 %112, i64* %4
  %113 = load i64, i64* %4, !dbg !8
  %114 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %113), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %114), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %116 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %115, i64 72057594037927928)
  %117 = bitcast i8 addrspace(1)* %116 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %118 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %117, i64 0, i32 1
  %119 = load i64, i64 addrspace(1)* %118, align 8
  %120 = icmp ult i64 0, %119
  br i1 %120, label %123, label %134
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %122, i8 addrspace(1)** %42
  br label %62
123:
  %124 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %117, i64 0, i32 0
  %125 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %124, align 8
  %126 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %125, i64 0, i32 1
  %127 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %126, align 8
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %129 = call i8 addrspace(1)* %127(i8 addrspace(1)* %128, i64 0)
  %130 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %129)
  store i64 %130, i64* %6
  %131 = load i64, i64* %6
  %132 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %131, i64 2)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %150, label %136
134:
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %135, i8 addrspace(1)** %42
  br label %62
136:
  %137 = extractvalue {i64, i1} %132, 0
  store i64 %137, i64* %7
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %139 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %138, i64 72057594037927928)
  %140 = bitcast i8 addrspace(1)* %139 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %141 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 0
  %142 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %141, align 8
  %143 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %142, i64 0, i32 2
  %144 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %143, align 8
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %146 = load i64, i64* %7
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %146)
  %148 = call i64 %144(i8 addrspace(1)* %145, i64 0, i8 addrspace(1)* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %152, label %159
150:
  %151 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %151, i8 addrspace(1)** %42
  br label %62
152:
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %154 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %153, i64 72057594037927928)
  %155 = bitcast i8 addrspace(1)* %154 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %156 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %155, i64 0, i32 1
  %157 = load i64, i64 addrspace(1)* %156, align 8
  %158 = icmp ult i64 0, %157
  br i1 %158, label %162, label %178
159:
  %160 = or i64 %148, 1792
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 %160), !dbg !7
  store i8 addrspace(1)* %161, i8 addrspace(1)** %42
  br label %62
162:
  %163 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %155, i64 0, i32 0
  %164 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %163, align 8
  %165 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %164, i64 0, i32 1
  %166 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %165, align 8
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %168 = call i8 addrspace(1)* %166(i8 addrspace(1)* %167, i64 0)
  %169 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %168)
  store i64 %169, i64* %8
  %170 = load i64, i64* %8, !dbg !9
  %171 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %170), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %171), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %173 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %172, i64 72057594037927928)
  %174 = bitcast i8 addrspace(1)* %173 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %175 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %174, i64 0, i32 1
  %176 = load i64, i64 addrspace(1)* %175, align 8
  %177 = icmp ult i64 0, %176
  br i1 %177, label %180, label %191
178:
  %179 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %179, i8 addrspace(1)** %42
  br label %62
180:
  %181 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %174, i64 0, i32 0
  %182 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %181, align 8
  %183 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %182, i64 0, i32 1
  %184 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %183, align 8
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %186 = call i8 addrspace(1)* %184(i8 addrspace(1)* %185, i64 0)
  %187 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %186)
  store i64 %187, i64* %10
  %188 = load i64, i64* %10
  %189 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %188, i64 4)
  %190 = extractvalue {i64, i1} %189, 1
  br i1 %190, label %207, label %193
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !7
  store i8 addrspace(1)* %192, i8 addrspace(1)** %42
  br label %62
193:
  %194 = extractvalue {i64, i1} %189, 0
  store i64 %194, i64* %11
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %196 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %195, i64 72057594037927928)
  %197 = bitcast i8 addrspace(1)* %196 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %198 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %197, i64 0, i32 0
  %199 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %198, align 8
  %200 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %199, i64 0, i32 2
  %201 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %200, align 8
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %203 = load i64, i64* %11
  %204 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %203)
  %205 = call i64 %201(i8 addrspace(1)* %202, i64 0, i8 addrspace(1)* %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %209, label %216
207:
  %208 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %208, i8 addrspace(1)** %42
  br label %62
209:
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %211 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %210, i64 72057594037927928)
  %212 = bitcast i8 addrspace(1)* %211 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %213 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %212, i64 0, i32 1
  %214 = load i64, i64 addrspace(1)* %213, align 8
  %215 = icmp ult i64 0, %214
  br i1 %215, label %219, label %235
216:
  %217 = or i64 %205, 2304
  %218 = call i8 addrspace(1)* @_bal_panic_construct(i64 %217), !dbg !7
  store i8 addrspace(1)* %218, i8 addrspace(1)** %42
  br label %62
219:
  %220 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %212, i64 0, i32 0
  %221 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %220, align 8
  %222 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %221, i64 0, i32 1
  %223 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %222, align 8
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %225 = call i8 addrspace(1)* %223(i8 addrspace(1)* %224, i64 0)
  %226 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %225)
  store i64 %226, i64* %12
  %227 = load i64, i64* %12, !dbg !10
  %228 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %227), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %228), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !10
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %230 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %229, i64 72057594037927928)
  %231 = bitcast i8 addrspace(1)* %230 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %232 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %231, i64 0, i32 1
  %233 = load i64, i64 addrspace(1)* %232, align 8
  %234 = icmp ult i64 0, %233
  br i1 %234, label %237, label %247
235:
  %236 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !7
  store i8 addrspace(1)* %236, i8 addrspace(1)** %42
  br label %62
237:
  %238 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %231, i64 0, i32 0
  %239 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %238, align 8
  %240 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %239, i64 0, i32 1
  %241 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %240, align 8
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %243 = call i8 addrspace(1)* %241(i8 addrspace(1)* %242, i64 0)
  %244 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %243)
  store i64 %244, i64* %14
  %245 = load i64, i64* %14
  %246 = icmp eq i64 2, 0
  br i1 %246, label %249, label %251
247:
  %248 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821), !dbg !7
  store i8 addrspace(1)* %248, i8 addrspace(1)** %42
  br label %62
249:
  %250 = call i8 addrspace(1)* @_bal_panic_construct(i64 2818), !dbg !7
  store i8 addrspace(1)* %250, i8 addrspace(1)** %42
  br label %62
251:
  %252 = icmp eq i64 %245, -9223372036854775808
  %253 = icmp eq i64 2, -1
  %254 = and i1 %252, %253
  br i1 %254, label %269, label %255
255:
  %256 = sdiv i64 %245, 2
  store i64 %256, i64* %15
  %257 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %258 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %257, i64 72057594037927928)
  %259 = bitcast i8 addrspace(1)* %258 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %260 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %259, i64 0, i32 0
  %261 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %260, align 8
  %262 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %261, i64 0, i32 2
  %263 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %262, align 8
  %264 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %265 = load i64, i64* %15
  %266 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %265)
  %267 = call i64 %263(i8 addrspace(1)* %264, i64 0, i8 addrspace(1)* %266)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %271, label %278
269:
  %270 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %270, i8 addrspace(1)** %42
  br label %62
271:
  %272 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %273 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %272, i64 72057594037927928)
  %274 = bitcast i8 addrspace(1)* %273 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %275 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %274, i64 0, i32 1
  %276 = load i64, i64 addrspace(1)* %275, align 8
  %277 = icmp ult i64 0, %276
  br i1 %277, label %281, label %297
278:
  %279 = or i64 %267, 2816
  %280 = call i8 addrspace(1)* @_bal_panic_construct(i64 %279), !dbg !7
  store i8 addrspace(1)* %280, i8 addrspace(1)** %42
  br label %62
281:
  %282 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %274, i64 0, i32 0
  %283 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %282, align 8
  %284 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %283, i64 0, i32 1
  %285 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %284, align 8
  %286 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %287 = call i8 addrspace(1)* %285(i8 addrspace(1)* %286, i64 0)
  %288 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %287)
  store i64 %288, i64* %16
  %289 = load i64, i64* %16, !dbg !11
  %290 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %289), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %290), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !11
  %291 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %292 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %291, i64 72057594037927928)
  %293 = bitcast i8 addrspace(1)* %292 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %294 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %293, i64 0, i32 1
  %295 = load i64, i64 addrspace(1)* %294, align 8
  %296 = icmp ult i64 0, %295
  br i1 %296, label %299, label %321
297:
  %298 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !7
  store i8 addrspace(1)* %298, i8 addrspace(1)** %42
  br label %62
299:
  %300 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %293, i64 0, i32 0
  %301 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %300, align 8
  %302 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %301, i64 0, i32 1
  %303 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %302, align 8
  %304 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %305 = call i8 addrspace(1)* %303(i8 addrspace(1)* %304, i64 0)
  %306 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %305)
  store i64 %306, i64* %18
  %307 = load i64, i64* %18
  %308 = and i64 %307, 5
  store i64 %308, i64* %19
  %309 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %310 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %309, i64 72057594037927928)
  %311 = bitcast i8 addrspace(1)* %310 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %312 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %311, i64 0, i32 0
  %313 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %312, align 8
  %314 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %313, i64 0, i32 2
  %315 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %314, align 8
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %317 = load i64, i64* %19
  %318 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %317)
  %319 = call i64 %315(i8 addrspace(1)* %316, i64 0, i8 addrspace(1)* %318)
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %323, label %330
321:
  %322 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !7
  store i8 addrspace(1)* %322, i8 addrspace(1)** %42
  br label %62
323:
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %325 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %324, i64 72057594037927928)
  %326 = bitcast i8 addrspace(1)* %325 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %327 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %326, i64 0, i32 1
  %328 = load i64, i64 addrspace(1)* %327, align 8
  %329 = icmp ult i64 0, %328
  br i1 %329, label %333, label %349
330:
  %331 = or i64 %319, 3328
  %332 = call i8 addrspace(1)* @_bal_panic_construct(i64 %331), !dbg !7
  store i8 addrspace(1)* %332, i8 addrspace(1)** %42
  br label %62
333:
  %334 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %326, i64 0, i32 0
  %335 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %334, align 8
  %336 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %335, i64 0, i32 1
  %337 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %336, align 8
  %338 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %339 = call i8 addrspace(1)* %337(i8 addrspace(1)* %338, i64 0)
  %340 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %339)
  store i64 %340, i64* %20
  %341 = load i64, i64* %20, !dbg !12
  %342 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %341), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %342), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !12
  %343 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %344 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %343, i64 72057594037927928)
  %345 = bitcast i8 addrspace(1)* %344 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %346 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %345, i64 0, i32 1
  %347 = load i64, i64 addrspace(1)* %346, align 8
  %348 = icmp ult i64 0, %347
  br i1 %348, label %351, label %373
349:
  %350 = call i8 addrspace(1)* @_bal_panic_construct(i64 3589), !dbg !7
  store i8 addrspace(1)* %350, i8 addrspace(1)** %42
  br label %62
351:
  %352 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %345, i64 0, i32 0
  %353 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %352, align 8
  %354 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %353, i64 0, i32 1
  %355 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %354, align 8
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %357 = call i8 addrspace(1)* %355(i8 addrspace(1)* %356, i64 0)
  %358 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %357)
  store i64 %358, i64* %22
  %359 = load i64, i64* %22
  %360 = or i64 %359, 9
  store i64 %360, i64* %23
  %361 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %362 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %361, i64 72057594037927928)
  %363 = bitcast i8 addrspace(1)* %362 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %364 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %363, i64 0, i32 0
  %365 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %364, align 8
  %366 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %365, i64 0, i32 2
  %367 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %366, align 8
  %368 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %369 = load i64, i64* %23
  %370 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %369)
  %371 = call i64 %367(i8 addrspace(1)* %368, i64 0, i8 addrspace(1)* %370)
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %375, label %382
373:
  %374 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %374, i8 addrspace(1)** %42
  br label %62
375:
  %376 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %377 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %376, i64 72057594037927928)
  %378 = bitcast i8 addrspace(1)* %377 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %379 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %378, i64 0, i32 1
  %380 = load i64, i64 addrspace(1)* %379, align 8
  %381 = icmp ult i64 0, %380
  br i1 %381, label %385, label %401
382:
  %383 = or i64 %371, 3840
  %384 = call i8 addrspace(1)* @_bal_panic_construct(i64 %383), !dbg !7
  store i8 addrspace(1)* %384, i8 addrspace(1)** %42
  br label %62
385:
  %386 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %378, i64 0, i32 0
  %387 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %386, align 8
  %388 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %387, i64 0, i32 1
  %389 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %388, align 8
  %390 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %391 = call i8 addrspace(1)* %389(i8 addrspace(1)* %390, i64 0)
  %392 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %391)
  store i64 %392, i64* %24
  %393 = load i64, i64* %24, !dbg !13
  %394 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %393), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %394), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !13
  %395 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %396 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %395, i64 72057594037927928)
  %397 = bitcast i8 addrspace(1)* %396 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %398 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %397, i64 0, i32 1
  %399 = load i64, i64 addrspace(1)* %398, align 8
  %400 = icmp ult i64 0, %399
  br i1 %400, label %403, label %425
401:
  %402 = call i8 addrspace(1)* @_bal_panic_construct(i64 4101), !dbg !7
  store i8 addrspace(1)* %402, i8 addrspace(1)** %42
  br label %62
403:
  %404 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %397, i64 0, i32 0
  %405 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %404, align 8
  %406 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %405, i64 0, i32 1
  %407 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %406, align 8
  %408 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %409 = call i8 addrspace(1)* %407(i8 addrspace(1)* %408, i64 0)
  %410 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %409)
  store i64 %410, i64* %26
  %411 = load i64, i64* %26
  %412 = xor i64 %411, 2
  store i64 %412, i64* %27
  %413 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %414 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %413, i64 72057594037927928)
  %415 = bitcast i8 addrspace(1)* %414 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %416 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %415, i64 0, i32 0
  %417 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %416, align 8
  %418 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %417, i64 0, i32 2
  %419 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %418, align 8
  %420 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %421 = load i64, i64* %27
  %422 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %421)
  %423 = call i64 %419(i8 addrspace(1)* %420, i64 0, i8 addrspace(1)* %422)
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %427, label %434
425:
  %426 = call i8 addrspace(1)* @_bal_panic_construct(i64 4357), !dbg !7
  store i8 addrspace(1)* %426, i8 addrspace(1)** %42
  br label %62
427:
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %429 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %428, i64 72057594037927928)
  %430 = bitcast i8 addrspace(1)* %429 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %431 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %430, i64 0, i32 1
  %432 = load i64, i64 addrspace(1)* %431, align 8
  %433 = icmp ult i64 0, %432
  br i1 %433, label %437, label %453
434:
  %435 = or i64 %423, 4352
  %436 = call i8 addrspace(1)* @_bal_panic_construct(i64 %435), !dbg !7
  store i8 addrspace(1)* %436, i8 addrspace(1)** %42
  br label %62
437:
  %438 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %430, i64 0, i32 0
  %439 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %438, align 8
  %440 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %439, i64 0, i32 1
  %441 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %440, align 8
  %442 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %443 = call i8 addrspace(1)* %441(i8 addrspace(1)* %442, i64 0)
  %444 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %443)
  store i64 %444, i64* %28
  %445 = load i64, i64* %28, !dbg !14
  %446 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %445), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %446), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !14
  %447 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %448 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %447, i64 72057594037927928)
  %449 = bitcast i8 addrspace(1)* %448 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %450 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %449, i64 0, i32 1
  %451 = load i64, i64 addrspace(1)* %450, align 8
  %452 = icmp ult i64 0, %451
  br i1 %452, label %455, label %478
453:
  %454 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !7
  store i8 addrspace(1)* %454, i8 addrspace(1)** %42
  br label %62
455:
  %456 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %449, i64 0, i32 0
  %457 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %456, align 8
  %458 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %457, i64 0, i32 1
  %459 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %458, align 8
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %461 = call i8 addrspace(1)* %459(i8 addrspace(1)* %460, i64 0)
  %462 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %461)
  store i64 %462, i64* %30
  %463 = load i64, i64* %30
  %464 = and i64 63, 7
  %465 = shl i64 %463, %464
  store i64 %465, i64* %31
  %466 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %467 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %466, i64 72057594037927928)
  %468 = bitcast i8 addrspace(1)* %467 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %469 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %468, i64 0, i32 0
  %470 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %469, align 8
  %471 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %470, i64 0, i32 2
  %472 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %471, align 8
  %473 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %474 = load i64, i64* %31
  %475 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %474)
  %476 = call i64 %472(i8 addrspace(1)* %473, i64 0, i8 addrspace(1)* %475)
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %480, label %487
478:
  %479 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869), !dbg !7
  store i8 addrspace(1)* %479, i8 addrspace(1)** %42
  br label %62
480:
  %481 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %482 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %481, i64 72057594037927928)
  %483 = bitcast i8 addrspace(1)* %482 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %484 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %483, i64 0, i32 1
  %485 = load i64, i64 addrspace(1)* %484, align 8
  %486 = icmp ult i64 0, %485
  br i1 %486, label %490, label %506
487:
  %488 = or i64 %476, 4864
  %489 = call i8 addrspace(1)* @_bal_panic_construct(i64 %488), !dbg !7
  store i8 addrspace(1)* %489, i8 addrspace(1)** %42
  br label %62
490:
  %491 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %483, i64 0, i32 0
  %492 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %491, align 8
  %493 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %492, i64 0, i32 1
  %494 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %493, align 8
  %495 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %496 = call i8 addrspace(1)* %494(i8 addrspace(1)* %495, i64 0)
  %497 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %496)
  store i64 %497, i64* %32
  %498 = load i64, i64* %32, !dbg !15
  %499 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %498), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %499), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !15
  %500 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %501 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %500, i64 72057594037927928)
  %502 = bitcast i8 addrspace(1)* %501 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %503 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %502, i64 0, i32 1
  %504 = load i64, i64 addrspace(1)* %503, align 8
  %505 = icmp ult i64 0, %504
  br i1 %505, label %508, label %531
506:
  %507 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !7
  store i8 addrspace(1)* %507, i8 addrspace(1)** %42
  br label %62
508:
  %509 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %502, i64 0, i32 0
  %510 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %509, align 8
  %511 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %510, i64 0, i32 1
  %512 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %511, align 8
  %513 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %514 = call i8 addrspace(1)* %512(i8 addrspace(1)* %513, i64 0)
  %515 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %514)
  store i64 %515, i64* %34
  %516 = load i64, i64* %34
  %517 = and i64 63, 6
  %518 = ashr i64 %516, %517
  store i64 %518, i64* %35
  %519 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %520 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %519, i64 72057594037927928)
  %521 = bitcast i8 addrspace(1)* %520 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %522 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %521, i64 0, i32 0
  %523 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %522, align 8
  %524 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %523, i64 0, i32 2
  %525 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %524, align 8
  %526 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %527 = load i64, i64* %35
  %528 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %527)
  %529 = call i64 %525(i8 addrspace(1)* %526, i64 0, i8 addrspace(1)* %528)
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %533, label %540
531:
  %532 = call i8 addrspace(1)* @_bal_panic_construct(i64 5381), !dbg !7
  store i8 addrspace(1)* %532, i8 addrspace(1)** %42
  br label %62
533:
  %534 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %535 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %534, i64 72057594037927928)
  %536 = bitcast i8 addrspace(1)* %535 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %537 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %536, i64 0, i32 1
  %538 = load i64, i64 addrspace(1)* %537, align 8
  %539 = icmp ult i64 0, %538
  br i1 %539, label %543, label %559
540:
  %541 = or i64 %529, 5376
  %542 = call i8 addrspace(1)* @_bal_panic_construct(i64 %541), !dbg !7
  store i8 addrspace(1)* %542, i8 addrspace(1)** %42
  br label %62
543:
  %544 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %536, i64 0, i32 0
  %545 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %544, align 8
  %546 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %545, i64 0, i32 1
  %547 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %546, align 8
  %548 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %549 = call i8 addrspace(1)* %547(i8 addrspace(1)* %548, i64 0)
  %550 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %549)
  store i64 %550, i64* %36
  %551 = load i64, i64* %36, !dbg !16
  %552 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %551), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %552), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !16
  %553 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %554 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %553, i64 72057594037927928)
  %555 = bitcast i8 addrspace(1)* %554 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %556 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %555, i64 0, i32 1
  %557 = load i64, i64 addrspace(1)* %556, align 8
  %558 = icmp ult i64 0, %557
  br i1 %558, label %561, label %584
559:
  %560 = call i8 addrspace(1)* @_bal_panic_construct(i64 5637), !dbg !7
  store i8 addrspace(1)* %560, i8 addrspace(1)** %42
  br label %62
561:
  %562 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %555, i64 0, i32 0
  %563 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %562, align 8
  %564 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %563, i64 0, i32 1
  %565 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %564, align 8
  %566 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %567 = call i8 addrspace(1)* %565(i8 addrspace(1)* %566, i64 0)
  %568 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %567)
  store i64 %568, i64* %38
  %569 = load i64, i64* %38
  %570 = and i64 63, 2
  %571 = lshr i64 %569, %570
  store i64 %571, i64* %39
  %572 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %573 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %572, i64 72057594037927928)
  %574 = bitcast i8 addrspace(1)* %573 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %575 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %574, i64 0, i32 0
  %576 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %575, align 8
  %577 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %576, i64 0, i32 2
  %578 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %577, align 8
  %579 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %580 = load i64, i64* %39
  %581 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %580)
  %582 = call i64 %578(i8 addrspace(1)* %579, i64 0, i8 addrspace(1)* %581)
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %586, label %593
584:
  %585 = call i8 addrspace(1)* @_bal_panic_construct(i64 5893), !dbg !7
  store i8 addrspace(1)* %585, i8 addrspace(1)** %42
  br label %62
586:
  %587 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %588 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %587, i64 72057594037927928)
  %589 = bitcast i8 addrspace(1)* %588 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %590 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %589, i64 0, i32 1
  %591 = load i64, i64 addrspace(1)* %590, align 8
  %592 = icmp ult i64 0, %591
  br i1 %592, label %596, label %606
593:
  %594 = or i64 %582, 5888
  %595 = call i8 addrspace(1)* @_bal_panic_construct(i64 %594), !dbg !7
  store i8 addrspace(1)* %595, i8 addrspace(1)** %42
  br label %62
596:
  %597 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %589, i64 0, i32 0
  %598 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %597, align 8
  %599 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %598, i64 0, i32 1
  %600 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %599, align 8
  %601 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %602 = call i8 addrspace(1)* %600(i8 addrspace(1)* %601, i64 0)
  %603 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %602)
  store i64 %603, i64* %40
  %604 = load i64, i64* %40, !dbg !17
  %605 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %604), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %605), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !17
  ret void
606:
  %607 = call i8 addrspace(1)* @_bal_panic_construct(i64 6149), !dbg !7
  store i8 addrspace(1)* %607, i8 addrspace(1)** %42
  br label %62
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 12, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 16, column: 4, scope: !5)
!14 = !DILocation(line: 18, column: 4, scope: !5)
!15 = !DILocation(line: 20, column: 4, scope: !5)
!16 = !DILocation(line: 22, column: 4, scope: !5)
!17 = !DILocation(line: 24, column: 4, scope: !5)
