@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 5, i64 2452139628359057408], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 21, i64 2452139628359057408], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 37, i64 2452139628359057408], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 5, i64 -6771232408495718400], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 21, i64 -6771232408495718400], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 37, i64 -6771232408495718400], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452350734591590400], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 21, i64 2452280365847412736], align 8
@.dec11 = internal unnamed_addr constant [2 x i64] [i64 21, i64 -6771091671007363072], align 8
@.dec12 = internal unnamed_addr constant [2 x i64] [i64 209, i64 2452209997103235072], align 8
@.dec13 = internal unnamed_addr constant [2 x i64] [i64 1683, i64 2452139628359057408], align 8
@.dec14 = internal unnamed_addr constant [2 x i64] [i64 1685, i64 2452139628359057408], align 8
@.dec15 = internal unnamed_addr constant [2 x i64] [i64 -7742266043949656307, i64 2452209997103235072], align 8
@.dec16 = internal unnamed_addr constant [2 x i64] [i64 -6570856884717264784, i64 2452139628359057411], align 8
@.dec17 = internal unnamed_addr constant [2 x i64] [i64 -6570856884717264783, i64 2452139628359057411], align 8
@.dec18 = internal unnamed_addr constant [2 x i64] [i64 -6570856884717264780, i64 2452139628359057411], align 8
@.dec19 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec20 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -9221049868296912896], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @_bal_decimal_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i64
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i64
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i64
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i64
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i64
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca i64
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca i64
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca i64
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca i64
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca i64
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca i64
  %56 = alloca ptr addrspace(1)
  %57 = alloca ptr addrspace(1)
  %58 = alloca i64
  %59 = alloca ptr addrspace(1)
  %60 = alloca ptr addrspace(1)
  %61 = alloca i64
  %62 = alloca ptr addrspace(1)
  %63 = alloca ptr addrspace(1)
  %64 = alloca i64
  %65 = alloca ptr addrspace(1)
  %66 = alloca ptr addrspace(1)
  %67 = alloca ptr addrspace(1)
  %68 = alloca i8
  %69 = load ptr, ptr @_bal_stack_guard
  %70 = icmp ult ptr %68, %69
  br i1 %70, label %79, label %71
71:
  %72 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 288230376151711744
  store ptr addrspace(1) %73, ptr %d
  %74 = load ptr addrspace(1), ptr %d
  %75 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %74), !dbg !9
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %99, label %81
77:
  %78 = load ptr addrspace(1), ptr %67
  call void @_bal_panic(ptr addrspace(1) %78), !dbg !97
  unreachable
79:
  %80 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %80), !dbg !8
  unreachable
81:
  %82 = extractvalue {i64, i1} %75, 0
  store i64 %82, ptr %1
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = load i64, ptr %1
  %88 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %87), !dbg !11
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %2
  %93 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %94 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 288230376151711744
  store ptr addrspace(1) %95, ptr %d
  %96 = load ptr addrspace(1), ptr %d
  %97 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %96), !dbg !13
  %98 = extractvalue {i64, i1} %97, 1
  br i1 %98, label %119, label %101
99:
  %100 = call ptr addrspace(1) @_bal_panic_construct(i64 1025), !dbg !7
  store ptr addrspace(1) %100, ptr %67
  br label %77
101:
  %102 = extractvalue {i64, i1} %97, 0
  store i64 %102, ptr %4
  %103 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 3
  %105 = load ptr addrspace(1), ptr addrspace(1) %104, align 8
  %106 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %107 = load i64, ptr %4
  %108 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %107), !dbg !15
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %106, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %5
  %113 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %114 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 288230376151711744
  store ptr addrspace(1) %115, ptr %d
  %116 = load ptr addrspace(1), ptr %d
  %117 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %116), !dbg !17
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %139, label %121
119:
  %120 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %120, ptr %67
  br label %77
121:
  %122 = extractvalue {i64, i1} %117, 0
  store i64 %122, ptr %7
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i64, ptr %7
  %128 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %127), !dbg !19
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %8
  %133 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %133), !dbg !20
  store ptr addrspace(1) null, ptr %9
  %134 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %135 = getelementptr i8, ptr addrspace(1) %134, i64 288230376151711744
  store ptr addrspace(1) %135, ptr %d
  %136 = load ptr addrspace(1), ptr %d
  %137 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %136), !dbg !21
  %138 = extractvalue {i64, i1} %137, 1
  br i1 %138, label %159, label %141
139:
  %140 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %140, ptr %67
  br label %77
