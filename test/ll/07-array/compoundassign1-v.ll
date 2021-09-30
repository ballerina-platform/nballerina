@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
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
  br i1 %45, label %68, label %46
46:
  %47 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %48 = bitcast i8 addrspace(1)* %47 to [1 x i8 addrspace(1)*] addrspace(1)*
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  %50 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %48, i64 0, i64 0
  store i8 addrspace(1)* %49, i8 addrspace(1)* addrspace(1)* %50
  %51 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %48 to [0 x i8 addrspace(1)*] addrspace(1)*
  %52 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %53 = bitcast i8 addrspace(1)* %52 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %54 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %54
  %55 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %55
  %56 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %56
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %51, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %57
  %58 = getelementptr i8, i8 addrspace(1)* %52, i64 1297036692682702852
  store i8 addrspace(1)* %58, i8 addrspace(1)** %1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %59, i8 addrspace(1)** %x
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 72057594037927928)
  %62 = bitcast i8 addrspace(1)* %61 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %63 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  %64 = load i64, i64 addrspace(1)* %63, align 8
  %65 = icmp ult i64 0, %64
  br i1 %65, label %70, label %79
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  call void @_bal_panic(i8 addrspace(1)* %67)
  unreachable
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %69)
  unreachable
70:
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 3
  %72 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %71, align 8
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 0
  %74 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %73, align 8
  %75 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %74)
  store i64 %75, i64* %2
  %76 = load i64, i64* %2
  %77 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %76, i64 3)
  %78 = extractvalue {i64, i1} %77, 1
  br i1 %78, label %88, label %81
79:
  %80 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %80, i8 addrspace(1)** %42
  br label %66
81:
  %82 = extractvalue {i64, i1} %77, 0
  store i64 %82, i64* %3
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %84 = load i64, i64* %3
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %84)
  %86 = call i64 @_bal_list_set(i8 addrspace(1)* %83, i64 0, i8 addrspace(1)* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %97
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !7
  store i8 addrspace(1)* %89, i8 addrspace(1)** %42
  br label %66
90:
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %92 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %91, i64 72057594037927928)
  %93 = bitcast i8 addrspace(1)* %92 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %94 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 1
  %95 = load i64, i64 addrspace(1)* %94, align 8
  %96 = icmp ult i64 0, %95
  br i1 %96, label %100, label %114
97:
  %98 = or i64 %86, 1280
  %99 = call i8 addrspace(1)* @_bal_panic_construct(i64 %98), !dbg !7
  store i8 addrspace(1)* %99, i8 addrspace(1)** %42
  br label %66
100:
  %101 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 3
  %102 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %101, align 8
  %103 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 0
  %104 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %103, align 8
  %105 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %104)
  store i64 %105, i64* %4
  %106 = load i64, i64* %4, !dbg !8
  %107 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %106), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %107), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %109 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %108, i64 72057594037927928)
  %110 = bitcast i8 addrspace(1)* %109 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %111 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 1
  %112 = load i64, i64 addrspace(1)* %111, align 8
  %113 = icmp ult i64 0, %112
  br i1 %113, label %116, label %125
114:
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %115, i8 addrspace(1)** %42
  br label %66
116:
  %117 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 3
  %118 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %117, align 8
  %119 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %118, i64 0, i64 0
  %120 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %119, align 8
  %121 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %120)
  store i64 %121, i64* %6
  %122 = load i64, i64* %6
  %123 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %122, i64 2)
  %124 = extractvalue {i64, i1} %123, 1
  br i1 %124, label %134, label %127
125:
  %126 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %126, i8 addrspace(1)** %42
  br label %66
127:
  %128 = extractvalue {i64, i1} %123, 0
  store i64 %128, i64* %7
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %130 = load i64, i64* %7
  %131 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %130)
  %132 = call i64 @_bal_list_set(i8 addrspace(1)* %129, i64 0, i8 addrspace(1)* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %136, label %143
134:
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %135, i8 addrspace(1)** %42
  br label %66
136:
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %138 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %137, i64 72057594037927928)
  %139 = bitcast i8 addrspace(1)* %138 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %140 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %139, i64 0, i32 1
  %141 = load i64, i64 addrspace(1)* %140, align 8
  %142 = icmp ult i64 0, %141
  br i1 %142, label %146, label %160
143:
  %144 = or i64 %132, 1792
  %145 = call i8 addrspace(1)* @_bal_panic_construct(i64 %144), !dbg !7
  store i8 addrspace(1)* %145, i8 addrspace(1)** %42
  br label %66
