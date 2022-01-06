@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %max = alloca i64
  %m = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  store i64 16, i64* %max
  %9 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m, !dbg !12
  %12 = load i64, i64* %max, !dbg !12
  call void @_B_populate(i8 addrspace(1)* %11, i64 %12), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %m, !dbg !13
  %14 = load i64, i64* %max, !dbg !13
  %15 = call i64 @_B_retrieve(i8 addrspace(1)* %13, i64 %14), !dbg !13
  store i64 %15, i64* %3, !dbg !13
  %16 = load i64, i64* %3, !dbg !14
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  ret void
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
}
define internal void @_B_populate(i8 addrspace(1)* %0, i64 %1) !dbg !7 {
  %m = alloca i8 addrspace(1)*
  %max = alloca i64
  %x = alloca i8 addrspace(1)*
  %xLen = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %46, label %26
26:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i64 %1, i64* %max
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)** %x
  store i64 1, i64* %xLen
  store i64 0, i64* %i
  br label %27
27:
  %28 = load i64, i64* %i
  %29 = load i64, i64* %max
  %30 = icmp slt i64 %28, %29
  store i1 %30, i1* %3
  %31 = load i1, i1* %3
  br i1 %31, label %33, label %32
32:
  ret void
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %36 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %4
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %37, i8 addrspace(1)** %x
  %38 = load i64, i64* %xLen
  %39 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %38, i64 2)
  %40 = extractvalue {i64, i1} %39, 1
  br i1 %40, label %56, label %48
41:
  %42 = load i64, i64* %i
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %i
  br label %27
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %45)
  unreachable
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %47)
  unreachable
48:
  %49 = extractvalue {i64, i1} %39, 0
  store i64 %49, i64* %5
  %50 = load i64, i64* %5
  store i64 %50, i64* %xLen
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %52 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %51, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247))
  store i8 addrspace(1)* %52, i8 addrspace(1)** %6
  %53 = load i64, i64* %xLen
  %54 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %53, i64 0)
  %55 = extractvalue {i64, i1} %54, 1
  br i1 %55, label %66, label %58
56:
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !15
  store i8 addrspace(1)* %57, i8 addrspace(1)** %22
  br label %44
58:
  %59 = extractvalue {i64, i1} %54, 0
  store i64 %59, i64* %7
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %62 = load i64, i64* %7
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  %64 = call i64 @_bal_mapping_set(i8 addrspace(1)* %61, i8 addrspace(1)* %60, i8 addrspace(1)* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %68, label %74
66:
  %67 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609), !dbg !15
  store i8 addrspace(1)* %67, i8 addrspace(1)** %22
  br label %44
68:
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %70 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %69, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %70, i8 addrspace(1)** %8
  %71 = load i64, i64* %xLen
  %72 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %71, i64 1)
  %73 = extractvalue {i64, i1} %72, 1
  br i1 %73, label %85, label %77
74:
  %75 = or i64 %64, 4608
  %76 = call i8 addrspace(1)* @_bal_panic_construct(i64 %75), !dbg !15
  store i8 addrspace(1)* %76, i8 addrspace(1)** %22
  br label %44
77:
  %78 = extractvalue {i64, i1} %72, 0
  store i64 %78, i64* %9
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %81 = load i64, i64* %9
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81)
  %83 = call i64 @_bal_mapping_set(i8 addrspace(1)* %80, i8 addrspace(1)* %79, i8 addrspace(1)* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %87, label %93
85:
  %86 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !15
  store i8 addrspace(1)* %86, i8 addrspace(1)** %22
  br label %44
87:
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %89 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %88, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %89, i8 addrspace(1)** %10
  %90 = load i64, i64* %xLen
  %91 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %90, i64 2)
  %92 = extractvalue {i64, i1} %91, 1
  br i1 %92, label %104, label %96
93:
  %94 = or i64 %83, 4864
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 %94), !dbg !15
  store i8 addrspace(1)* %95, i8 addrspace(1)** %22
  br label %44
