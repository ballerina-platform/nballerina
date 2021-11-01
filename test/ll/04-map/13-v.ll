@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
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
  %9 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 0)
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
  br i1 %48, label %77, label %49
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
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 576460752303423488
  br i1 %71, label %85, label %89
72:
  %73 = load i64, i64* %i
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %i
  br label %50
75:
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %45
  call void @_bal_panic(i8 addrspace(1)* %76)
  unreachable
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %78)
  unreachable
79:
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %81 = addrspacecast i8 addrspace(1)* %80 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = and i64 %82, 2233785415175766016
  %84 = icmp eq i64 %83, 504403158265495552
  br i1 %84, label %95, label %101
85:
  %86 = call double @_bal_tagged_to_float(i8 addrspace(1)* %67)
  %87 = call {i64, i1} @_bal_float_to_int(double %86)
  %88 = extractvalue {i64, i1} %87, 1
  br i1 %88, label %93, label %90
89:
  store i8 addrspace(1)* %67, i8 addrspace(1)** %7
  br label %79
90:
  %91 = extractvalue {i64, i1} %87, 0
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %91)
  store i8 addrspace(1)* %92, i8 addrspace(1)** %7
  br label %79
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 9219), !dbg !16
  store i8 addrspace(1)* %94, i8 addrspace(1)** %45
  br label %75
95:
  %96 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %80)
  store i64 %96, i64* %8
  %97 = load i64, i64* %res
  %98 = load i64, i64* %8
  %99 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %97, i64 %98)
  %100 = extractvalue {i64, i1} %99, 1
  br i1 %100, label %115, label %103
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 9219), !dbg !16
  store i8 addrspace(1)* %102, i8 addrspace(1)** %45
  br label %75
103:
  %104 = extractvalue {i64, i1} %99, 0
  store i64 %104, i64* %9
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %106 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %105, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %106, i8 addrspace(1)** %10
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %109 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %108, i8 addrspace(1)* %107)
  store i8 addrspace(1)* %109, i8 addrspace(1)** %11
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %111 = addrspacecast i8 addrspace(1)* %110 to i8*
  %112 = ptrtoint i8* %111 to i64
  %113 = and i64 %112, 2233785415175766016
  %114 = icmp eq i64 %113, 576460752303423488
  br i1 %114, label %123, label %127
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !16
  store i8 addrspace(1)* %116, i8 addrspace(1)** %45
  br label %75
117:
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %119 = addrspacecast i8 addrspace(1)* %118 to i8*
  %120 = ptrtoint i8* %119 to i64
  %121 = and i64 %120, 2233785415175766016
  %122 = icmp eq i64 %121, 504403158265495552
  br i1 %122, label %133, label %139
123:
  %124 = call double @_bal_tagged_to_float(i8 addrspace(1)* %110)
  %125 = call {i64, i1} @_bal_float_to_int(double %124)
  %126 = extractvalue {i64, i1} %125, 1
  br i1 %126, label %131, label %128
127:
  store i8 addrspace(1)* %110, i8 addrspace(1)** %12
  br label %117
128:
  %129 = extractvalue {i64, i1} %125, 0
  %130 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %129)
  store i8 addrspace(1)* %130, i8 addrspace(1)** %12
  br label %117
131:
  %132 = call i8 addrspace(1)* @_bal_panic_construct(i64 9475), !dbg !16
  store i8 addrspace(1)* %132, i8 addrspace(1)** %45
  br label %75
133:
  %134 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %118)
  store i64 %134, i64* %13
  %135 = load i64, i64* %9
  %136 = load i64, i64* %13
  %137 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %135, i64 %136)
  %138 = extractvalue {i64, i1} %137, 1
  br i1 %138, label %153, label %141
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 9475), !dbg !16
  store i8 addrspace(1)* %140, i8 addrspace(1)** %45
  br label %75
141:
  %142 = extractvalue {i64, i1} %137, 0
  store i64 %142, i64* %14
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %144 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %143, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %144, i8 addrspace(1)** %15
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %147 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %146, i8 addrspace(1)* %145)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %16
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %149 = addrspacecast i8 addrspace(1)* %148 to i8*
  %150 = ptrtoint i8* %149 to i64
  %151 = and i64 %150, 2233785415175766016
  %152 = icmp eq i64 %151, 576460752303423488
  br i1 %152, label %161, label %165