146:
  %147 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %139, i64 0, i32 3
  %148 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %147, align 8
  %149 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %148, i64 0, i64 0
  %150 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %149, align 8
  %151 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %150)
  store i64 %151, i64* %8
  %152 = load i64, i64* %8, !dbg !9
  %153 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %152), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %153), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %155 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %154, i64 72057594037927928)
  %156 = bitcast i8 addrspace(1)* %155 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %157 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %156, i64 0, i32 1
  %158 = load i64, i64 addrspace(1)* %157, align 8
  %159 = icmp ult i64 0, %158
  br i1 %159, label %162, label %171
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %161, i8 addrspace(1)** %42
  br label %66
162:
  %163 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %156, i64 0, i32 3
  %164 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %163, align 8
  %165 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %164, i64 0, i64 0
  %166 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %165, align 8
  %167 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %166)
  store i64 %167, i64* %10
  %168 = load i64, i64* %10
  %169 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %168, i64 4)
  %170 = extractvalue {i64, i1} %169, 1
  br i1 %170, label %180, label %173
171:
  %172 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !7
  store i8 addrspace(1)* %172, i8 addrspace(1)** %42
  br label %66
173:
  %174 = extractvalue {i64, i1} %169, 0
  store i64 %174, i64* %11
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %176 = load i64, i64* %11
  %177 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %176)
  %178 = call i64 @_bal_list_set(i8 addrspace(1)* %175, i64 0, i8 addrspace(1)* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %182, label %189
180:
  %181 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %181, i8 addrspace(1)** %42
  br label %66
182:
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %184 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %183, i64 72057594037927928)
  %185 = bitcast i8 addrspace(1)* %184 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %186 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %185, i64 0, i32 1
  %187 = load i64, i64 addrspace(1)* %186, align 8
  %188 = icmp ult i64 0, %187
  br i1 %188, label %192, label %206
189:
  %190 = or i64 %178, 2304
  %191 = call i8 addrspace(1)* @_bal_panic_construct(i64 %190), !dbg !7
  store i8 addrspace(1)* %191, i8 addrspace(1)** %42
  br label %66
192:
  %193 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %185, i64 0, i32 3
  %194 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %193, align 8
  %195 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %194, i64 0, i64 0
  %196 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %195, align 8
  %197 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %196)
  store i64 %197, i64* %12
  %198 = load i64, i64* %12, !dbg !10
  %199 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %198), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %199), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !10
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %201 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %200, i64 72057594037927928)
  %202 = bitcast i8 addrspace(1)* %201 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %203 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %202, i64 0, i32 1
  %204 = load i64, i64 addrspace(1)* %203, align 8
  %205 = icmp ult i64 0, %204
  br i1 %205, label %208, label %216
206:
  %207 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !7
  store i8 addrspace(1)* %207, i8 addrspace(1)** %42
  br label %66
208:
  %209 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %202, i64 0, i32 3
  %210 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %209, align 8
  %211 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %210, i64 0, i64 0
  %212 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %211, align 8
  %213 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %212)
  store i64 %213, i64* %14
  %214 = load i64, i64* %14
  %215 = icmp eq i64 2, 0
  br i1 %215, label %218, label %220
216:
  %217 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821), !dbg !7
  store i8 addrspace(1)* %217, i8 addrspace(1)** %42
  br label %66
218:
  %219 = call i8 addrspace(1)* @_bal_panic_construct(i64 2818), !dbg !7
  store i8 addrspace(1)* %219, i8 addrspace(1)** %42
  br label %66
220:
  %221 = icmp eq i64 %214, -9223372036854775808
  %222 = icmp eq i64 2, -1
  %223 = and i1 %221, %222
  br i1 %223, label %231, label %224
224:
  %225 = sdiv i64 %214, 2
  store i64 %225, i64* %15
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %227 = load i64, i64* %15
  %228 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %227)
  %229 = call i64 @_bal_list_set(i8 addrspace(1)* %226, i64 0, i8 addrspace(1)* %228)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %233, label %240
231:
  %232 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %232, i8 addrspace(1)** %42
  br label %66
233:
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %235 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %234, i64 72057594037927928)
  %236 = bitcast i8 addrspace(1)* %235 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %237 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %236, i64 0, i32 1
  %238 = load i64, i64 addrspace(1)* %237, align 8
  %239 = icmp ult i64 0, %238
  br i1 %239, label %243, label %257
