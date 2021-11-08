@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
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
  %47 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %48 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 3
  %49 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %48, align 8
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  %51 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %50, i8 addrspace(1)* addrspace(1)* %51
  %52 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %52
  %53 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47 to i8 addrspace(1)*
  %54 = getelementptr i8, i8 addrspace(1)* %53, i64 1297036692682702852
  store i8 addrspace(1)* %54, i8 addrspace(1)** %1
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %55, i8 addrspace(1)** %x
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %57 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %56, i64 72057594037927928)
  %58 = bitcast i8 addrspace(1)* %57 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %59 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 1
  %60 = load i64, i64 addrspace(1)* %59, align 8
  %61 = icmp ult i64 0, %60
  br i1 %61, label %66, label %75
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  call void @_bal_panic(i8 addrspace(1)* %63)
  unreachable
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %65)
  unreachable
66:
  %67 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 3
  %68 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %67, align 8
  %69 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %68, i64 0, i64 0
  %70 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %69, align 8
  %71 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %70)
  store i64 %71, i64* %2
  %72 = load i64, i64* %2
  %73 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %72, i64 3)
  %74 = extractvalue {i64, i1} %73, 1
  br i1 %74, label %84, label %77
75:
  %76 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %76, i8 addrspace(1)** %42
  br label %62
77:
  %78 = extractvalue {i64, i1} %73, 0
  store i64 %78, i64* %3
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %80 = load i64, i64* %3
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80)
  %82 = call i64 @_bal_list_set(i8 addrspace(1)* %79, i64 0, i8 addrspace(1)* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %86, label %93
84:
  %85 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !7
  store i8 addrspace(1)* %85, i8 addrspace(1)** %42
  br label %62
86:
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %88 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %87, i64 72057594037927928)
  %89 = bitcast i8 addrspace(1)* %88 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %90 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %89, i64 0, i32 1
  %91 = load i64, i64 addrspace(1)* %90, align 8
  %92 = icmp ult i64 0, %91
  br i1 %92, label %96, label %110
93:
  %94 = or i64 %82, 1280
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 %94), !dbg !7
  store i8 addrspace(1)* %95, i8 addrspace(1)** %42
  br label %62
96:
  %97 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %89, i64 0, i32 3
  %98 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %97, align 8
  %99 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %98, i64 0, i64 0
  %100 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %99, align 8
  %101 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %100)
  store i64 %101, i64* %4
  %102 = load i64, i64* %4, !dbg !8
  %103 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %102), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %105 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %104, i64 72057594037927928)
  %106 = bitcast i8 addrspace(1)* %105 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %107 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  %108 = load i64, i64 addrspace(1)* %107, align 8
  %109 = icmp ult i64 0, %108
  br i1 %109, label %112, label %121
110:
  %111 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %111, i8 addrspace(1)** %42
  br label %62
112:
  %113 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  %114 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %113, align 8
  %115 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 0
  %116 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %115, align 8
  %117 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %116)
  store i64 %117, i64* %6
  %118 = load i64, i64* %6
  %119 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %118, i64 2)
  %120 = extractvalue {i64, i1} %119, 1
  br i1 %120, label %130, label %123
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %122, i8 addrspace(1)** %42
  br label %62
123:
  %124 = extractvalue {i64, i1} %119, 0
  store i64 %124, i64* %7
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %126 = load i64, i64* %7
  %127 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %126)
  %128 = call i64 @_bal_list_set(i8 addrspace(1)* %125, i64 0, i8 addrspace(1)* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %132, label %139
130:
  %131 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %131, i8 addrspace(1)** %42
  br label %62
132:
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %134 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %133, i64 72057594037927928)
  %135 = bitcast i8 addrspace(1)* %134 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %136 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %135, i64 0, i32 1
  %137 = load i64, i64 addrspace(1)* %136, align 8
  %138 = icmp ult i64 0, %137
  br i1 %138, label %142, label %156
139:
  %140 = or i64 %128, 1792
  %141 = call i8 addrspace(1)* @_bal_panic_construct(i64 %140), !dbg !7
  store i8 addrspace(1)* %141, i8 addrspace(1)** %42
  br label %62