153:
  %154 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473), !dbg !16
  store i8 addrspace(1)* %154, i8 addrspace(1)** %45
  br label %75
155:
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %157 = addrspacecast i8 addrspace(1)* %156 to i8*
  %158 = ptrtoint i8* %157 to i64
  %159 = and i64 %158, 2233785415175766016
  %160 = icmp eq i64 %159, 504403158265495552
  br i1 %160, label %171, label %177
161:
  %162 = call double @_bal_tagged_to_float(i8 addrspace(1)* %148)
  %163 = call {i64, i1} @_bal_float_to_int(double %162)
  %164 = extractvalue {i64, i1} %163, 1
  br i1 %164, label %169, label %166
165:
  store i8 addrspace(1)* %148, i8 addrspace(1)** %17
  br label %155
166:
  %167 = extractvalue {i64, i1} %163, 0
  %168 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %167)
  store i8 addrspace(1)* %168, i8 addrspace(1)** %17
  br label %155
169:
  %170 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731), !dbg !16
  store i8 addrspace(1)* %170, i8 addrspace(1)** %45
  br label %75
171:
  %172 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %156)
  store i64 %172, i64* %18
  %173 = load i64, i64* %14
  %174 = load i64, i64* %18
  %175 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %173, i64 %174)
  %176 = extractvalue {i64, i1} %175, 1
  br i1 %176, label %191, label %179
177:
  %178 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731), !dbg !16
  store i8 addrspace(1)* %178, i8 addrspace(1)** %45
  br label %75
179:
  %180 = extractvalue {i64, i1} %175, 0
  store i64 %180, i64* %19
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %182 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %181, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %182, i8 addrspace(1)** %20
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %185 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %184, i8 addrspace(1)* %183)
  store i8 addrspace(1)* %185, i8 addrspace(1)** %21
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %187 = addrspacecast i8 addrspace(1)* %186 to i8*
  %188 = ptrtoint i8* %187 to i64
  %189 = and i64 %188, 2233785415175766016
  %190 = icmp eq i64 %189, 576460752303423488
  br i1 %190, label %199, label %203
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !16
  store i8 addrspace(1)* %192, i8 addrspace(1)** %45
  br label %75
193:
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %195 = addrspacecast i8 addrspace(1)* %194 to i8*
  %196 = ptrtoint i8* %195 to i64
  %197 = and i64 %196, 2233785415175766016
  %198 = icmp eq i64 %197, 504403158265495552
  br i1 %198, label %209, label %215
199:
  %200 = call double @_bal_tagged_to_float(i8 addrspace(1)* %186)
  %201 = call {i64, i1} @_bal_float_to_int(double %200)
  %202 = extractvalue {i64, i1} %201, 1
  br i1 %202, label %207, label %204
203:
  store i8 addrspace(1)* %186, i8 addrspace(1)** %22
  br label %193
204:
  %205 = extractvalue {i64, i1} %201, 0
  %206 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %205)
  store i8 addrspace(1)* %206, i8 addrspace(1)** %22
  br label %193
207:
  %208 = call i8 addrspace(1)* @_bal_panic_construct(i64 9987), !dbg !16
  store i8 addrspace(1)* %208, i8 addrspace(1)** %45
  br label %75
209:
  %210 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %194)
  store i64 %210, i64* %23
  %211 = load i64, i64* %19
  %212 = load i64, i64* %23
  %213 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %211, i64 %212)
  %214 = extractvalue {i64, i1} %213, 1
  br i1 %214, label %229, label %217
215:
  %216 = call i8 addrspace(1)* @_bal_panic_construct(i64 9987), !dbg !16
  store i8 addrspace(1)* %216, i8 addrspace(1)** %45
  br label %75
217:
  %218 = extractvalue {i64, i1} %213, 0
  store i64 %218, i64* %24
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %220 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %219, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %220, i8 addrspace(1)** %25
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %223 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %222, i8 addrspace(1)* %221)
  store i8 addrspace(1)* %223, i8 addrspace(1)** %26
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %225 = addrspacecast i8 addrspace(1)* %224 to i8*
  %226 = ptrtoint i8* %225 to i64
  %227 = and i64 %226, 2233785415175766016
  %228 = icmp eq i64 %227, 576460752303423488
  br i1 %228, label %237, label %241
229:
  %230 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985), !dbg !16
  store i8 addrspace(1)* %230, i8 addrspace(1)** %45
  br label %75