240:
  %241 = or i64 %229, 2816
  %242 = call i8 addrspace(1)* @_bal_panic_construct(i64 %241), !dbg !7
  store i8 addrspace(1)* %242, i8 addrspace(1)** %42
  br label %66
243:
  %244 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %236, i64 0, i32 3
  %245 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %244, align 8
  %246 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %245, i64 0, i64 0
  %247 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %246, align 8
  %248 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %247)
  store i64 %248, i64* %16
  %249 = load i64, i64* %16, !dbg !11
  %250 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %249), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %250), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !11
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %252 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %251, i64 72057594037927928)
  %253 = bitcast i8 addrspace(1)* %252 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %254 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %253, i64 0, i32 1
  %255 = load i64, i64 addrspace(1)* %254, align 8
  %256 = icmp ult i64 0, %255
  br i1 %256, label %259, label %272
257:
  %258 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !7
  store i8 addrspace(1)* %258, i8 addrspace(1)** %42
  br label %66
259:
  %260 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %253, i64 0, i32 3
  %261 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %260, align 8
  %262 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %261, i64 0, i64 0
  %263 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %262, align 8
  %264 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %263)
  store i64 %264, i64* %18
  %265 = load i64, i64* %18
  %266 = and i64 %265, 5
  store i64 %266, i64* %19
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %268 = load i64, i64* %19
  %269 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %268)
  %270 = call i64 @_bal_list_set(i8 addrspace(1)* %267, i64 0, i8 addrspace(1)* %269)
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %274, label %281
272:
  %273 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !7
  store i8 addrspace(1)* %273, i8 addrspace(1)** %42
  br label %66
274:
  %275 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %276 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %275, i64 72057594037927928)
  %277 = bitcast i8 addrspace(1)* %276 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %278 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %277, i64 0, i32 1
  %279 = load i64, i64 addrspace(1)* %278, align 8
  %280 = icmp ult i64 0, %279
  br i1 %280, label %284, label %298
281:
  %282 = or i64 %270, 3328
  %283 = call i8 addrspace(1)* @_bal_panic_construct(i64 %282), !dbg !7
  store i8 addrspace(1)* %283, i8 addrspace(1)** %42
  br label %66
284:
  %285 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %277, i64 0, i32 3
  %286 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %285, align 8
  %287 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %286, i64 0, i64 0
  %288 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %287, align 8
  %289 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %288)
  store i64 %289, i64* %20
  %290 = load i64, i64* %20, !dbg !12
  %291 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %290), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %291), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !12
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %293 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %292, i64 72057594037927928)
  %294 = bitcast i8 addrspace(1)* %293 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %295 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %294, i64 0, i32 1
  %296 = load i64, i64 addrspace(1)* %295, align 8
  %297 = icmp ult i64 0, %296
  br i1 %297, label %300, label %313
298:
  %299 = call i8 addrspace(1)* @_bal_panic_construct(i64 3589), !dbg !7
  store i8 addrspace(1)* %299, i8 addrspace(1)** %42
  br label %66
300:
  %301 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %294, i64 0, i32 3
  %302 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %301, align 8
  %303 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %302, i64 0, i64 0
  %304 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %303, align 8
  %305 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %304)
  store i64 %305, i64* %22
  %306 = load i64, i64* %22
  %307 = or i64 %306, 9
  store i64 %307, i64* %23
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %309 = load i64, i64* %23
  %310 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %309)
  %311 = call i64 @_bal_list_set(i8 addrspace(1)* %308, i64 0, i8 addrspace(1)* %310)
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %315, label %322
313:
  %314 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %314, i8 addrspace(1)** %42
  br label %66
315:
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %317 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %316, i64 72057594037927928)
  %318 = bitcast i8 addrspace(1)* %317 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %319 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %318, i64 0, i32 1
  %320 = load i64, i64 addrspace(1)* %319, align 8
  %321 = icmp ult i64 0, %320
  br i1 %321, label %325, label %339
322:
  %323 = or i64 %311, 3840
  %324 = call i8 addrspace(1)* @_bal_panic_construct(i64 %323), !dbg !7
  store i8 addrspace(1)* %324, i8 addrspace(1)** %42
  br label %66