142:
  %143 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %135, i64 0, i32 3
  %144 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %143, align 8
  %145 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 0
  %146 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %145, align 8
  %147 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %146)
  store i64 %147, i64* %8
  %148 = load i64, i64* %8, !dbg !9
  %149 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %148), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %149), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %151 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %150, i64 72057594037927928)
  %152 = bitcast i8 addrspace(1)* %151 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %153 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 1
  %154 = load i64, i64 addrspace(1)* %153, align 8
  %155 = icmp ult i64 0, %154
  br i1 %155, label %158, label %167
156:
  %157 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %157, i8 addrspace(1)** %42
  br label %62
158:
  %159 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 3
  %160 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %159, align 8
  %161 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %160, i64 0, i64 0
  %162 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %161, align 8
  %163 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %162)
  store i64 %163, i64* %10
  %164 = load i64, i64* %10
  %165 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %164, i64 4)
  %166 = extractvalue {i64, i1} %165, 1
  br i1 %166, label %176, label %169
167:
  %168 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !7
  store i8 addrspace(1)* %168, i8 addrspace(1)** %42
  br label %62
169:
  %170 = extractvalue {i64, i1} %165, 0
  store i64 %170, i64* %11
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %172 = load i64, i64* %11
  %173 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %172)
  %174 = call i64 @_bal_list_set(i8 addrspace(1)* %171, i64 0, i8 addrspace(1)* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %178, label %185
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %177, i8 addrspace(1)** %42
  br label %62
178:
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %180 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %179, i64 72057594037927928)
  %181 = bitcast i8 addrspace(1)* %180 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %182 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %181, i64 0, i32 1
  %183 = load i64, i64 addrspace(1)* %182, align 8
  %184 = icmp ult i64 0, %183
  br i1 %184, label %188, label %202
185:
  %186 = or i64 %174, 2304
  %187 = call i8 addrspace(1)* @_bal_panic_construct(i64 %186), !dbg !7
  store i8 addrspace(1)* %187, i8 addrspace(1)** %42
  br label %62
188:
  %189 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %181, i64 0, i32 3
  %190 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %189, align 8
  %191 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %190, i64 0, i64 0
  %192 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %191, align 8
  %193 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %192)
  store i64 %193, i64* %12
  %194 = load i64, i64* %12, !dbg !10
  %195 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %194), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %195), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !10
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %197 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %196, i64 72057594037927928)
  %198 = bitcast i8 addrspace(1)* %197 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %199 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %198, i64 0, i32 1
  %200 = load i64, i64 addrspace(1)* %199, align 8
  %201 = icmp ult i64 0, %200
  br i1 %201, label %204, label %212
202:
  %203 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !7
  store i8 addrspace(1)* %203, i8 addrspace(1)** %42
  br label %62
204:
  %205 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %198, i64 0, i32 3
  %206 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %205, align 8
  %207 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %206, i64 0, i64 0
  %208 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %207, align 8
  %209 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %208)
  store i64 %209, i64* %14
  %210 = load i64, i64* %14
  %211 = icmp eq i64 2, 0
  br i1 %211, label %214, label %216
212:
  %213 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821), !dbg !7
  store i8 addrspace(1)* %213, i8 addrspace(1)** %42
  br label %62
214:
  %215 = call i8 addrspace(1)* @_bal_panic_construct(i64 2818), !dbg !7
  store i8 addrspace(1)* %215, i8 addrspace(1)** %42
  br label %62
216:
  %217 = icmp eq i64 %210, -9223372036854775808
  %218 = icmp eq i64 2, -1
  %219 = and i1 %217, %218
  br i1 %219, label %227, label %220
220:
  %221 = sdiv i64 %210, 2
  store i64 %221, i64* %15
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %223 = load i64, i64* %15
  %224 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %223)
  %225 = call i64 @_bal_list_set(i8 addrspace(1)* %222, i64 0, i8 addrspace(1)* %224)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %229, label %236
227:
  %228 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %228, i8 addrspace(1)** %42
  br label %62
229:
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %231 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %230, i64 72057594037927928)
  %232 = bitcast i8 addrspace(1)* %231 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %233 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %232, i64 0, i32 1
  %234 = load i64, i64 addrspace(1)* %233, align 8
  %235 = icmp ult i64 0, %234
  br i1 %235, label %239, label %253
236:
  %237 = or i64 %225, 2816
  %238 = call i8 addrspace(1)* @_bal_panic_construct(i64 %237), !dbg !7
  store i8 addrspace(1)* %238, i8 addrspace(1)** %42
  br label %62
