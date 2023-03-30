@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"lhsFalse\00\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"rhsFalse\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca i1
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca i1
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i1
  %27 = alloca i1
  %28 = alloca i1
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i1
  %32 = alloca i1
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca i1
  %37 = alloca i1
  %38 = alloca i1
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %41 = alloca i8
  %42 = load ptr, ptr @_bal_stack_guard
  %43 = icmp ult ptr %41, %42
  br i1 %43, label %213, label %44
44:
  %45 = call i1 @_B04rootlhsTrue(), !dbg !17
  store i1 %45, ptr %1
  %46 = load i1, ptr %1
  br i1 %46, label %47, label %50
47:
  %48 = call i1 @_B04rootrhsTrue(), !dbg !18
  store i1 %48, ptr %2
  %49 = load i1, ptr %2
  br i1 %49, label %51, label %50
50:
  store i1 0, ptr %3
  br label %52
51:
  store i1 1, ptr %3
  br label %52
52:
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load i1, ptr %3
  %58 = zext i1 %57 to i64
  %59 = or i64 %58, 72057594037927936
  %60 = getelementptr i8, ptr addrspace(1) null, i64 %59
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %4
  %65 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !20
  store ptr addrspace(1) null, ptr %5
  %66 = call i1 @_B04rootlhsFalse(), !dbg !21
  store i1 %66, ptr %6
  %67 = load i1, ptr %6
  br i1 %67, label %68, label %71
68:
  %69 = call i1 @_B04rootrhsTrue(), !dbg !22
  store i1 %69, ptr %7
  %70 = load i1, ptr %7
  br i1 %70, label %72, label %71
71:
  store i1 0, ptr %8
  br label %73
72:
  store i1 1, ptr %8
  br label %73
73:
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load i1, ptr %8
  %79 = zext i1 %78 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %9
  %86 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !24
  store ptr addrspace(1) null, ptr %10
  %87 = call i1 @_B04rootlhsTrue(), !dbg !25
  store i1 %87, ptr %11
  %88 = load i1, ptr %11
  br i1 %88, label %89, label %92
89:
  %90 = call i1 @_B04rootrhsFalse(), !dbg !26
  store i1 %90, ptr %12
  %91 = load i1, ptr %12
  br i1 %91, label %93, label %92
92:
  store i1 0, ptr %13
  br label %94
93:
  store i1 1, ptr %13
  br label %94
94:
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load i1, ptr %13
  %100 = zext i1 %99 to i64
  %101 = or i64 %100, 72057594037927936
  %102 = getelementptr i8, ptr addrspace(1) null, i64 %101
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %14
  %107 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !28
  store ptr addrspace(1) null, ptr %15
  %108 = call i1 @_B04rootlhsFalse(), !dbg !29
  store i1 %108, ptr %16
  %109 = load i1, ptr %16
  br i1 %109, label %110, label %113
110:
  %111 = call i1 @_B04rootrhsFalse(), !dbg !30
  store i1 %111, ptr %17
  %112 = load i1, ptr %17
  br i1 %112, label %114, label %113
113:
  store i1 0, ptr %18
  br label %115
114:
  store i1 1, ptr %18
  br label %115
115:
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load i1, ptr %18
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, ptr addrspace(1) null, i64 %122
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %19
  %128 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !32
  store ptr addrspace(1) null, ptr %20
  %129 = call i1 @_B04rootlhsTrue(), !dbg !33
  store i1 %129, ptr %21
  %130 = load i1, ptr %21
  br i1 %130, label %131, label %132
131:
  store i1 1, ptr %23
  br label %136
132:
  %133 = call i1 @_B04rootrhsTrue(), !dbg !34
  store i1 %133, ptr %22
  %134 = load i1, ptr %22
  br i1 %134, label %131, label %135
135:
  store i1 0, ptr %23
  br label %136
136:
  %137 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 3
  %139 = load ptr addrspace(1), ptr addrspace(1) %138, align 8
  %140 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %141 = load i1, ptr %23
  %142 = zext i1 %141 to i64
  %143 = or i64 %142, 72057594037927936
  %144 = getelementptr i8, ptr addrspace(1) null, i64 %143
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %140, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %24
  %149 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !36
  store ptr addrspace(1) null, ptr %25
  %150 = call i1 @_B04rootlhsFalse(), !dbg !37
  store i1 %150, ptr %26
  %151 = load i1, ptr %26
  br i1 %151, label %152, label %153
