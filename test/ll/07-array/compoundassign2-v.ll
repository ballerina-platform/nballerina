@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
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
  %19 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
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
  br i1 %42, label %67, label %43
43:
  %44 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %45 = bitcast i8 addrspace(1)* %44 to [2 x i8 addrspace(1)*] addrspace(1)*
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %47 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %45, i64 0, i64 0
  store i8 addrspace(1)* %46, i8 addrspace(1)* addrspace(1)* %47
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 100)
  %49 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %45, i64 0, i64 1
  store i8 addrspace(1)* %48, i8 addrspace(1)* addrspace(1)* %49
  %50 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %45 to [0 x i8 addrspace(1)*] addrspace(1)*
  %51 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %52 = bitcast i8 addrspace(1)* %51 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %53 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %53
  %54 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %54
  %55 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %55
  %56 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %50, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %56
  %57 = getelementptr i8, i8 addrspace(1)* %51, i64 1297036692682702852
  store i8 addrspace(1)* %57, i8 addrspace(1)** %1
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %58, i8 addrspace(1)** %x
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %59, i64 72057594037927928)
  %61 = bitcast i8 addrspace(1)* %60 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %62 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 1
  %63 = load i64, i64 addrspace(1)* %62, align 8
  %64 = icmp ult i64 1, %63
  br i1 %64, label %69, label %81
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %39
  call void @_bal_panic(i8 addrspace(1)* %66)
  unreachable
67:
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %68)
  unreachable
69:
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 3
  %71 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %70, align 8
  %72 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %71, i64 0, i64 1
  %73 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %72, align 8
  %74 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %73)
  store i64 %74, i64* %2
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %76 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %75, i64 72057594037927928)
  %77 = bitcast i8 addrspace(1)* %76 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %78 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 1
  %79 = load i64, i64 addrspace(1)* %78, align 8
  %80 = icmp ult i64 1, %79
  br i1 %80, label %83, label %101
81:
  %82 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !11
  store i8 addrspace(1)* %82, i8 addrspace(1)** %39
  br label %65
83:
  %84 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 3
  %85 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %84, align 8
  %86 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %85, i64 0, i64 1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %86, align 8
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
  %97 = load i64, i64* %5
  %98 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %97)
  %99 = call i64 @_bal_list_set(i8 addrspace(1)* %96, i64 1, i8 addrspace(1)* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %103, label %110
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !11
  store i8 addrspace(1)* %102, i8 addrspace(1)** %39
  br label %65
103:
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %105 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %104, i64 72057594037927928)
  %106 = bitcast i8 addrspace(1)* %105 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %107 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  %108 = load i64, i64 addrspace(1)* %107, align 8
  %109 = icmp ult i64 1, %108
  br i1 %109, label %113, label %127
110:
  %111 = or i64 %99, 1280
  %112 = call i8 addrspace(1)* @_bal_panic_construct(i64 %111), !dbg !11
  store i8 addrspace(1)* %112, i8 addrspace(1)** %39
  br label %65
113:
  %114 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  %115 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %114, align 8
  %116 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %115, i64 0, i64 1
  %117 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %116, align 8
  %118 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %117)
  store i64 %118, i64* %6
  %119 = load i64, i64* %6, !dbg !12
  %120 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %119), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %122 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %121, i64 72057594037927928)
  %123 = bitcast i8 addrspace(1)* %122 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %124 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 1
  %125 = load i64, i64 addrspace(1)* %124, align 8
  %126 = icmp ult i64 1, %125
  br i1 %126, label %129, label %138
127:
  %128 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !11
  store i8 addrspace(1)* %128, i8 addrspace(1)** %39
  br label %65
129:
  %130 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 3
  %131 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %130, align 8
  %132 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 1
  %133 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %132, align 8
  %134 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %133)
  store i64 %134, i64* %8
  %135 = load i64, i64* %8
  %136 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %135, i64 99)
  %137 = extractvalue {i64, i1} %136, 1
  br i1 %137, label %147, label %140