96:
  %97 = extractvalue {i64, i1} %91, 0
  store i64 %97, i64* %11
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %100 = load i64, i64* %11
  %101 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %100)
  %102 = call i64 @_bal_mapping_set(i8 addrspace(1)* %99, i8 addrspace(1)* %98, i8 addrspace(1)* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %106, label %112
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !15
  store i8 addrspace(1)* %105, i8 addrspace(1)** %22
  br label %44
106:
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %108 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %107, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %108, i8 addrspace(1)** %12
  %109 = load i64, i64* %xLen
  %110 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %109, i64 3)
  %111 = extractvalue {i64, i1} %110, 1
  br i1 %111, label %123, label %115
112:
  %113 = or i64 %102, 5120
  %114 = call i8 addrspace(1)* @_bal_panic_construct(i64 %113), !dbg !15
  store i8 addrspace(1)* %114, i8 addrspace(1)** %22
  br label %44
115:
  %116 = extractvalue {i64, i1} %110, 0
  store i64 %116, i64* %13
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %119 = load i64, i64* %13
  %120 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %119)
  %121 = call i64 @_bal_mapping_set(i8 addrspace(1)* %118, i8 addrspace(1)* %117, i8 addrspace(1)* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %125, label %131
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 5377), !dbg !15
  store i8 addrspace(1)* %124, i8 addrspace(1)** %22
  br label %44
125:
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %127 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %126, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %127, i8 addrspace(1)** %14
  %128 = load i64, i64* %xLen
  %129 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %128, i64 4)
  %130 = extractvalue {i64, i1} %129, 1
  br i1 %130, label %142, label %134
131:
  %132 = or i64 %121, 5376
  %133 = call i8 addrspace(1)* @_bal_panic_construct(i64 %132), !dbg !15
  store i8 addrspace(1)* %133, i8 addrspace(1)** %22
  br label %44
134:
  %135 = extractvalue {i64, i1} %129, 0
  store i64 %135, i64* %15
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %138 = load i64, i64* %15
  %139 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %138)
  %140 = call i64 @_bal_mapping_set(i8 addrspace(1)* %137, i8 addrspace(1)* %136, i8 addrspace(1)* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %144, label %150
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633), !dbg !15
  store i8 addrspace(1)* %143, i8 addrspace(1)** %22
  br label %44
144:
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %146 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %145, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %146, i8 addrspace(1)** %16
  %147 = load i64, i64* %xLen
  %148 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %147, i64 5)
  %149 = extractvalue {i64, i1} %148, 1
  br i1 %149, label %161, label %153
150:
  %151 = or i64 %140, 5632
  %152 = call i8 addrspace(1)* @_bal_panic_construct(i64 %151), !dbg !15
  store i8 addrspace(1)* %152, i8 addrspace(1)** %22
  br label %44
153:
  %154 = extractvalue {i64, i1} %148, 0
  store i64 %154, i64* %17
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %157 = load i64, i64* %17
  %158 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %157)
  %159 = call i64 @_bal_mapping_set(i8 addrspace(1)* %156, i8 addrspace(1)* %155, i8 addrspace(1)* %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %163, label %169
161:
  %162 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889), !dbg !15
  store i8 addrspace(1)* %162, i8 addrspace(1)** %22
  br label %44
163:
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %165 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %164, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %165, i8 addrspace(1)** %18
  %166 = load i64, i64* %xLen
  %167 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %166, i64 6)
  %168 = extractvalue {i64, i1} %167, 1
  br i1 %168, label %180, label %172
169:
  %170 = or i64 %159, 5888
  %171 = call i8 addrspace(1)* @_bal_panic_construct(i64 %170), !dbg !15
  store i8 addrspace(1)* %171, i8 addrspace(1)** %22
  br label %44