141:
  %142 = extractvalue {i64, i1} %137, 0
  store i64 %142, ptr %10
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load i64, ptr %10
  %148 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %147), !dbg !23
  %149 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %148, ptr addrspace(1) %149
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %150
  %151 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %152 = getelementptr i8, ptr addrspace(1) %151, i64 864691128455135236
  store ptr addrspace(1) %152, ptr %11
  %153 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %153), !dbg !24
  store ptr addrspace(1) null, ptr %12
  %154 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 288230376151711744
  store ptr addrspace(1) %155, ptr %d
  %156 = load ptr addrspace(1), ptr %d
  %157 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %156), !dbg !25
  %158 = extractvalue {i64, i1} %157, 1
  br i1 %158, label %179, label %161
159:
  %160 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !7
  store ptr addrspace(1) %160, ptr %67
  br label %77
161:
  %162 = extractvalue {i64, i1} %157, 0
  store i64 %162, ptr %13
  %163 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 3
  %165 = load ptr addrspace(1), ptr addrspace(1) %164, align 8
  %166 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %167 = load i64, ptr %13
  %168 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %167), !dbg !27
  %169 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %166, i64 0, i64 0
  store ptr addrspace(1) %168, ptr addrspace(1) %169
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 1
  store i64 1, ptr addrspace(1) %170
  %171 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %172 = getelementptr i8, ptr addrspace(1) %171, i64 864691128455135236
  store ptr addrspace(1) %172, ptr %14
  %173 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %173), !dbg !28
  store ptr addrspace(1) null, ptr %15
  %174 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %175 = getelementptr i8, ptr addrspace(1) %174, i64 288230376151711744
  store ptr addrspace(1) %175, ptr %d
  %176 = load ptr addrspace(1), ptr %d
  %177 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %176), !dbg !29
  %178 = extractvalue {i64, i1} %177, 1
  br i1 %178, label %199, label %181
179:
  %180 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !7
  store ptr addrspace(1) %180, ptr %67
  br label %77
181:
  %182 = extractvalue {i64, i1} %177, 0
  store i64 %182, ptr %16
  %183 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 3
  %185 = load ptr addrspace(1), ptr addrspace(1) %184, align 8
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = load i64, ptr %16
  %188 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %187), !dbg !31
  %189 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %186, i64 0, i64 0
  store ptr addrspace(1) %188, ptr addrspace(1) %189
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 1
  store i64 1, ptr addrspace(1) %190
  %191 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %17
  %193 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %193), !dbg !32
  store ptr addrspace(1) null, ptr %18
  %194 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %195 = getelementptr i8, ptr addrspace(1) %194, i64 288230376151711744
  store ptr addrspace(1) %195, ptr %d
  %196 = load ptr addrspace(1), ptr %d
  %197 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %196), !dbg !33
  %198 = extractvalue {i64, i1} %197, 1
  br i1 %198, label %219, label %201
199:
  %200 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !7
  store ptr addrspace(1) %200, ptr %67
  br label %77
201:
  %202 = extractvalue {i64, i1} %197, 0
  store i64 %202, ptr %19
  %203 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %204 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %203, i64 0, i32 3
  %205 = load ptr addrspace(1), ptr addrspace(1) %204, align 8
  %206 = bitcast ptr addrspace(1) %205 to ptr addrspace(1)
  %207 = load i64, ptr %19
  %208 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %207), !dbg !35
  %209 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %206, i64 0, i64 0
  store ptr addrspace(1) %208, ptr addrspace(1) %209
  %210 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %203, i64 0, i32 1
  store i64 1, ptr addrspace(1) %210
  %211 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %212 = getelementptr i8, ptr addrspace(1) %211, i64 864691128455135236
  store ptr addrspace(1) %212, ptr %20
  %213 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %213), !dbg !36
  store ptr addrspace(1) null, ptr %21
  %214 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 288230376151711744
  store ptr addrspace(1) %215, ptr %d
  %216 = load ptr addrspace(1), ptr %d
  %217 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %216), !dbg !37
  %218 = extractvalue {i64, i1} %217, 1
  br i1 %218, label %239, label %221
219:
  %220 = call ptr addrspace(1) @_bal_panic_construct(i64 5633), !dbg !7
  store ptr addrspace(1) %220, ptr %67
  br label %77