239:
  %240 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %232, i64 0, i32 3
  %241 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %240, align 8
  %242 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %241, i64 0, i64 0
  %243 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %242, align 8
  %244 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %243)
  store i64 %244, i64* %16
  %245 = load i64, i64* %16, !dbg !11
  %246 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %245), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %246), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !11
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %248 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %247, i64 72057594037927928)
  %249 = bitcast i8 addrspace(1)* %248 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %250 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %249, i64 0, i32 1
  %251 = load i64, i64 addrspace(1)* %250, align 8
  %252 = icmp ult i64 0, %251
  br i1 %252, label %255, label %268
253:
  %254 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !7
  store i8 addrspace(1)* %254, i8 addrspace(1)** %42
  br label %62
255:
  %256 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %249, i64 0, i32 3
  %257 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %256, align 8
  %258 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %257, i64 0, i64 0
  %259 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %258, align 8
  %260 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %259)
  store i64 %260, i64* %18
  %261 = load i64, i64* %18
  %262 = and i64 %261, 5
  store i64 %262, i64* %19
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %264 = load i64, i64* %19
  %265 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %264)
  %266 = call i64 @_bal_list_set(i8 addrspace(1)* %263, i64 0, i8 addrspace(1)* %265)
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %270, label %277
268:
  %269 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !7
  store i8 addrspace(1)* %269, i8 addrspace(1)** %42
  br label %62
270:
  %271 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %272 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %271, i64 72057594037927928)
  %273 = bitcast i8 addrspace(1)* %272 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %274 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %273, i64 0, i32 1
  %275 = load i64, i64 addrspace(1)* %274, align 8
  %276 = icmp ult i64 0, %275
  br i1 %276, label %280, label %294
277:
  %278 = or i64 %266, 3328
  %279 = call i8 addrspace(1)* @_bal_panic_construct(i64 %278), !dbg !7
  store i8 addrspace(1)* %279, i8 addrspace(1)** %42
  br label %62
280:
  %281 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %273, i64 0, i32 3
  %282 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %281, align 8
  %283 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %282, i64 0, i64 0
  %284 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %283, align 8
  %285 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %284)
  store i64 %285, i64* %20
  %286 = load i64, i64* %20, !dbg !12
  %287 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %286), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %287), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !12
  %288 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %289 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %288, i64 72057594037927928)
  %290 = bitcast i8 addrspace(1)* %289 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %291 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %290, i64 0, i32 1
  %292 = load i64, i64 addrspace(1)* %291, align 8
  %293 = icmp ult i64 0, %292
  br i1 %293, label %296, label %309
294:
  %295 = call i8 addrspace(1)* @_bal_panic_construct(i64 3589), !dbg !7
  store i8 addrspace(1)* %295, i8 addrspace(1)** %42
  br label %62
296:
  %297 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %290, i64 0, i32 3
  %298 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %297, align 8
  %299 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %298, i64 0, i64 0
  %300 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %299, align 8
  %301 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %300)
  store i64 %301, i64* %22
  %302 = load i64, i64* %22
  %303 = or i64 %302, 9
  store i64 %303, i64* %23
  %304 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %305 = load i64, i64* %23
  %306 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %305)
  %307 = call i64 @_bal_list_set(i8 addrspace(1)* %304, i64 0, i8 addrspace(1)* %306)
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %311, label %318
309:
  %310 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %310, i8 addrspace(1)** %42
  br label %62
311:
  %312 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %313 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %312, i64 72057594037927928)
  %314 = bitcast i8 addrspace(1)* %313 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %315 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %314, i64 0, i32 1
  %316 = load i64, i64 addrspace(1)* %315, align 8
  %317 = icmp ult i64 0, %316
  br i1 %317, label %321, label %335
318:
  %319 = or i64 %307, 3840
  %320 = call i8 addrspace(1)* @_bal_panic_construct(i64 %319), !dbg !7
  store i8 addrspace(1)* %320, i8 addrspace(1)** %42
  br label %62