152:
  store i1 1, ptr %28
  br label %157
153:
  %154 = call i1 @_B04rootrhsTrue(), !dbg !38
  store i1 %154, ptr %27
  %155 = load i1, ptr %27
  br i1 %155, label %152, label %156
156:
  store i1 0, ptr %28
  br label %157
157:
  %158 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 3
  %160 = load ptr addrspace(1), ptr addrspace(1) %159, align 8
  %161 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %162 = load i1, ptr %28
  %163 = zext i1 %162 to i64
  %164 = or i64 %163, 72057594037927936
  %165 = getelementptr i8, ptr addrspace(1) null, i64 %164
  %166 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %161, i64 0, i64 0
  store ptr addrspace(1) %165, ptr addrspace(1) %166
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 1
  store i64 1, ptr addrspace(1) %167
  %168 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %169 = getelementptr i8, ptr addrspace(1) %168, i64 864691128455135236
  store ptr addrspace(1) %169, ptr %29
  %170 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %170), !dbg !40
  store ptr addrspace(1) null, ptr %30
  %171 = call i1 @_B04rootlhsTrue(), !dbg !41
  store i1 %171, ptr %31
  %172 = load i1, ptr %31
  br i1 %172, label %173, label %174
173:
  store i1 1, ptr %33
  br label %178
174:
  %175 = call i1 @_B04rootrhsFalse(), !dbg !42
  store i1 %175, ptr %32
  %176 = load i1, ptr %32
  br i1 %176, label %173, label %177
177:
  store i1 0, ptr %33
  br label %178
178:
  %179 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 3
  %181 = load ptr addrspace(1), ptr addrspace(1) %180, align 8
  %182 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %183 = load i1, ptr %33
  %184 = zext i1 %183 to i64
  %185 = or i64 %184, 72057594037927936
  %186 = getelementptr i8, ptr addrspace(1) null, i64 %185
  %187 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %182, i64 0, i64 0
  store ptr addrspace(1) %186, ptr addrspace(1) %187
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 1
  store i64 1, ptr addrspace(1) %188
  %189 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %190 = getelementptr i8, ptr addrspace(1) %189, i64 864691128455135236
  store ptr addrspace(1) %190, ptr %34
  %191 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %191), !dbg !44
  store ptr addrspace(1) null, ptr %35
  %192 = call i1 @_B04rootlhsFalse(), !dbg !45
  store i1 %192, ptr %36
  %193 = load i1, ptr %36
  br i1 %193, label %194, label %195
194:
  store i1 1, ptr %38
  br label %199
195:
  %196 = call i1 @_B04rootrhsFalse(), !dbg !46
  store i1 %196, ptr %37
  %197 = load i1, ptr %37
  br i1 %197, label %194, label %198
198:
  store i1 0, ptr %38
  br label %199
199:
  %200 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !47
  %201 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %200, i64 0, i32 3
  %202 = load ptr addrspace(1), ptr addrspace(1) %201, align 8
  %203 = bitcast ptr addrspace(1) %202 to ptr addrspace(1)
  %204 = load i1, ptr %38
  %205 = zext i1 %204 to i64
  %206 = or i64 %205, 72057594037927936
  %207 = getelementptr i8, ptr addrspace(1) null, i64 %206
  %208 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %203, i64 0, i64 0
  store ptr addrspace(1) %207, ptr addrspace(1) %208
  %209 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %200, i64 0, i32 1
  store i64 1, ptr addrspace(1) %209
  %210 = bitcast ptr addrspace(1) %200 to ptr addrspace(1)
  %211 = getelementptr i8, ptr addrspace(1) %210, i64 864691128455135236
  store ptr addrspace(1) %211, ptr %39
  %212 = load ptr addrspace(1), ptr %39
  call void @_Bb02ioprintln(ptr addrspace(1) %212), !dbg !48
  store ptr addrspace(1) null, ptr %40
  ret void