221:
  %222 = extractvalue {i64, i1} %217, 0
  store i64 %222, ptr %22
  %223 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %223, i64 0, i32 3
  %225 = load ptr addrspace(1), ptr addrspace(1) %224, align 8
  %226 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %227 = load i64, ptr %22
  %228 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %227), !dbg !39
  %229 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %226, i64 0, i64 0
  store ptr addrspace(1) %228, ptr addrspace(1) %229
  %230 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %223, i64 0, i32 1
  store i64 1, ptr addrspace(1) %230
  %231 = bitcast ptr addrspace(1) %223 to ptr addrspace(1)
  %232 = getelementptr i8, ptr addrspace(1) %231, i64 864691128455135236
  store ptr addrspace(1) %232, ptr %23
  %233 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %233), !dbg !40
  store ptr addrspace(1) null, ptr %24
  %234 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %235 = getelementptr i8, ptr addrspace(1) %234, i64 288230376151711744
  store ptr addrspace(1) %235, ptr %d
  %236 = load ptr addrspace(1), ptr %d
  %237 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %236), !dbg !41
  %238 = extractvalue {i64, i1} %237, 1
  br i1 %238, label %259, label %241
239:
  %240 = call ptr addrspace(1) @_bal_panic_construct(i64 6401), !dbg !7
  store ptr addrspace(1) %240, ptr %67
  br label %77
241:
  %242 = extractvalue {i64, i1} %237, 0
  store i64 %242, ptr %25
  %243 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !42
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = load i64, ptr %25
  %248 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %247), !dbg !43
  %249 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 0
  store ptr addrspace(1) %248, ptr addrspace(1) %249
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 1
  store i64 1, ptr addrspace(1) %250
  %251 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %252 = getelementptr i8, ptr addrspace(1) %251, i64 864691128455135236
  store ptr addrspace(1) %252, ptr %26
  %253 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %253), !dbg !44
  store ptr addrspace(1) null, ptr %27
  %254 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %255 = getelementptr i8, ptr addrspace(1) %254, i64 288230376151711744
  store ptr addrspace(1) %255, ptr %d
  %256 = load ptr addrspace(1), ptr %d
  %257 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %256), !dbg !45
  %258 = extractvalue {i64, i1} %257, 1
  br i1 %258, label %279, label %261
259:
  %260 = call ptr addrspace(1) @_bal_panic_construct(i64 7169), !dbg !7
  store ptr addrspace(1) %260, ptr %67
  br label %77
261:
  %262 = extractvalue {i64, i1} %257, 0
  store i64 %262, ptr %28
  %263 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %264 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %263, i64 0, i32 3
  %265 = load ptr addrspace(1), ptr addrspace(1) %264, align 8
  %266 = bitcast ptr addrspace(1) %265 to ptr addrspace(1)
  %267 = load i64, ptr %28
  %268 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %267), !dbg !47
  %269 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %266, i64 0, i64 0
  store ptr addrspace(1) %268, ptr addrspace(1) %269
  %270 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %263, i64 0, i32 1
  store i64 1, ptr addrspace(1) %270
  %271 = bitcast ptr addrspace(1) %263 to ptr addrspace(1)
  %272 = getelementptr i8, ptr addrspace(1) %271, i64 864691128455135236
  store ptr addrspace(1) %272, ptr %29
  %273 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %273), !dbg !48
  store ptr addrspace(1) null, ptr %30
  %274 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %275 = getelementptr i8, ptr addrspace(1) %274, i64 288230376151711744
  store ptr addrspace(1) %275, ptr %d
  %276 = load ptr addrspace(1), ptr %d
  %277 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %276), !dbg !49
  %278 = extractvalue {i64, i1} %277, 1
  br i1 %278, label %299, label %281
279:
  %280 = call ptr addrspace(1) @_bal_panic_construct(i64 7937), !dbg !7
  store ptr addrspace(1) %280, ptr %67
  br label %77
281:
  %282 = extractvalue {i64, i1} %277, 0
  store i64 %282, ptr %31
  %283 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !50
  %284 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %283, i64 0, i32 3
  %285 = load ptr addrspace(1), ptr addrspace(1) %284, align 8
  %286 = bitcast ptr addrspace(1) %285 to ptr addrspace(1)
  %287 = load i64, ptr %31
  %288 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %287), !dbg !51
  %289 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %286, i64 0, i64 0
  store ptr addrspace(1) %288, ptr addrspace(1) %289
  %290 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %283, i64 0, i32 1
  store i64 1, ptr addrspace(1) %290
  %291 = bitcast ptr addrspace(1) %283 to ptr addrspace(1)
  %292 = getelementptr i8, ptr addrspace(1) %291, i64 864691128455135236
  store ptr addrspace(1) %292, ptr %32
  %293 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %293), !dbg !52
  store ptr addrspace(1) null, ptr %33
  %294 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %295 = getelementptr i8, ptr addrspace(1) %294, i64 288230376151711744
  store ptr addrspace(1) %295, ptr %d
  %296 = load ptr addrspace(1), ptr %d
  %297 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %296), !dbg !53
  %298 = extractvalue {i64, i1} %297, 1
  br i1 %298, label %319, label %301