172:
  %173 = extractvalue {i64, i1} %167, 0
  store i64 %173, i64* %19
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %176 = load i64, i64* %19
  %177 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %176)
  %178 = call i64 @_bal_mapping_set(i8 addrspace(1)* %175, i8 addrspace(1)* %174, i8 addrspace(1)* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %182, label %188
180:
  %181 = call i8 addrspace(1)* @_bal_panic_construct(i64 6145), !dbg !15
  store i8 addrspace(1)* %181, i8 addrspace(1)** %22
  br label %44
182:
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %184 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %183, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %184, i8 addrspace(1)** %20
  %185 = load i64, i64* %xLen
  %186 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %185, i64 7)
  %187 = extractvalue {i64, i1} %186, 1
  br i1 %187, label %199, label %191
188:
  %189 = or i64 %178, 6144
  %190 = call i8 addrspace(1)* @_bal_panic_construct(i64 %189), !dbg !15
  store i8 addrspace(1)* %190, i8 addrspace(1)** %22
  br label %44
191:
  %192 = extractvalue {i64, i1} %186, 0
  store i64 %192, i64* %21
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %195 = load i64, i64* %21
  %196 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %195)
  %197 = call i64 @_bal_mapping_set(i8 addrspace(1)* %194, i8 addrspace(1)* %193, i8 addrspace(1)* %196)
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %201, label %202
199:
  %200 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401), !dbg !15
  store i8 addrspace(1)* %200, i8 addrspace(1)** %22
  br label %44
201:
  br label %41
202:
  %203 = or i64 %197, 6400
  %204 = call i8 addrspace(1)* @_bal_panic_construct(i64 %203), !dbg !15
  store i8 addrspace(1)* %204, i8 addrspace(1)** %22
  br label %44
}
define internal i64 @_B_retrieve(i8 addrspace(1)* %0, i64 %1) !dbg !9 {
  %m = alloca i8 addrspace(1)*
  %max = alloca i64
  %x = alloca i8 addrspace(1)*
  %res = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i8
  %47 = load i8*, i8** @_bal_stack_guard
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %76, label %49
49:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i64 %1, i64* %max
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)** %x
  store i64 0, i64* %res
  store i64 0, i64* %i
  br label %50
50:
  %51 = load i64, i64* %i
  %52 = load i64, i64* %max
  %53 = icmp slt i64 %51, %52
  store i1 %53, i1* %3
  %54 = load i1, i1* %3
  br i1 %54, label %57, label %55
55:
  %56 = load i64, i64* %res
  ret i64 %56
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %60 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %58, i8 addrspace(1)* %59)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %4
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %61, i8 addrspace(1)** %x
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %63 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %62, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247))
  store i8 addrspace(1)* %63, i8 addrspace(1)** %5
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %66 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %65, i8 addrspace(1)* %64)
  %67 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %65, i8 addrspace(1)* %66)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %6
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %69 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %68)
  %70 = extractvalue {i8 addrspace(1)*, i1} %69, 1
  br i1 %70, label %85, label %78
71:
  %72 = load i64, i64* %i
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %i
  br label %50
74:
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %45
  call void @_bal_panic(i8 addrspace(1)* %75)
  unreachable
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %77)
  unreachable
78:
  %79 = extractvalue {i8 addrspace(1)*, i1} %69, 0
  store i8 addrspace(1)* %79, i8 addrspace(1)** %7
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %81 = addrspacecast i8 addrspace(1)* %80 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = and i64 %82, 2233785415175766016
  %84 = icmp eq i64 %83, 504403158265495552
  br i1 %84, label %87, label %93
85:
  %86 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !16
  store i8 addrspace(1)* %86, i8 addrspace(1)** %45
  br label %74
87:
  %88 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %80)
  store i64 %88, i64* %8
  %89 = load i64, i64* %res
  %90 = load i64, i64* %8
  %91 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %89, i64 %90)
  %92 = extractvalue {i64, i1} %91, 1
  br i1 %92, label %106, label %95
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 9219), !dbg !16
  store i8 addrspace(1)* %94, i8 addrspace(1)** %45
  br label %74
95:
  %96 = extractvalue {i64, i1} %91, 0
  store i64 %96, i64* %9
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %98 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %97, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %98, i8 addrspace(1)** %10
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %101 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %100, i8 addrspace(1)* %99)
  %102 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  store i8 addrspace(1)* %102, i8 addrspace(1)** %11
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %104 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %103)
  %105 = extractvalue {i8 addrspace(1)*, i1} %104, 1
  br i1 %105, label %115, label %108