213:
  %214 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %214), !dbg !16
  unreachable
}
define i1 @_B04rootlhsTrue() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !51
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2694689085954680940), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !52
  store ptr addrspace(1) null, ptr %2
  ret i1 1
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 8196), !dbg !49
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !50
  unreachable
}
define i1 @_B04rootrhsTrue() !dbg !9 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !55
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2694689085954680946), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !56
  store ptr addrspace(1) null, ptr %2
  ret i1 1
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 9476), !dbg !53
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !54
  unreachable
}
define i1 @_B04rootlhsFalse() !dbg !11 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !60
  store ptr addrspace(1) null, ptr %2
  ret i1 0
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 10756), !dbg !57
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !58
  unreachable
}
define i1 @_B04rootrhsFalse() !dbg !13 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !63
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str3 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !64
  store ptr addrspace(1) null, ptr %2
  ret i1 0
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 12036), !dbg !61
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !62
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"lhsTrue", linkageName:"_B04rootlhsTrue", scope: !1, file: !1, line: 32, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"rhsTrue", linkageName:"_B04rootrhsTrue", scope: !1, file: !1, line: 37, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"lhsFalse", linkageName:"_B04rootlhsFalse", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"rhsFalse", linkageName:"_B04rootrhsFalse", scope: !1, file: !1, line: 47, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = !DILocation(line: 0, column: 0, scope: !5)
!16 = !DILocation(line: 2, column: 16, scope: !5)
!17 = !DILocation(line: 3, column: 15, scope: !5)
!18 = !DILocation(line: 3, column: 28, scope: !5)
!19 = !DILocation(line: 3, column: 15, scope: !5)
!20 = !DILocation(line: 3, column: 4, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 29, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 4, scope: !5)
!25 = !DILocation(line: 10, column: 15, scope: !5)
!26 = !DILocation(line: 10, column: 28, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 4, scope: !5)
!29 = !DILocation(line: 14, column: 15, scope: !5)
!30 = !DILocation(line: 14, column: 29, scope: !5)
!31 = !DILocation(line: 14, column: 15, scope: !5)
!32 = !DILocation(line: 14, column: 4, scope: !5)
!33 = !DILocation(line: 17, column: 15, scope: !5)
!34 = !DILocation(line: 17, column: 28, scope: !5)
!35 = !DILocation(line: 17, column: 15, scope: !5)
!36 = !DILocation(line: 17, column: 4, scope: !5)
!37 = !DILocation(line: 20, column: 15, scope: !5)
!38 = !DILocation(line: 20, column: 29, scope: !5)
!39 = !DILocation(line: 20, column: 15, scope: !5)
!40 = !DILocation(line: 20, column: 4, scope: !5)
!41 = !DILocation(line: 24, column: 15, scope: !5)
!42 = !DILocation(line: 24, column: 28, scope: !5)
!43 = !DILocation(line: 24, column: 15, scope: !5)
!44 = !DILocation(line: 24, column: 4, scope: !5)
!45 = !DILocation(line: 27, column: 15, scope: !5)
!46 = !DILocation(line: 27, column: 29, scope: !5)
!47 = !DILocation(line: 27, column: 15, scope: !5)
!48 = !DILocation(line: 27, column: 4, scope: !5)
!49 = !DILocation(line: 0, column: 0, scope: !7)
!50 = !DILocation(line: 32, column: 16, scope: !7)
!51 = !DILocation(line: 33, column: 15, scope: !7)
!52 = !DILocation(line: 33, column: 4, scope: !7)
!53 = !DILocation(line: 0, column: 0, scope: !9)
!54 = !DILocation(line: 37, column: 16, scope: !9)
!55 = !DILocation(line: 38, column: 15, scope: !9)
!56 = !DILocation(line: 38, column: 4, scope: !9)
!57 = !DILocation(line: 0, column: 0, scope: !11)
!58 = !DILocation(line: 42, column: 16, scope: !11)
!59 = !DILocation(line: 43, column: 15, scope: !11)
!60 = !DILocation(line: 43, column: 4, scope: !11)
!61 = !DILocation(line: 0, column: 0, scope: !13)
!62 = !DILocation(line: 47, column: 16, scope: !13)
!63 = !DILocation(line: 48, column: 15, scope: !13)
!64 = !DILocation(line: 48, column: 4, scope: !13)