299:
  %300 = call ptr addrspace(1) @_bal_panic_construct(i64 8705), !dbg !7
  store ptr addrspace(1) %300, ptr %67
  br label %77
301:
  %302 = extractvalue {i64, i1} %297, 0
  store i64 %302, ptr %34
  %303 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !54
  %304 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %303, i64 0, i32 3
  %305 = load ptr addrspace(1), ptr addrspace(1) %304, align 8
  %306 = bitcast ptr addrspace(1) %305 to ptr addrspace(1)
  %307 = load i64, ptr %34
  %308 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %307), !dbg !55
  %309 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %306, i64 0, i64 0
  store ptr addrspace(1) %308, ptr addrspace(1) %309
  %310 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %303, i64 0, i32 1
  store i64 1, ptr addrspace(1) %310
  %311 = bitcast ptr addrspace(1) %303 to ptr addrspace(1)
  %312 = getelementptr i8, ptr addrspace(1) %311, i64 864691128455135236
  store ptr addrspace(1) %312, ptr %35
  %313 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %313), !dbg !56
  store ptr addrspace(1) null, ptr %36
  %314 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %315 = getelementptr i8, ptr addrspace(1) %314, i64 288230376151711744
  store ptr addrspace(1) %315, ptr %d
  %316 = load ptr addrspace(1), ptr %d
  %317 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %316), !dbg !57
  %318 = extractvalue {i64, i1} %317, 1
  br i1 %318, label %339, label %321
319:
  %320 = call ptr addrspace(1) @_bal_panic_construct(i64 9473), !dbg !7
  store ptr addrspace(1) %320, ptr %67
  br label %77
321:
  %322 = extractvalue {i64, i1} %317, 0
  store i64 %322, ptr %37
  %323 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !58
  %324 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %323, i64 0, i32 3
  %325 = load ptr addrspace(1), ptr addrspace(1) %324, align 8
  %326 = bitcast ptr addrspace(1) %325 to ptr addrspace(1)
  %327 = load i64, ptr %37
  %328 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %327), !dbg !59
  %329 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %326, i64 0, i64 0
  store ptr addrspace(1) %328, ptr addrspace(1) %329
  %330 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %323, i64 0, i32 1
  store i64 1, ptr addrspace(1) %330
  %331 = bitcast ptr addrspace(1) %323 to ptr addrspace(1)
  %332 = getelementptr i8, ptr addrspace(1) %331, i64 864691128455135236
  store ptr addrspace(1) %332, ptr %38
  %333 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %333), !dbg !60
  store ptr addrspace(1) null, ptr %39
  %334 = addrspacecast ptr bitcast(ptr @.dec13 to ptr) to ptr addrspace(1)
  %335 = getelementptr i8, ptr addrspace(1) %334, i64 288230376151711744
  store ptr addrspace(1) %335, ptr %d
  %336 = load ptr addrspace(1), ptr %d
  %337 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %336), !dbg !61
  %338 = extractvalue {i64, i1} %337, 1
  br i1 %338, label %359, label %341
339:
  %340 = call ptr addrspace(1) @_bal_panic_construct(i64 10241), !dbg !7
  store ptr addrspace(1) %340, ptr %67
  br label %77
341:
  %342 = extractvalue {i64, i1} %337, 0
  store i64 %342, ptr %40
  %343 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !62
  %344 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %343, i64 0, i32 3
  %345 = load ptr addrspace(1), ptr addrspace(1) %344, align 8
  %346 = bitcast ptr addrspace(1) %345 to ptr addrspace(1)
  %347 = load i64, ptr %40
  %348 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %347), !dbg !63
  %349 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %346, i64 0, i64 0
  store ptr addrspace(1) %348, ptr addrspace(1) %349
  %350 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %343, i64 0, i32 1
  store i64 1, ptr addrspace(1) %350
  %351 = bitcast ptr addrspace(1) %343 to ptr addrspace(1)
  %352 = getelementptr i8, ptr addrspace(1) %351, i64 864691128455135236
  store ptr addrspace(1) %352, ptr %41
  %353 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %353), !dbg !64
  store ptr addrspace(1) null, ptr %42
  %354 = addrspacecast ptr bitcast(ptr @.dec14 to ptr) to ptr addrspace(1)
  %355 = getelementptr i8, ptr addrspace(1) %354, i64 288230376151711744
  store ptr addrspace(1) %355, ptr %d
  %356 = load ptr addrspace(1), ptr %d
  %357 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %356), !dbg !65
  %358 = extractvalue {i64, i1} %357, 1
  br i1 %358, label %379, label %361