325:
  %326 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %318, i64 0, i32 3
  %327 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %326, align 8
  %328 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %327, i64 0, i64 0
  %329 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %328, align 8
  %330 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %329)
  store i64 %330, i64* %24
  %331 = load i64, i64* %24, !dbg !13
  %332 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %331), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %332), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !13
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %334 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %333, i64 72057594037927928)
  %335 = bitcast i8 addrspace(1)* %334 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %336 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %335, i64 0, i32 1
  %337 = load i64, i64 addrspace(1)* %336, align 8
  %338 = icmp ult i64 0, %337
  br i1 %338, label %341, label %354
339:
  %340 = call i8 addrspace(1)* @_bal_panic_construct(i64 4101), !dbg !7
  store i8 addrspace(1)* %340, i8 addrspace(1)** %42
  br label %66
341:
  %342 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %335, i64 0, i32 3
  %343 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %342, align 8
  %344 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %343, i64 0, i64 0
  %345 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %344, align 8
  %346 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %345)
  store i64 %346, i64* %26
  %347 = load i64, i64* %26
  %348 = xor i64 %347, 2
  store i64 %348, i64* %27
  %349 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %350 = load i64, i64* %27
  %351 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %350)
  %352 = call i64 @_bal_list_set(i8 addrspace(1)* %349, i64 0, i8 addrspace(1)* %351)
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %356, label %363
354:
  %355 = call i8 addrspace(1)* @_bal_panic_construct(i64 4357), !dbg !7
  store i8 addrspace(1)* %355, i8 addrspace(1)** %42
  br label %66
356:
  %357 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %358 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %357, i64 72057594037927928)
  %359 = bitcast i8 addrspace(1)* %358 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %360 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %359, i64 0, i32 1
  %361 = load i64, i64 addrspace(1)* %360, align 8
  %362 = icmp ult i64 0, %361
  br i1 %362, label %366, label %380
363:
  %364 = or i64 %352, 4352
  %365 = call i8 addrspace(1)* @_bal_panic_construct(i64 %364), !dbg !7
  store i8 addrspace(1)* %365, i8 addrspace(1)** %42
  br label %66
366:
  %367 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %359, i64 0, i32 3
  %368 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %367, align 8
  %369 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %368, i64 0, i64 0
  %370 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %369, align 8
  %371 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %370)
  store i64 %371, i64* %28
  %372 = load i64, i64* %28, !dbg !14
  %373 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %372), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %373), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !14
  %374 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %375 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %374, i64 72057594037927928)
  %376 = bitcast i8 addrspace(1)* %375 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %377 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %376, i64 0, i32 1
  %378 = load i64, i64 addrspace(1)* %377, align 8
  %379 = icmp ult i64 0, %378
  br i1 %379, label %382, label %396
380:
  %381 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !7
  store i8 addrspace(1)* %381, i8 addrspace(1)** %42
  br label %66
382:
  %383 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %376, i64 0, i32 3
  %384 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %383, align 8
  %385 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %384, i64 0, i64 0
  %386 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %385, align 8
  %387 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %386)
  store i64 %387, i64* %30
  %388 = load i64, i64* %30
  %389 = and i64 63, 7
  %390 = shl i64 %388, %389
  store i64 %390, i64* %31
  %391 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %392 = load i64, i64* %31
  %393 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %392)
  %394 = call i64 @_bal_list_set(i8 addrspace(1)* %391, i64 0, i8 addrspace(1)* %393)
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %398, label %405
396:
  %397 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869), !dbg !7
  store i8 addrspace(1)* %397, i8 addrspace(1)** %42
  br label %66
398:
  %399 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %400 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %399, i64 72057594037927928)
  %401 = bitcast i8 addrspace(1)* %400 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %402 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %401, i64 0, i32 1
  %403 = load i64, i64 addrspace(1)* %402, align 8
  %404 = icmp ult i64 0, %403
  br i1 %404, label %408, label %422
405:
  %406 = or i64 %394, 4864
  %407 = call i8 addrspace(1)* @_bal_panic_construct(i64 %406), !dbg !7
  store i8 addrspace(1)* %407, i8 addrspace(1)** %42
  br label %66
408:
  %409 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %401, i64 0, i32 3
  %410 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %409, align 8
  %411 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %410, i64 0, i64 0
  %412 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %411, align 8
  %413 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %412)
  store i64 %413, i64* %32
  %414 = load i64, i64* %32, !dbg !15
  %415 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %414), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %415), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !15
  %416 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %417 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %416, i64 72057594037927928)
  %418 = bitcast i8 addrspace(1)* %417 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %419 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %418, i64 0, i32 1
  %420 = load i64, i64 addrspace(1)* %419, align 8
  %421 = icmp ult i64 0, %420
  br i1 %421, label %424, label %438