231:
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %233 = addrspacecast i8 addrspace(1)* %232 to i8*
  %234 = ptrtoint i8* %233 to i64
  %235 = and i64 %234, 2233785415175766016
  %236 = icmp eq i64 %235, 504403158265495552
  br i1 %236, label %247, label %253
237:
  %238 = call double @_bal_tagged_to_float(i8 addrspace(1)* %224)
  %239 = call {i64, i1} @_bal_float_to_int(double %238)
  %240 = extractvalue {i64, i1} %239, 1
  br i1 %240, label %245, label %242
241:
  store i8 addrspace(1)* %224, i8 addrspace(1)** %27
  br label %231
242:
  %243 = extractvalue {i64, i1} %239, 0
  %244 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %243)
  store i8 addrspace(1)* %244, i8 addrspace(1)** %27
  br label %231
245:
  %246 = call i8 addrspace(1)* @_bal_panic_construct(i64 10243), !dbg !16
  store i8 addrspace(1)* %246, i8 addrspace(1)** %45
  br label %75
247:
  %248 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %232)
  store i64 %248, i64* %28
  %249 = load i64, i64* %24
  %250 = load i64, i64* %28
  %251 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %249, i64 %250)
  %252 = extractvalue {i64, i1} %251, 1
  br i1 %252, label %267, label %255
253:
  %254 = call i8 addrspace(1)* @_bal_panic_construct(i64 10243), !dbg !16
  store i8 addrspace(1)* %254, i8 addrspace(1)** %45
  br label %75
255:
  %256 = extractvalue {i64, i1} %251, 0
  store i64 %256, i64* %29
  %257 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %258 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %257, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %258, i8 addrspace(1)** %30
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %261 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %260, i8 addrspace(1)* %259)
  store i8 addrspace(1)* %261, i8 addrspace(1)** %31
  %262 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  %263 = addrspacecast i8 addrspace(1)* %262 to i8*
  %264 = ptrtoint i8* %263 to i64
  %265 = and i64 %264, 2233785415175766016
  %266 = icmp eq i64 %265, 576460752303423488
  br i1 %266, label %275, label %279
267:
  %268 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !16
  store i8 addrspace(1)* %268, i8 addrspace(1)** %45
  br label %75
269:
  %270 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  %271 = addrspacecast i8 addrspace(1)* %270 to i8*
  %272 = ptrtoint i8* %271 to i64
  %273 = and i64 %272, 2233785415175766016
  %274 = icmp eq i64 %273, 504403158265495552
  br i1 %274, label %285, label %291
275:
  %276 = call double @_bal_tagged_to_float(i8 addrspace(1)* %262)
  %277 = call {i64, i1} @_bal_float_to_int(double %276)
  %278 = extractvalue {i64, i1} %277, 1
  br i1 %278, label %283, label %280
279:
  store i8 addrspace(1)* %262, i8 addrspace(1)** %32
  br label %269
280:
  %281 = extractvalue {i64, i1} %277, 0
  %282 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %281)
  store i8 addrspace(1)* %282, i8 addrspace(1)** %32
  br label %269
283:
  %284 = call i8 addrspace(1)* @_bal_panic_construct(i64 10499), !dbg !16
  store i8 addrspace(1)* %284, i8 addrspace(1)** %45
  br label %75
285:
  %286 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %270)
  store i64 %286, i64* %33
  %287 = load i64, i64* %29
  %288 = load i64, i64* %33
  %289 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %287, i64 %288)
  %290 = extractvalue {i64, i1} %289, 1
  br i1 %290, label %305, label %293
291:
  %292 = call i8 addrspace(1)* @_bal_panic_construct(i64 10499), !dbg !16
  store i8 addrspace(1)* %292, i8 addrspace(1)** %45
  br label %75
293:
  %294 = extractvalue {i64, i1} %289, 0
  store i64 %294, i64* %34
  %295 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %296 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %295, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %296, i8 addrspace(1)** %35
  %297 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  %298 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %299 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %298, i8 addrspace(1)* %297)
  store i8 addrspace(1)* %299, i8 addrspace(1)** %36
  %300 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %301 = addrspacecast i8 addrspace(1)* %300 to i8*
  %302 = ptrtoint i8* %301 to i64
  %303 = and i64 %302, 2233785415175766016
  %304 = icmp eq i64 %303, 576460752303423488
  br i1 %304, label %313, label %317