359:
  %360 = call ptr addrspace(1) @_bal_panic_construct(i64 11009), !dbg !7
  store ptr addrspace(1) %360, ptr %67
  br label %77
361:
  %362 = extractvalue {i64, i1} %357, 0
  store i64 %362, ptr %43
  %363 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !66
  %364 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 3
  %365 = load ptr addrspace(1), ptr addrspace(1) %364, align 8
  %366 = bitcast ptr addrspace(1) %365 to ptr addrspace(1)
  %367 = load i64, ptr %43
  %368 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %367), !dbg !67
  %369 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %366, i64 0, i64 0
  store ptr addrspace(1) %368, ptr addrspace(1) %369
  %370 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 1
  store i64 1, ptr addrspace(1) %370
  %371 = bitcast ptr addrspace(1) %363 to ptr addrspace(1)
  %372 = getelementptr i8, ptr addrspace(1) %371, i64 864691128455135236
  store ptr addrspace(1) %372, ptr %44
  %373 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %373), !dbg !68
  store ptr addrspace(1) null, ptr %45
  %374 = addrspacecast ptr bitcast(ptr @.dec15 to ptr) to ptr addrspace(1)
  %375 = getelementptr i8, ptr addrspace(1) %374, i64 288230376151711744
  store ptr addrspace(1) %375, ptr %d
  %376 = load ptr addrspace(1), ptr %d
  %377 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %376), !dbg !69
  %378 = extractvalue {i64, i1} %377, 1
  br i1 %378, label %399, label %381
379:
  %380 = call ptr addrspace(1) @_bal_panic_construct(i64 11777), !dbg !7
  store ptr addrspace(1) %380, ptr %67
  br label %77
381:
  %382 = extractvalue {i64, i1} %377, 0
  store i64 %382, ptr %46
  %383 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !70
  %384 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %383, i64 0, i32 3
  %385 = load ptr addrspace(1), ptr addrspace(1) %384, align 8
  %386 = bitcast ptr addrspace(1) %385 to ptr addrspace(1)
  %387 = load i64, ptr %46
  %388 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %387), !dbg !71
  %389 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %386, i64 0, i64 0
  store ptr addrspace(1) %388, ptr addrspace(1) %389
  %390 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %383, i64 0, i32 1
  store i64 1, ptr addrspace(1) %390
  %391 = bitcast ptr addrspace(1) %383 to ptr addrspace(1)
  %392 = getelementptr i8, ptr addrspace(1) %391, i64 864691128455135236
  store ptr addrspace(1) %392, ptr %47
  %393 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %393), !dbg !72
  store ptr addrspace(1) null, ptr %48
  %394 = addrspacecast ptr bitcast(ptr @.dec16 to ptr) to ptr addrspace(1)
  %395 = getelementptr i8, ptr addrspace(1) %394, i64 288230376151711744
  store ptr addrspace(1) %395, ptr %d
  %396 = load ptr addrspace(1), ptr %d
  %397 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %396), !dbg !73
  %398 = extractvalue {i64, i1} %397, 1
  br i1 %398, label %419, label %401
399:
  %400 = call ptr addrspace(1) @_bal_panic_construct(i64 12545), !dbg !7
  store ptr addrspace(1) %400, ptr %67
  br label %77