321:
  %322 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %314, i64 0, i32 3
  %323 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %322, align 8
  %324 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %323, i64 0, i64 0
  %325 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %324, align 8
  %326 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %325)
  store i64 %326, i64* %24
  %327 = load i64, i64* %24, !dbg !13
  %328 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %327), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %328), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !13
  %329 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %330 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %329, i64 72057594037927928)
  %331 = bitcast i8 addrspace(1)* %330 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %332 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %331, i64 0, i32 1
  %333 = load i64, i64 addrspace(1)* %332, align 8
  %334 = icmp ult i64 0, %333
  br i1 %334, label %337, label %350
335:
  %336 = call i8 addrspace(1)* @_bal_panic_construct(i64 4101), !dbg !7
  store i8 addrspace(1)* %336, i8 addrspace(1)** %42
  br label %62
337:
  %338 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %331, i64 0, i32 3
  %339 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %338, align 8
  %340 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %339, i64 0, i64 0
  %341 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %340, align 8
  %342 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %341)
  store i64 %342, i64* %26
  %343 = load i64, i64* %26
  %344 = xor i64 %343, 2
  store i64 %344, i64* %27
  %345 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %346 = load i64, i64* %27
  %347 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %346)
  %348 = call i64 @_bal_list_set(i8 addrspace(1)* %345, i64 0, i8 addrspace(1)* %347)
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %352, label %359
350:
  %351 = call i8 addrspace(1)* @_bal_panic_construct(i64 4357), !dbg !7
  store i8 addrspace(1)* %351, i8 addrspace(1)** %42
  br label %62
352:
  %353 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %354 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %353, i64 72057594037927928)
  %355 = bitcast i8 addrspace(1)* %354 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %356 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %355, i64 0, i32 1
  %357 = load i64, i64 addrspace(1)* %356, align 8
  %358 = icmp ult i64 0, %357
  br i1 %358, label %362, label %376
359:
  %360 = or i64 %348, 4352
  %361 = call i8 addrspace(1)* @_bal_panic_construct(i64 %360), !dbg !7
  store i8 addrspace(1)* %361, i8 addrspace(1)** %42
  br label %62
362:
  %363 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %355, i64 0, i32 3
  %364 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %363, align 8
  %365 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %364, i64 0, i64 0
  %366 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %365, align 8
  %367 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %366)
  store i64 %367, i64* %28
  %368 = load i64, i64* %28, !dbg !14
  %369 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %368), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %369), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !14
  %370 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %371 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %370, i64 72057594037927928)
  %372 = bitcast i8 addrspace(1)* %371 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %373 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %372, i64 0, i32 1
  %374 = load i64, i64 addrspace(1)* %373, align 8
  %375 = icmp ult i64 0, %374
  br i1 %375, label %378, label %392
376:
  %377 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !7
  store i8 addrspace(1)* %377, i8 addrspace(1)** %42
  br label %62
378:
  %379 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %372, i64 0, i32 3
  %380 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %379, align 8
  %381 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %380, i64 0, i64 0
  %382 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %381, align 8
  %383 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %382)
  store i64 %383, i64* %30
  %384 = load i64, i64* %30
  %385 = and i64 63, 7
  %386 = shl i64 %384, %385
  store i64 %386, i64* %31
  %387 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %388 = load i64, i64* %31
  %389 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %388)
  %390 = call i64 @_bal_list_set(i8 addrspace(1)* %387, i64 0, i8 addrspace(1)* %389)
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %394, label %401
392:
  %393 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869), !dbg !7
  store i8 addrspace(1)* %393, i8 addrspace(1)** %42
  br label %62
394:
  %395 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %396 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %395, i64 72057594037927928)
  %397 = bitcast i8 addrspace(1)* %396 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %398 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %397, i64 0, i32 1
  %399 = load i64, i64 addrspace(1)* %398, align 8
  %400 = icmp ult i64 0, %399
  br i1 %400, label %404, label %418
401:
  %402 = or i64 %390, 4864
  %403 = call i8 addrspace(1)* @_bal_panic_construct(i64 %402), !dbg !7
  store i8 addrspace(1)* %403, i8 addrspace(1)** %42
  br label %62
404:
  %405 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %397, i64 0, i32 3
  %406 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %405, align 8
  %407 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %406, i64 0, i64 0
  %408 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %407, align 8
  %409 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %408)
  store i64 %409, i64* %32
  %410 = load i64, i64* %32, !dbg !15
  %411 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %410), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %411), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !15
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %413 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %412, i64 72057594037927928)
  %414 = bitcast i8 addrspace(1)* %413 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %415 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %414, i64 0, i32 1
  %416 = load i64, i64 addrspace(1)* %415, align 8
  %417 = icmp ult i64 0, %416
  br i1 %417, label %420, label %434