138:
  %139 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !11
  store i8 addrspace(1)* %139, i8 addrspace(1)** %39
  br label %65
140:
  %141 = extractvalue {i64, i1} %136, 0
  store i64 %141, i64* %9
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %143 = load i64, i64* %9
  %144 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %143)
  %145 = call i64 @_bal_list_set(i8 addrspace(1)* %142, i64 1, i8 addrspace(1)* %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %149, label %156
147:
  %148 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !11
  store i8 addrspace(1)* %148, i8 addrspace(1)** %39
  br label %65
149:
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %151 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %150, i64 72057594037927928)
  %152 = bitcast i8 addrspace(1)* %151 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %153 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 1
  %154 = load i64, i64 addrspace(1)* %153, align 8
  %155 = icmp ult i64 1, %154
  br i1 %155, label %159, label %173
156:
  %157 = or i64 %145, 1792
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 %157), !dbg !11
  store i8 addrspace(1)* %158, i8 addrspace(1)** %39
  br label %65
159:
  %160 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 3
  %161 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %160, align 8
  %162 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %161, i64 0, i64 1
  %163 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %162, align 8
  %164 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %163)
  store i64 %164, i64* %10
  %165 = load i64, i64* %10, !dbg !13
  %166 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %165), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %166), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !13
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %168 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %167, i64 72057594037927928)
  %169 = bitcast i8 addrspace(1)* %168 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %170 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %169, i64 0, i32 1
  %171 = load i64, i64 addrspace(1)* %170, align 8
  %172 = icmp ult i64 1, %171
  br i1 %172, label %175, label %187
173:
  %174 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !11
  store i8 addrspace(1)* %174, i8 addrspace(1)** %39
  br label %65
175:
  %176 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %169, i64 0, i32 3
  %177 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %176, align 8
  %178 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %177, i64 0, i64 1
  %179 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %178, align 8
  %180 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %179)
  store i64 %180, i64* %12
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %182 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %181, i64 72057594037927928)
  %183 = bitcast i8 addrspace(1)* %182 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %184 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %183, i64 0, i32 1
  %185 = load i64, i64 addrspace(1)* %184, align 8
  %186 = icmp ult i64 1, %185
  br i1 %186, label %189, label %201
187:
  %188 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %188, i8 addrspace(1)** %39
  br label %65
189:
  %190 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %183, i64 0, i32 3
  %191 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %190, align 8
  %192 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %191, i64 0, i64 1
  %193 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %192, align 8
  %194 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %193)
  store i64 %194, i64* %13
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %196 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %195, i64 72057594037927928)
  %197 = bitcast i8 addrspace(1)* %196 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %198 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %197, i64 0, i32 1
  %199 = load i64, i64 addrspace(1)* %198, align 8
  %200 = icmp ult i64 1, %199
  br i1 %200, label %203, label %213
201:
  %202 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %202, i8 addrspace(1)** %39
  br label %65
203:
  %204 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %197, i64 0, i32 3
  %205 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %204, align 8
  %206 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %205, i64 0, i64 1
  %207 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %206, align 8
  %208 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %207)
  store i64 %208, i64* %14
  %209 = load i64, i64* %13
  %210 = load i64, i64* %14
  %211 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %209, i64 %210)
  %212 = extractvalue {i64, i1} %211, 1
  br i1 %212, label %221, label %215
213:
  %214 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !11
  store i8 addrspace(1)* %214, i8 addrspace(1)** %39
  br label %65
215:
  %216 = extractvalue {i64, i1} %211, 0
  store i64 %216, i64* %15
  %217 = load i64, i64* %12
  %218 = load i64, i64* %15
  %219 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %217, i64 %218)
  %220 = extractvalue {i64, i1} %219, 1
  br i1 %220, label %230, label %223
221:
  %222 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !11
  store i8 addrspace(1)* %222, i8 addrspace(1)** %39
  br label %65