106:
  %107 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !16
  store i8 addrspace(1)* %107, i8 addrspace(1)** %45
  br label %74
108:
  %109 = extractvalue {i8 addrspace(1)*, i1} %104, 0
  store i8 addrspace(1)* %109, i8 addrspace(1)** %12
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %111 = addrspacecast i8 addrspace(1)* %110 to i8*
  %112 = ptrtoint i8* %111 to i64
  %113 = and i64 %112, 2233785415175766016
  %114 = icmp eq i64 %113, 504403158265495552
  br i1 %114, label %117, label %123
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473), !dbg !16
  store i8 addrspace(1)* %116, i8 addrspace(1)** %45
  br label %74
117:
  %118 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %110)
  store i64 %118, i64* %13
  %119 = load i64, i64* %9
  %120 = load i64, i64* %13
  %121 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %119, i64 %120)
  %122 = extractvalue {i64, i1} %121, 1
  br i1 %122, label %136, label %125
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 9475), !dbg !16
  store i8 addrspace(1)* %124, i8 addrspace(1)** %45
  br label %74
125:
  %126 = extractvalue {i64, i1} %121, 0
  store i64 %126, i64* %14
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %128 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %127, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %128, i8 addrspace(1)** %15
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %131 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %130, i8 addrspace(1)* %129)
  %132 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %130, i8 addrspace(1)* %131)
  store i8 addrspace(1)* %132, i8 addrspace(1)** %16
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %134 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %133)
  %135 = extractvalue {i8 addrspace(1)*, i1} %134, 1
  br i1 %135, label %145, label %138
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473), !dbg !16
  store i8 addrspace(1)* %137, i8 addrspace(1)** %45
  br label %74
138:
  %139 = extractvalue {i8 addrspace(1)*, i1} %134, 0
  store i8 addrspace(1)* %139, i8 addrspace(1)** %17
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %141 = addrspacecast i8 addrspace(1)* %140 to i8*
  %142 = ptrtoint i8* %141 to i64
  %143 = and i64 %142, 2233785415175766016
  %144 = icmp eq i64 %143, 504403158265495552
  br i1 %144, label %147, label %153
145:
  %146 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !16
  store i8 addrspace(1)* %146, i8 addrspace(1)** %45
  br label %74
147:
  %148 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %140)
  store i64 %148, i64* %18
  %149 = load i64, i64* %14
  %150 = load i64, i64* %18
  %151 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %149, i64 %150)
  %152 = extractvalue {i64, i1} %151, 1
  br i1 %152, label %166, label %155
153:
  %154 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731), !dbg !16
  store i8 addrspace(1)* %154, i8 addrspace(1)** %45
  br label %74
155:
  %156 = extractvalue {i64, i1} %151, 0
  store i64 %156, i64* %19
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %158 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %157, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %158, i8 addrspace(1)** %20
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %161 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %160, i8 addrspace(1)* %159)
  %162 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  store i8 addrspace(1)* %162, i8 addrspace(1)** %21
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %164 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %163)
  %165 = extractvalue {i8 addrspace(1)*, i1} %164, 1
  br i1 %165, label %175, label %168
166:
  %167 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !16
  store i8 addrspace(1)* %167, i8 addrspace(1)** %45
  br label %74
168:
  %169 = extractvalue {i8 addrspace(1)*, i1} %164, 0
  store i8 addrspace(1)* %169, i8 addrspace(1)** %22
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %171 = addrspacecast i8 addrspace(1)* %170 to i8*
  %172 = ptrtoint i8* %171 to i64
  %173 = and i64 %172, 2233785415175766016
  %174 = icmp eq i64 %173, 504403158265495552
  br i1 %174, label %177, label %183
175:
  %176 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985), !dbg !16
  store i8 addrspace(1)* %176, i8 addrspace(1)** %45
  br label %74