401:
  %402 = extractvalue {i64, i1} %397, 0
  store i64 %402, ptr %49
  %403 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !74
  %404 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %403, i64 0, i32 3
  %405 = load ptr addrspace(1), ptr addrspace(1) %404, align 8
  %406 = bitcast ptr addrspace(1) %405 to ptr addrspace(1)
  %407 = load i64, ptr %49
  %408 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %407), !dbg !75
  %409 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %406, i64 0, i64 0
  store ptr addrspace(1) %408, ptr addrspace(1) %409
  %410 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %403, i64 0, i32 1
  store i64 1, ptr addrspace(1) %410
  %411 = bitcast ptr addrspace(1) %403 to ptr addrspace(1)
  %412 = getelementptr i8, ptr addrspace(1) %411, i64 864691128455135236
  store ptr addrspace(1) %412, ptr %50
  %413 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %413), !dbg !76
  store ptr addrspace(1) null, ptr %51
  %414 = addrspacecast ptr bitcast(ptr @.dec17 to ptr) to ptr addrspace(1)
  %415 = getelementptr i8, ptr addrspace(1) %414, i64 288230376151711744
  store ptr addrspace(1) %415, ptr %d
  %416 = load ptr addrspace(1), ptr %d
  %417 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %416), !dbg !77
  %418 = extractvalue {i64, i1} %417, 1
  br i1 %418, label %439, label %421
419:
  %420 = call ptr addrspace(1) @_bal_panic_construct(i64 13313), !dbg !7
  store ptr addrspace(1) %420, ptr %67
  br label %77
421:
  %422 = extractvalue {i64, i1} %417, 0
  store i64 %422, ptr %52
  %423 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !78
  %424 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %423, i64 0, i32 3
  %425 = load ptr addrspace(1), ptr addrspace(1) %424, align 8
  %426 = bitcast ptr addrspace(1) %425 to ptr addrspace(1)
  %427 = load i64, ptr %52
  %428 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %427), !dbg !79
  %429 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %426, i64 0, i64 0
  store ptr addrspace(1) %428, ptr addrspace(1) %429
  %430 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %423, i64 0, i32 1
  store i64 1, ptr addrspace(1) %430
  %431 = bitcast ptr addrspace(1) %423 to ptr addrspace(1)
  %432 = getelementptr i8, ptr addrspace(1) %431, i64 864691128455135236
  store ptr addrspace(1) %432, ptr %53
  %433 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %433), !dbg !80
  store ptr addrspace(1) null, ptr %54
  %434 = addrspacecast ptr bitcast(ptr @.dec18 to ptr) to ptr addrspace(1)
  %435 = getelementptr i8, ptr addrspace(1) %434, i64 288230376151711744
  store ptr addrspace(1) %435, ptr %d
  %436 = load ptr addrspace(1), ptr %d
  %437 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %436), !dbg !81
  %438 = extractvalue {i64, i1} %437, 1
  br i1 %438, label %459, label %441
439:
  %440 = call ptr addrspace(1) @_bal_panic_construct(i64 14081), !dbg !7
  store ptr addrspace(1) %440, ptr %67
  br label %77
441:
  %442 = extractvalue {i64, i1} %437, 0
  store i64 %442, ptr %55
  %443 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !82
  %444 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %443, i64 0, i32 3
  %445 = load ptr addrspace(1), ptr addrspace(1) %444, align 8
  %446 = bitcast ptr addrspace(1) %445 to ptr addrspace(1)
  %447 = load i64, ptr %55
  %448 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %447), !dbg !83
  %449 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %446, i64 0, i64 0
  store ptr addrspace(1) %448, ptr addrspace(1) %449
  %450 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %443, i64 0, i32 1
  store i64 1, ptr addrspace(1) %450
  %451 = bitcast ptr addrspace(1) %443 to ptr addrspace(1)
  %452 = getelementptr i8, ptr addrspace(1) %451, i64 864691128455135236
  store ptr addrspace(1) %452, ptr %56
  %453 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %453), !dbg !84
  store ptr addrspace(1) null, ptr %57
  %454 = addrspacecast ptr bitcast(ptr @.dec18 to ptr) to ptr addrspace(1)
  %455 = getelementptr i8, ptr addrspace(1) %454, i64 288230376151711744
  store ptr addrspace(1) %455, ptr %d
  %456 = load ptr addrspace(1), ptr %d
  %457 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %456), !dbg !85
  %458 = extractvalue {i64, i1} %457, 1
  br i1 %458, label %479, label %461
459:
  %460 = call ptr addrspace(1) @_bal_panic_construct(i64 14849), !dbg !7
  store ptr addrspace(1) %460, ptr %67
  br label %77