223:
  %224 = extractvalue {i64, i1} %219, 0
  store i64 %224, i64* %16
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %226 = load i64, i64* %16
  %227 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %226)
  %228 = call i64 @_bal_list_set(i8 addrspace(1)* %225, i64 1, i8 addrspace(1)* %227)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %232, label %239
230:
  %231 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !11
  store i8 addrspace(1)* %231, i8 addrspace(1)** %39
  br label %65
232:
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %234 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %233, i64 72057594037927928)
  %235 = bitcast i8 addrspace(1)* %234 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %236 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %235, i64 0, i32 1
  %237 = load i64, i64 addrspace(1)* %236, align 8
  %238 = icmp ult i64 1, %237
  br i1 %238, label %242, label %268
239:
  %240 = or i64 %228, 2304
  %241 = call i8 addrspace(1)* @_bal_panic_construct(i64 %240), !dbg !11
  store i8 addrspace(1)* %241, i8 addrspace(1)** %39
  br label %65
242:
  %243 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %235, i64 0, i32 3
  %244 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %243, align 8
  %245 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %244, i64 0, i64 1
  %246 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %245, align 8
  %247 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %246)
  store i64 %247, i64* %17
  %248 = load i64, i64* %17, !dbg !14
  %249 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %248), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %249), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !14
  %250 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %251 = bitcast i8 addrspace(1)* %250 to [1 x i8 addrspace(1)*] addrspace(1)*
  %252 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %251, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)* addrspace(1)* %252
  %253 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %251 to [0 x i8 addrspace(1)*] addrspace(1)*
  %254 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %255 = bitcast i8 addrspace(1)* %254 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %256 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %255, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %256
  %257 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %255, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %257
  %258 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %255, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %258
  %259 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %255, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %253, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %259
  %260 = getelementptr i8, i8 addrspace(1)* %254, i64 1297036692682702852
  store i8 addrspace(1)* %260, i8 addrspace(1)** %19
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  store i8 addrspace(1)* %261, i8 addrspace(1)** %s
  %262 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %263 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %262, i64 72057594037927928)
  %264 = bitcast i8 addrspace(1)* %263 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %265 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %264, i64 0, i32 1
  %266 = load i64, i64 addrspace(1)* %265, align 8
  %267 = icmp ult i64 0, %266
  br i1 %267, label %270, label %281
268:
  %269 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !11
  store i8 addrspace(1)* %269, i8 addrspace(1)** %39
  br label %65
270:
  %271 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %264, i64 0, i32 3
  %272 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %271, align 8
  %273 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %272, i64 0, i64 0
  %274 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %273, align 8
  store i8 addrspace(1)* %274, i8 addrspace(1)** %20
  %275 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %276 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %275, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098305485593343776))
  store i8 addrspace(1)* %276, i8 addrspace(1)** %21
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %278 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %279 = call i64 @_bal_list_set(i8 addrspace(1)* %277, i64 0, i8 addrspace(1)* %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %283, label %290
281:
  %282 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !11
  store i8 addrspace(1)* %282, i8 addrspace(1)** %39
  br label %65
283:
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %285 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %284, i64 72057594037927928)
  %286 = bitcast i8 addrspace(1)* %285 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %287 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %286, i64 0, i32 1
  %288 = load i64, i64 addrspace(1)* %287, align 8
  %289 = icmp ult i64 0, %288
  br i1 %289, label %293, label %303
290:
  %291 = or i64 %279, 3072
  %292 = call i8 addrspace(1)* @_bal_panic_construct(i64 %291), !dbg !11
  store i8 addrspace(1)* %292, i8 addrspace(1)** %39
  br label %65
293:
  %294 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %286, i64 0, i32 3
  %295 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %294, align 8
  %296 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %295, i64 0, i64 0
  %297 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %296, align 8
  store i8 addrspace(1)* %297, i8 addrspace(1)** %22
  %298 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %298), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !15
  %299 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %300 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %301 = call i64 @_bal_list_set(i8 addrspace(1)* %299, i64 1, i8 addrspace(1)* %300)
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %305, label %314
303:
  %304 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !11
  store i8 addrspace(1)* %304, i8 addrspace(1)** %39
  br label %65