177:
  %178 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %170)
  store i64 %178, i64* %23
  %179 = load i64, i64* %19
  %180 = load i64, i64* %23
  %181 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %179, i64 %180)
  %182 = extractvalue {i64, i1} %181, 1
  br i1 %182, label %196, label %185
183:
  %184 = call i8 addrspace(1)* @_bal_panic_construct(i64 9987), !dbg !16
  store i8 addrspace(1)* %184, i8 addrspace(1)** %45
  br label %74
185:
  %186 = extractvalue {i64, i1} %181, 0
  store i64 %186, i64* %24
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %188 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %187, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %188, i8 addrspace(1)** %25
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %191 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %190, i8 addrspace(1)* %189)
  %192 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %190, i8 addrspace(1)* %191)
  store i8 addrspace(1)* %192, i8 addrspace(1)** %26
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %194 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %193)
  %195 = extractvalue {i8 addrspace(1)*, i1} %194, 1
  br i1 %195, label %205, label %198
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985), !dbg !16
  store i8 addrspace(1)* %197, i8 addrspace(1)** %45
  br label %74
198:
  %199 = extractvalue {i8 addrspace(1)*, i1} %194, 0
  store i8 addrspace(1)* %199, i8 addrspace(1)** %27
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %201 = addrspacecast i8 addrspace(1)* %200 to i8*
  %202 = ptrtoint i8* %201 to i64
  %203 = and i64 %202, 2233785415175766016
  %204 = icmp eq i64 %203, 504403158265495552
  br i1 %204, label %207, label %213
205:
  %206 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !16
  store i8 addrspace(1)* %206, i8 addrspace(1)** %45
  br label %74
207:
  %208 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %200)
  store i64 %208, i64* %28
  %209 = load i64, i64* %24
  %210 = load i64, i64* %28
  %211 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %209, i64 %210)
  %212 = extractvalue {i64, i1} %211, 1
  br i1 %212, label %226, label %215
213:
  %214 = call i8 addrspace(1)* @_bal_panic_construct(i64 10243), !dbg !16
  store i8 addrspace(1)* %214, i8 addrspace(1)** %45
  br label %74
215:
  %216 = extractvalue {i64, i1} %211, 0
  store i64 %216, i64* %29
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %218 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %217, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %218, i8 addrspace(1)** %30
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %221 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %220, i8 addrspace(1)* %219)
  %222 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %220, i8 addrspace(1)* %221)
  store i8 addrspace(1)* %222, i8 addrspace(1)** %31
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  %224 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %223)
  %225 = extractvalue {i8 addrspace(1)*, i1} %224, 1
  br i1 %225, label %235, label %228
226:
  %227 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !16
  store i8 addrspace(1)* %227, i8 addrspace(1)** %45
  br label %74
228:
  %229 = extractvalue {i8 addrspace(1)*, i1} %224, 0
  store i8 addrspace(1)* %229, i8 addrspace(1)** %32
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  %231 = addrspacecast i8 addrspace(1)* %230 to i8*
  %232 = ptrtoint i8* %231 to i64
  %233 = and i64 %232, 2233785415175766016
  %234 = icmp eq i64 %233, 504403158265495552
  br i1 %234, label %237, label %243
235:
  %236 = call i8 addrspace(1)* @_bal_panic_construct(i64 10497), !dbg !16
  store i8 addrspace(1)* %236, i8 addrspace(1)** %45
  br label %74
237:
  %238 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %230)
  store i64 %238, i64* %33
  %239 = load i64, i64* %29
  %240 = load i64, i64* %33
  %241 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %239, i64 %240)
  %242 = extractvalue {i64, i1} %241, 1
  br i1 %242, label %256, label %245
243:
  %244 = call i8 addrspace(1)* @_bal_panic_construct(i64 10499), !dbg !16
  store i8 addrspace(1)* %244, i8 addrspace(1)** %45
  br label %74