422:
  %423 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !7
  store i8 addrspace(1)* %423, i8 addrspace(1)** %42
  br label %66
424:
  %425 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %418, i64 0, i32 3
  %426 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %425, align 8
  %427 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %426, i64 0, i64 0
  %428 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %427, align 8
  %429 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %428)
  store i64 %429, i64* %34
  %430 = load i64, i64* %34
  %431 = and i64 63, 6
  %432 = ashr i64 %430, %431
  store i64 %432, i64* %35
  %433 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %434 = load i64, i64* %35
  %435 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %434)
  %436 = call i64 @_bal_list_set(i8 addrspace(1)* %433, i64 0, i8 addrspace(1)* %435)
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %440, label %447
438:
  %439 = call i8 addrspace(1)* @_bal_panic_construct(i64 5381), !dbg !7
  store i8 addrspace(1)* %439, i8 addrspace(1)** %42
  br label %66
440:
  %441 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %442 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %441, i64 72057594037927928)
  %443 = bitcast i8 addrspace(1)* %442 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %444 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %443, i64 0, i32 1
  %445 = load i64, i64 addrspace(1)* %444, align 8
  %446 = icmp ult i64 0, %445
  br i1 %446, label %450, label %464
447:
  %448 = or i64 %436, 5376
  %449 = call i8 addrspace(1)* @_bal_panic_construct(i64 %448), !dbg !7
  store i8 addrspace(1)* %449, i8 addrspace(1)** %42
  br label %66
450:
  %451 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %443, i64 0, i32 3
  %452 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %451, align 8
  %453 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %452, i64 0, i64 0
  %454 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %453, align 8
  %455 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %454)
  store i64 %455, i64* %36
  %456 = load i64, i64* %36, !dbg !16
  %457 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %456), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %457), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !16
  %458 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %459 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %458, i64 72057594037927928)
  %460 = bitcast i8 addrspace(1)* %459 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %461 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %460, i64 0, i32 1
  %462 = load i64, i64 addrspace(1)* %461, align 8
  %463 = icmp ult i64 0, %462
  br i1 %463, label %466, label %480
464:
  %465 = call i8 addrspace(1)* @_bal_panic_construct(i64 5637), !dbg !7
  store i8 addrspace(1)* %465, i8 addrspace(1)** %42
  br label %66
466:
  %467 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %460, i64 0, i32 3
  %468 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %467, align 8
  %469 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %468, i64 0, i64 0
  %470 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %469, align 8
  %471 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %470)
  store i64 %471, i64* %38
  %472 = load i64, i64* %38
  %473 = and i64 63, 2
  %474 = lshr i64 %472, %473
  store i64 %474, i64* %39
  %475 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %476 = load i64, i64* %39
  %477 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %476)
  %478 = call i64 @_bal_list_set(i8 addrspace(1)* %475, i64 0, i8 addrspace(1)* %477)
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %482, label %489
480:
  %481 = call i8 addrspace(1)* @_bal_panic_construct(i64 5893), !dbg !7
  store i8 addrspace(1)* %481, i8 addrspace(1)** %42
  br label %66
482:
  %483 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %484 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %483, i64 72057594037927928)
  %485 = bitcast i8 addrspace(1)* %484 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %486 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %485, i64 0, i32 1
  %487 = load i64, i64 addrspace(1)* %486, align 8
  %488 = icmp ult i64 0, %487
  br i1 %488, label %492, label %500
489:
  %490 = or i64 %478, 5888
  %491 = call i8 addrspace(1)* @_bal_panic_construct(i64 %490), !dbg !7
  store i8 addrspace(1)* %491, i8 addrspace(1)** %42
  br label %66
492:
  %493 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %485, i64 0, i32 3
  %494 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %493, align 8
  %495 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %494, i64 0, i64 0
  %496 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %495, align 8
  %497 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %496)
  store i64 %497, i64* %40
  %498 = load i64, i64* %40, !dbg !17
  %499 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %498), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %499), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !17
  ret void
500:
  %501 = call i8 addrspace(1)* @_bal_panic_construct(i64 6149), !dbg !7
  store i8 addrspace(1)* %501, i8 addrspace(1)** %42
  br label %66
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
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