305:
  %306 = call i64 @_B_func1(), !dbg !16
  store i64 %306, i64* %24, !dbg !16
  %307 = load i64, i64* %24
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %309 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %308, i64 72057594037927928)
  %310 = bitcast i8 addrspace(1)* %309 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %311 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %310, i64 0, i32 1
  %312 = load i64, i64 addrspace(1)* %311, align 8
  %313 = icmp ult i64 %307, %312
  br i1 %313, label %317, label %326
314:
  %315 = or i64 %301, 3584
  %316 = call i8 addrspace(1)* @_bal_panic_construct(i64 %315), !dbg !11
  store i8 addrspace(1)* %316, i8 addrspace(1)** %39
  br label %65
317:
  %318 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %310, i64 0, i32 3
  %319 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %318, align 8
  %320 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %319, i64 0, i64 %307
  %321 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %320, align 8
  %322 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %321)
  store i64 %322, i64* %25
  %323 = load i64, i64* %25
  %324 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %323, i64 3)
  %325 = extractvalue {i64, i1} %324, 1
  br i1 %325, label %336, label %328
326:
  %327 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !11
  store i8 addrspace(1)* %327, i8 addrspace(1)** %39
  br label %65
328:
  %329 = extractvalue {i64, i1} %324, 0
  store i64 %329, i64* %26
  %330 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %331 = load i64, i64* %24
  %332 = load i64, i64* %26
  %333 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %332)
  %334 = call i64 @_bal_list_set(i8 addrspace(1)* %330, i64 %331, i8 addrspace(1)* %333)
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %338, label %345
336:
  %337 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !11
  store i8 addrspace(1)* %337, i8 addrspace(1)** %39
  br label %65
338:
  %339 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %340 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %339, i64 72057594037927928)
  %341 = bitcast i8 addrspace(1)* %340 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %342 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %341, i64 0, i32 1
  %343 = load i64, i64 addrspace(1)* %342, align 8
  %344 = icmp ult i64 1, %343
  br i1 %344, label %348, label %362
345:
  %346 = or i64 %334, 3840
  %347 = call i8 addrspace(1)* @_bal_panic_construct(i64 %346), !dbg !11
  store i8 addrspace(1)* %347, i8 addrspace(1)** %39
  br label %65
348:
  %349 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %341, i64 0, i32 3
  %350 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %349, align 8
  %351 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %350, i64 0, i64 1
  %352 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %351, align 8
  %353 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %352)
  store i64 %353, i64* %27
  %354 = load i64, i64* %27, !dbg !17
  %355 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %354), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %355), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !17
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %357 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %356, i64 72057594037927928)
  %358 = bitcast i8 addrspace(1)* %357 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %359 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %358, i64 0, i32 1
  %360 = load i64, i64 addrspace(1)* %359, align 8
  %361 = icmp ult i64 1, %360
  br i1 %361, label %364, label %373
362:
  %363 = call i8 addrspace(1)* @_bal_panic_construct(i64 4101), !dbg !11
  store i8 addrspace(1)* %363, i8 addrspace(1)** %39
  br label %65
364:
  %365 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %358, i64 0, i32 3
  %366 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %365, align 8
  %367 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %366, i64 0, i64 1
  %368 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %367, align 8
  %369 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %368)
  store i64 %369, i64* %29
  %370 = load i64, i64* %29
  %371 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %370, i64 2)
  %372 = extractvalue {i64, i1} %371, 1
  br i1 %372, label %382, label %375
373:
  %374 = call i8 addrspace(1)* @_bal_panic_construct(i64 4357), !dbg !11
  store i8 addrspace(1)* %374, i8 addrspace(1)** %39
  br label %65
375:
  %376 = extractvalue {i64, i1} %371, 0
  store i64 %376, i64* %30
  %377 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %378 = load i64, i64* %30
  %379 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %378)
  %380 = call i64 @_bal_list_set(i8 addrspace(1)* %377, i64 1, i8 addrspace(1)* %379)
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %384, label %391
382:
  %383 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !11
  store i8 addrspace(1)* %383, i8 addrspace(1)** %39
  br label %65