245:
  %246 = extractvalue {i64, i1} %241, 0
  store i64 %246, i64* %34
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %248 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %247, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %248, i8 addrspace(1)** %35
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %251 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %250, i8 addrspace(1)* %249)
  %252 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %250, i8 addrspace(1)* %251)
  store i8 addrspace(1)* %252, i8 addrspace(1)** %36
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %254 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %253)
  %255 = extractvalue {i8 addrspace(1)*, i1} %254, 1
  br i1 %255, label %265, label %258
256:
  %257 = call i8 addrspace(1)* @_bal_panic_construct(i64 10497), !dbg !16
  store i8 addrspace(1)* %257, i8 addrspace(1)** %45
  br label %74
258:
  %259 = extractvalue {i8 addrspace(1)*, i1} %254, 0
  store i8 addrspace(1)* %259, i8 addrspace(1)** %37
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %261 = addrspacecast i8 addrspace(1)* %260 to i8*
  %262 = ptrtoint i8* %261 to i64
  %263 = and i64 %262, 2233785415175766016
  %264 = icmp eq i64 %263, 504403158265495552
  br i1 %264, label %267, label %273
265:
  %266 = call i8 addrspace(1)* @_bal_panic_construct(i64 10753), !dbg !16
  store i8 addrspace(1)* %266, i8 addrspace(1)** %45
  br label %74
267:
  %268 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %260)
  store i64 %268, i64* %38
  %269 = load i64, i64* %34
  %270 = load i64, i64* %38
  %271 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %269, i64 %270)
  %272 = extractvalue {i64, i1} %271, 1
  br i1 %272, label %286, label %275
273:
  %274 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755), !dbg !16
  store i8 addrspace(1)* %274, i8 addrspace(1)** %45
  br label %74
275:
  %276 = extractvalue {i64, i1} %271, 0
  store i64 %276, i64* %39
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %278 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %277, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %278, i8 addrspace(1)** %40
  %279 = load i8 addrspace(1)*, i8 addrspace(1)** %40
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %281 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %280, i8 addrspace(1)* %279)
  %282 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %280, i8 addrspace(1)* %281)
  store i8 addrspace(1)* %282, i8 addrspace(1)** %41
  %283 = load i8 addrspace(1)*, i8 addrspace(1)** %41
  %284 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %283)
  %285 = extractvalue {i8 addrspace(1)*, i1} %284, 1
  br i1 %285, label %295, label %288
286:
  %287 = call i8 addrspace(1)* @_bal_panic_construct(i64 10753), !dbg !16
  store i8 addrspace(1)* %287, i8 addrspace(1)** %45
  br label %74
288:
  %289 = extractvalue {i8 addrspace(1)*, i1} %284, 0
  store i8 addrspace(1)* %289, i8 addrspace(1)** %42
  %290 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  %291 = addrspacecast i8 addrspace(1)* %290 to i8*
  %292 = ptrtoint i8* %291 to i64
  %293 = and i64 %292, 2233785415175766016
  %294 = icmp eq i64 %293, 504403158265495552
  br i1 %294, label %297, label %303
295:
  %296 = call i8 addrspace(1)* @_bal_panic_construct(i64 11009), !dbg !16
  store i8 addrspace(1)* %296, i8 addrspace(1)** %45
  br label %74
297:
  %298 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %290)
  store i64 %298, i64* %43
  %299 = load i64, i64* %39
  %300 = load i64, i64* %43
  %301 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %299, i64 %300)
  %302 = extractvalue {i64, i1} %301, 1
  br i1 %302, label %308, label %305
303:
  %304 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !16
  store i8 addrspace(1)* %304, i8 addrspace(1)** %45
  br label %74
305:
  %306 = extractvalue {i64, i1} %301, 0
  store i64 %306, i64* %44
  %307 = load i64, i64* %44
  store i64 %307, i64* %res
  br label %71
308:
  %309 = call i8 addrspace(1)* @_bal_panic_construct(i64 11009), !dbg !16
  store i8 addrspace(1)* %309, i8 addrspace(1)** %45
  br label %74
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/13-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"populate", linkageName:"_B_populate", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"retrieve", linkageName:"_B_retrieve", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