461:
  %462 = extractvalue {i64, i1} %457, 0
  store i64 %462, ptr %58
  %463 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !86
  %464 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 3
  %465 = load ptr addrspace(1), ptr addrspace(1) %464, align 8
  %466 = bitcast ptr addrspace(1) %465 to ptr addrspace(1)
  %467 = load i64, ptr %58
  %468 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %467), !dbg !87
  %469 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %466, i64 0, i64 0
  store ptr addrspace(1) %468, ptr addrspace(1) %469
  %470 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 1
  store i64 1, ptr addrspace(1) %470
  %471 = bitcast ptr addrspace(1) %463 to ptr addrspace(1)
  %472 = getelementptr i8, ptr addrspace(1) %471, i64 864691128455135236
  store ptr addrspace(1) %472, ptr %59
  %473 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %473), !dbg !88
  store ptr addrspace(1) null, ptr %60
  %474 = addrspacecast ptr bitcast(ptr @.dec19 to ptr) to ptr addrspace(1)
  %475 = getelementptr i8, ptr addrspace(1) %474, i64 288230376151711744
  store ptr addrspace(1) %475, ptr %d
  %476 = load ptr addrspace(1), ptr %d
  %477 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %476), !dbg !89
  %478 = extractvalue {i64, i1} %477, 1
  br i1 %478, label %499, label %481
479:
  %480 = call ptr addrspace(1) @_bal_panic_construct(i64 15617), !dbg !7
  store ptr addrspace(1) %480, ptr %67
  br label %77
481:
  %482 = extractvalue {i64, i1} %477, 0
  store i64 %482, ptr %61
  %483 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !90
  %484 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %483, i64 0, i32 3
  %485 = load ptr addrspace(1), ptr addrspace(1) %484, align 8
  %486 = bitcast ptr addrspace(1) %485 to ptr addrspace(1)
  %487 = load i64, ptr %61
  %488 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %487), !dbg !91
  %489 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %486, i64 0, i64 0
  store ptr addrspace(1) %488, ptr addrspace(1) %489
  %490 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %483, i64 0, i32 1
  store i64 1, ptr addrspace(1) %490
  %491 = bitcast ptr addrspace(1) %483 to ptr addrspace(1)
  %492 = getelementptr i8, ptr addrspace(1) %491, i64 864691128455135236
  store ptr addrspace(1) %492, ptr %62
  %493 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %493), !dbg !92
  store ptr addrspace(1) null, ptr %63
  %494 = addrspacecast ptr bitcast(ptr @.dec20 to ptr) to ptr addrspace(1)
  %495 = getelementptr i8, ptr addrspace(1) %494, i64 288230376151711744
  store ptr addrspace(1) %495, ptr %d
  %496 = load ptr addrspace(1), ptr %d
  %497 = call {i64, i1} @_bal_decimal_to_int(ptr addrspace(1) %496), !dbg !93
  %498 = extractvalue {i64, i1} %497, 1
  br i1 %498, label %514, label %501
499:
  %500 = call ptr addrspace(1) @_bal_panic_construct(i64 16385), !dbg !7
  store ptr addrspace(1) %500, ptr %67
  br label %77
501:
  %502 = extractvalue {i64, i1} %497, 0
  store i64 %502, ptr %64
  %503 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !94
  %504 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %503, i64 0, i32 3
  %505 = load ptr addrspace(1), ptr addrspace(1) %504, align 8
  %506 = bitcast ptr addrspace(1) %505 to ptr addrspace(1)
  %507 = load i64, ptr %64
  %508 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %507), !dbg !95
  %509 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %506, i64 0, i64 0
  store ptr addrspace(1) %508, ptr addrspace(1) %509
  %510 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %503, i64 0, i32 1
  store i64 1, ptr addrspace(1) %510
  %511 = bitcast ptr addrspace(1) %503 to ptr addrspace(1)
  %512 = getelementptr i8, ptr addrspace(1) %511, i64 864691128455135236
  store ptr addrspace(1) %512, ptr %65
  %513 = load ptr addrspace(1), ptr %65
  call void @_Bb02ioprintln(ptr addrspace(1) %513), !dbg !96
  store ptr addrspace(1) null, ptr %66
  ret void