418:
  %419 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !7
  store i8 addrspace(1)* %419, i8 addrspace(1)** %42
  br label %62
420:
  %421 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %414, i64 0, i32 3
  %422 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %421, align 8
  %423 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %422, i64 0, i64 0
  %424 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %423, align 8
  %425 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %424)
  store i64 %425, i64* %34
  %426 = load i64, i64* %34
  %427 = and i64 63, 6
  %428 = ashr i64 %426, %427
  store i64 %428, i64* %35
  %429 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %430 = load i64, i64* %35
  %431 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %430)
  %432 = call i64 @_bal_list_set(i8 addrspace(1)* %429, i64 0, i8 addrspace(1)* %431)
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %436, label %443
434:
  %435 = call i8 addrspace(1)* @_bal_panic_construct(i64 5381), !dbg !7
  store i8 addrspace(1)* %435, i8 addrspace(1)** %42
  br label %62
436:
  %437 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %438 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %437, i64 72057594037927928)
  %439 = bitcast i8 addrspace(1)* %438 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %440 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %439, i64 0, i32 1
  %441 = load i64, i64 addrspace(1)* %440, align 8
  %442 = icmp ult i64 0, %441
  br i1 %442, label %446, label %460
443:
  %444 = or i64 %432, 5376
  %445 = call i8 addrspace(1)* @_bal_panic_construct(i64 %444), !dbg !7
  store i8 addrspace(1)* %445, i8 addrspace(1)** %42
  br label %62
446:
  %447 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %439, i64 0, i32 3
  %448 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %447, align 8
  %449 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %448, i64 0, i64 0
  %450 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %449, align 8
  %451 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %450)
  store i64 %451, i64* %36
  %452 = load i64, i64* %36, !dbg !16
  %453 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %452), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %453), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !16
  %454 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %455 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %454, i64 72057594037927928)
  %456 = bitcast i8 addrspace(1)* %455 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %457 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %456, i64 0, i32 1
  %458 = load i64, i64 addrspace(1)* %457, align 8
  %459 = icmp ult i64 0, %458
  br i1 %459, label %462, label %476
460:
  %461 = call i8 addrspace(1)* @_bal_panic_construct(i64 5637), !dbg !7
  store i8 addrspace(1)* %461, i8 addrspace(1)** %42
  br label %62
462:
  %463 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %456, i64 0, i32 3
  %464 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %463, align 8
  %465 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %464, i64 0, i64 0
  %466 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %465, align 8
  %467 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %466)
  store i64 %467, i64* %38
  %468 = load i64, i64* %38
  %469 = and i64 63, 2
  %470 = lshr i64 %468, %469
  store i64 %470, i64* %39
  %471 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %472 = load i64, i64* %39
  %473 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %472)
  %474 = call i64 @_bal_list_set(i8 addrspace(1)* %471, i64 0, i8 addrspace(1)* %473)
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %478, label %485
476:
  %477 = call i8 addrspace(1)* @_bal_panic_construct(i64 5893), !dbg !7
  store i8 addrspace(1)* %477, i8 addrspace(1)** %42
  br label %62
478:
  %479 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %480 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %479, i64 72057594037927928)
  %481 = bitcast i8 addrspace(1)* %480 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %482 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %481, i64 0, i32 1
  %483 = load i64, i64 addrspace(1)* %482, align 8
  %484 = icmp ult i64 0, %483
  br i1 %484, label %488, label %496
485:
  %486 = or i64 %474, 5888
  %487 = call i8 addrspace(1)* @_bal_panic_construct(i64 %486), !dbg !7
  store i8 addrspace(1)* %487, i8 addrspace(1)** %42
  br label %62
488:
  %489 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %481, i64 0, i32 3
  %490 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %489, align 8
  %491 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %490, i64 0, i64 0
  %492 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %491, align 8
  %493 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %492)
  store i64 %493, i64* %40
  %494 = load i64, i64* %40, !dbg !17
  %495 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %494), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %495), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !17
  ret void
496:
  %497 = call i8 addrspace(1)* @_bal_panic_construct(i64 6149), !dbg !7
  store i8 addrspace(1)* %497, i8 addrspace(1)** %42
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