384:
  %385 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %386 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %385, i64 72057594037927928)
  %387 = bitcast i8 addrspace(1)* %386 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %388 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %387, i64 0, i32 1
  %389 = load i64, i64 addrspace(1)* %388, align 8
  %390 = icmp ult i64 1, %389
  br i1 %390, label %394, label %410
391:
  %392 = or i64 %380, 4352
  %393 = call i8 addrspace(1)* @_bal_panic_construct(i64 %392), !dbg !11
  store i8 addrspace(1)* %393, i8 addrspace(1)** %39
  br label %65
394:
  %395 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %387, i64 0, i32 3
  %396 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %395, align 8
  %397 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %396, i64 0, i64 1
  %398 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %397, align 8
  %399 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %398)
  store i64 %399, i64* %31
  %400 = load i64, i64* %31, !dbg !18
  %401 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %400), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %401), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !18
  %402 = call i64 @_B_func1(), !dbg !19
  store i64 %402, i64* %33, !dbg !19
  %403 = load i64, i64* %33
  %404 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %405 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %404, i64 72057594037927928)
  %406 = bitcast i8 addrspace(1)* %405 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %407 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %406, i64 0, i32 1
  %408 = load i64, i64 addrspace(1)* %407, align 8
  %409 = icmp ult i64 %403, %408
  br i1 %409, label %412, label %423
410:
  %411 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !11
  store i8 addrspace(1)* %411, i8 addrspace(1)** %39
  br label %65
412:
  %413 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %406, i64 0, i32 3
  %414 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %413, align 8
  %415 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %414, i64 0, i64 %403
  %416 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %415, align 8
  %417 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %416)
  store i64 %417, i64* %34
  %418 = call i64 @_B_func2(), !dbg !20
  store i64 %418, i64* %35, !dbg !20
  %419 = load i64, i64* %34
  %420 = load i64, i64* %35
  %421 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %419, i64 %420)
  %422 = extractvalue {i64, i1} %421, 1
  br i1 %422, label %433, label %425
423:
  %424 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869), !dbg !11
  store i8 addrspace(1)* %424, i8 addrspace(1)** %39
  br label %65
425:
  %426 = extractvalue {i64, i1} %421, 0
  store i64 %426, i64* %36
  %427 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %428 = load i64, i64* %33
  %429 = load i64, i64* %36
  %430 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %429)
  %431 = call i64 @_bal_list_set(i8 addrspace(1)* %427, i64 %428, i8 addrspace(1)* %430)
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %435, label %442
433:
  %434 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !11
  store i8 addrspace(1)* %434, i8 addrspace(1)** %39
  br label %65
435:
  %436 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %437 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %436, i64 72057594037927928)
  %438 = bitcast i8 addrspace(1)* %437 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %439 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %438, i64 0, i32 1
  %440 = load i64, i64 addrspace(1)* %439, align 8
  %441 = icmp ult i64 1, %440
  br i1 %441, label %445, label %453
442:
  %443 = or i64 %431, 4864
  %444 = call i8 addrspace(1)* @_bal_panic_construct(i64 %443), !dbg !11
  store i8 addrspace(1)* %444, i8 addrspace(1)** %39
  br label %65
445:
  %446 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %438, i64 0, i32 3
  %447 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %446, align 8
  %448 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %447, i64 0, i64 1
  %449 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %448, align 8
  %450 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %449)
  store i64 %450, i64* %37
  %451 = load i64, i64* %37, !dbg !21
  %452 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %451), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %452), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !21
  ret void
453:
  %454 = call i8 addrspace(1)* @_bal_panic_construct(i64 5381), !dbg !11
  store i8 addrspace(1)* %454, i8 addrspace(1)** %39
  br label %65
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
!0 = !{i32 1, !"Debug Info Version", i32 3}
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