514:
  %515 = call ptr addrspace(1) @_bal_panic_construct(i64 17153), !dbg !7
  store ptr addrspace(1) %515, ptr %67
  br label %77
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/toint7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 15, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 15, scope: !5)
!24 = !DILocation(line: 13, column: 4, scope: !5)
!25 = !DILocation(line: 16, column: 15, scope: !5)
!26 = !DILocation(line: 16, column: 15, scope: !5)
!27 = !DILocation(line: 16, column: 15, scope: !5)
!28 = !DILocation(line: 16, column: 4, scope: !5)
!29 = !DILocation(line: 19, column: 15, scope: !5)
!30 = !DILocation(line: 19, column: 15, scope: !5)
!31 = !DILocation(line: 19, column: 15, scope: !5)
!32 = !DILocation(line: 19, column: 4, scope: !5)
!33 = !DILocation(line: 22, column: 15, scope: !5)
!34 = !DILocation(line: 22, column: 15, scope: !5)
!35 = !DILocation(line: 22, column: 15, scope: !5)
!36 = !DILocation(line: 22, column: 4, scope: !5)
!37 = !DILocation(line: 25, column: 15, scope: !5)
!38 = !DILocation(line: 25, column: 15, scope: !5)
!39 = !DILocation(line: 25, column: 15, scope: !5)
!40 = !DILocation(line: 25, column: 4, scope: !5)
!41 = !DILocation(line: 28, column: 15, scope: !5)
!42 = !DILocation(line: 28, column: 15, scope: !5)
!43 = !DILocation(line: 28, column: 15, scope: !5)
!44 = !DILocation(line: 28, column: 4, scope: !5)
!45 = !DILocation(line: 31, column: 15, scope: !5)
!46 = !DILocation(line: 31, column: 15, scope: !5)
!47 = !DILocation(line: 31, column: 15, scope: !5)
!48 = !DILocation(line: 31, column: 4, scope: !5)
!49 = !DILocation(line: 34, column: 15, scope: !5)
!50 = !DILocation(line: 34, column: 15, scope: !5)
!51 = !DILocation(line: 34, column: 15, scope: !5)
!52 = !DILocation(line: 34, column: 4, scope: !5)
!53 = !DILocation(line: 37, column: 15, scope: !5)
!54 = !DILocation(line: 37, column: 15, scope: !5)
!55 = !DILocation(line: 37, column: 15, scope: !5)
!56 = !DILocation(line: 37, column: 4, scope: !5)
!57 = !DILocation(line: 40, column: 15, scope: !5)
!58 = !DILocation(line: 40, column: 15, scope: !5)
!59 = !DILocation(line: 40, column: 15, scope: !5)
!60 = !DILocation(line: 40, column: 4, scope: !5)
!61 = !DILocation(line: 43, column: 15, scope: !5)
!62 = !DILocation(line: 43, column: 15, scope: !5)
!63 = !DILocation(line: 43, column: 15, scope: !5)
!64 = !DILocation(line: 43, column: 4, scope: !5)
!65 = !DILocation(line: 46, column: 15, scope: !5)
!66 = !DILocation(line: 46, column: 15, scope: !5)
!67 = !DILocation(line: 46, column: 15, scope: !5)
!68 = !DILocation(line: 46, column: 4, scope: !5)
!69 = !DILocation(line: 49, column: 15, scope: !5)
!70 = !DILocation(line: 49, column: 15, scope: !5)
!71 = !DILocation(line: 49, column: 15, scope: !5)
!72 = !DILocation(line: 49, column: 4, scope: !5)
!73 = !DILocation(line: 52, column: 15, scope: !5)
!74 = !DILocation(line: 52, column: 15, scope: !5)
!75 = !DILocation(line: 52, column: 15, scope: !5)
!76 = !DILocation(line: 52, column: 4, scope: !5)
!77 = !DILocation(line: 55, column: 15, scope: !5)
!78 = !DILocation(line: 55, column: 15, scope: !5)
!79 = !DILocation(line: 55, column: 15, scope: !5)
!80 = !DILocation(line: 55, column: 4, scope: !5)
!81 = !DILocation(line: 58, column: 15, scope: !5)
!82 = !DILocation(line: 58, column: 15, scope: !5)
!83 = !DILocation(line: 58, column: 15, scope: !5)
!84 = !DILocation(line: 58, column: 4, scope: !5)
!85 = !DILocation(line: 61, column: 15, scope: !5)
!86 = !DILocation(line: 61, column: 15, scope: !5)
!87 = !DILocation(line: 61, column: 15, scope: !5)
!88 = !DILocation(line: 61, column: 4, scope: !5)
!89 = !DILocation(line: 64, column: 15, scope: !5)
!90 = !DILocation(line: 64, column: 15, scope: !5)
!91 = !DILocation(line: 64, column: 15, scope: !5)
!92 = !DILocation(line: 64, column: 4, scope: !5)
!93 = !DILocation(line: 67, column: 15, scope: !5)
!94 = !DILocation(line: 67, column: 15, scope: !5)
!95 = !DILocation(line: 67, column: 15, scope: !5)
!96 = !DILocation(line: 67, column: 4, scope: !5)
!97 = !DILocation(line: 68, column: 0, scope: !5)