305:
  %306 = call i8 addrspace(1)* @_bal_panic_construct(i64 10497), !dbg !16
  store i8 addrspace(1)* %306, i8 addrspace(1)** %45
  br label %75
307:
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %309 = addrspacecast i8 addrspace(1)* %308 to i8*
  %310 = ptrtoint i8* %309 to i64
  %311 = and i64 %310, 2233785415175766016
  %312 = icmp eq i64 %311, 504403158265495552
  br i1 %312, label %323, label %329
313:
  %314 = call double @_bal_tagged_to_float(i8 addrspace(1)* %300)
  %315 = call {i64, i1} @_bal_float_to_int(double %314)
  %316 = extractvalue {i64, i1} %315, 1
  br i1 %316, label %321, label %318
317:
  store i8 addrspace(1)* %300, i8 addrspace(1)** %37
  br label %307
318:
  %319 = extractvalue {i64, i1} %315, 0
  %320 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %319)
  store i8 addrspace(1)* %320, i8 addrspace(1)** %37
  br label %307
321:
  %322 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755), !dbg !16
  store i8 addrspace(1)* %322, i8 addrspace(1)** %45
  br label %75
323:
  %324 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %308)
  store i64 %324, i64* %38
  %325 = load i64, i64* %34
  %326 = load i64, i64* %38
  %327 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %325, i64 %326)
  %328 = extractvalue {i64, i1} %327, 1
  br i1 %328, label %343, label %331
329:
  %330 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755), !dbg !16
  store i8 addrspace(1)* %330, i8 addrspace(1)** %45
  br label %75
331:
  %332 = extractvalue {i64, i1} %327, 0
  store i64 %332, i64* %39
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %334 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %333, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %334, i8 addrspace(1)** %40
  %335 = load i8 addrspace(1)*, i8 addrspace(1)** %40
  %336 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %337 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %336, i8 addrspace(1)* %335)
  store i8 addrspace(1)* %337, i8 addrspace(1)** %41
  %338 = load i8 addrspace(1)*, i8 addrspace(1)** %41
  %339 = addrspacecast i8 addrspace(1)* %338 to i8*
  %340 = ptrtoint i8* %339 to i64
  %341 = and i64 %340, 2233785415175766016
  %342 = icmp eq i64 %341, 576460752303423488
  br i1 %342, label %351, label %355
343:
  %344 = call i8 addrspace(1)* @_bal_panic_construct(i64 10753), !dbg !16
  store i8 addrspace(1)* %344, i8 addrspace(1)** %45
  br label %75
345:
  %346 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  %347 = addrspacecast i8 addrspace(1)* %346 to i8*
  %348 = ptrtoint i8* %347 to i64
  %349 = and i64 %348, 2233785415175766016
  %350 = icmp eq i64 %349, 504403158265495552
  br i1 %350, label %361, label %367
351:
  %352 = call double @_bal_tagged_to_float(i8 addrspace(1)* %338)
  %353 = call {i64, i1} @_bal_float_to_int(double %352)
  %354 = extractvalue {i64, i1} %353, 1
  br i1 %354, label %359, label %356
355:
  store i8 addrspace(1)* %338, i8 addrspace(1)** %42
  br label %345
356:
  %357 = extractvalue {i64, i1} %353, 0
  %358 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %357)
  store i8 addrspace(1)* %358, i8 addrspace(1)** %42
  br label %345
359:
  %360 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !16
  store i8 addrspace(1)* %360, i8 addrspace(1)** %45
  br label %75
361:
  %362 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %346)
  store i64 %362, i64* %43
  %363 = load i64, i64* %39
  %364 = load i64, i64* %43
  %365 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %363, i64 %364)
  %366 = extractvalue {i64, i1} %365, 1
  br i1 %366, label %372, label %369
367:
  %368 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !16
  store i8 addrspace(1)* %368, i8 addrspace(1)** %45
  br label %75
369:
  %370 = extractvalue {i64, i1} %365, 0
  store i64 %370, i64* %44
  %371 = load i64, i64* %44
  store i64 %371, i64* %res
  br label %72
372:
  %373 = call i8 addrspace(1)* @_bal_panic_construct(i64 11009), !dbg !16
  store i8 addrspace(1)* %373, i8 addrspace(1)** %45
  br label %75
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
