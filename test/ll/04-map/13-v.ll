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
  br i1 %48, label %78, label %49
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
  %69 = addrspacecast i8 addrspace(1)* %68 to i8*
  %70 = ptrtoint i8* %69 to i64
  %71 = and i64 %70, 2233785415175766016
  %72 = icmp eq i64 %71, 576460752303423488
  br i1 %72, label %86, label %90
73:
  %74 = load i64, i64* %i
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %i
  br label %50
76:
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %45
  call void @_bal_panic(i8 addrspace(1)* %77)
  unreachable
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %79)
  unreachable
80:
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %82 = addrspacecast i8 addrspace(1)* %81 to i8*
  %83 = ptrtoint i8* %82 to i64
  %84 = and i64 %83, 2233785415175766016
  %85 = icmp eq i64 %84, 504403158265495552
  br i1 %85, label %96, label %102
86:
  %87 = call double @_bal_tagged_to_float(i8 addrspace(1)* %68)
  %88 = call {i64, i1} @_bal_float_to_int(double %87)
  %89 = extractvalue {i64, i1} %88, 1
  br i1 %89, label %94, label %91
90:
  store i8 addrspace(1)* %68, i8 addrspace(1)** %7
  br label %80
91:
  %92 = extractvalue {i64, i1} %88, 0
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92)
  store i8 addrspace(1)* %93, i8 addrspace(1)** %7
  br label %80
94:
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 9219), !dbg !16
  store i8 addrspace(1)* %95, i8 addrspace(1)** %45
  br label %76
96:
  %97 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %81)
  store i64 %97, i64* %8
  %98 = load i64, i64* %res
  %99 = load i64, i64* %8
  %100 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %98, i64 %99)
  %101 = extractvalue {i64, i1} %100, 1
  br i1 %101, label %117, label %104
102:
  %103 = call i8 addrspace(1)* @_bal_panic_construct(i64 9219), !dbg !16
  store i8 addrspace(1)* %103, i8 addrspace(1)** %45
  br label %76
104:
  %105 = extractvalue {i64, i1} %100, 0
  store i64 %105, i64* %9
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %107 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %106, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %107, i8 addrspace(1)** %10
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %110 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %109, i8 addrspace(1)* %108)
  %111 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %109, i8 addrspace(1)* %110)
  store i8 addrspace(1)* %111, i8 addrspace(1)** %11
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %113 = addrspacecast i8 addrspace(1)* %112 to i8*
  %114 = ptrtoint i8* %113 to i64
  %115 = and i64 %114, 2233785415175766016
  %116 = icmp eq i64 %115, 576460752303423488
  br i1 %116, label %125, label %129
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !16
  store i8 addrspace(1)* %118, i8 addrspace(1)** %45
  br label %76
119:
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %121 = addrspacecast i8 addrspace(1)* %120 to i8*
  %122 = ptrtoint i8* %121 to i64
  %123 = and i64 %122, 2233785415175766016
  %124 = icmp eq i64 %123, 504403158265495552
  br i1 %124, label %135, label %141
125:
  %126 = call double @_bal_tagged_to_float(i8 addrspace(1)* %112)
  %127 = call {i64, i1} @_bal_float_to_int(double %126)
  %128 = extractvalue {i64, i1} %127, 1
  br i1 %128, label %133, label %130
129:
  store i8 addrspace(1)* %112, i8 addrspace(1)** %12
  br label %119
130:
  %131 = extractvalue {i64, i1} %127, 0
  %132 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %131)
  store i8 addrspace(1)* %132, i8 addrspace(1)** %12
  br label %119
133:
  %134 = call i8 addrspace(1)* @_bal_panic_construct(i64 9475), !dbg !16
  store i8 addrspace(1)* %134, i8 addrspace(1)** %45
  br label %76
135:
  %136 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %120)
  store i64 %136, i64* %13
  %137 = load i64, i64* %9
  %138 = load i64, i64* %13
  %139 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %137, i64 %138)
  %140 = extractvalue {i64, i1} %139, 1
  br i1 %140, label %156, label %143
141:
  %142 = call i8 addrspace(1)* @_bal_panic_construct(i64 9475), !dbg !16
  store i8 addrspace(1)* %142, i8 addrspace(1)** %45
  br label %76
143:
  %144 = extractvalue {i64, i1} %139, 0
  store i64 %144, i64* %14
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %146 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %145, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %146, i8 addrspace(1)** %15
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %149 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %148, i8 addrspace(1)* %147)
  %150 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %148, i8 addrspace(1)* %149)
  store i8 addrspace(1)* %150, i8 addrspace(1)** %16
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %152 = addrspacecast i8 addrspace(1)* %151 to i8*
  %153 = ptrtoint i8* %152 to i64
  %154 = and i64 %153, 2233785415175766016
  %155 = icmp eq i64 %154, 576460752303423488
  br i1 %155, label %164, label %168
156:
  %157 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473), !dbg !16
  store i8 addrspace(1)* %157, i8 addrspace(1)** %45
  br label %76
158:
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %160 = addrspacecast i8 addrspace(1)* %159 to i8*
  %161 = ptrtoint i8* %160 to i64
  %162 = and i64 %161, 2233785415175766016
  %163 = icmp eq i64 %162, 504403158265495552
  br i1 %163, label %174, label %180
164:
  %165 = call double @_bal_tagged_to_float(i8 addrspace(1)* %151)
  %166 = call {i64, i1} @_bal_float_to_int(double %165)
  %167 = extractvalue {i64, i1} %166, 1
  br i1 %167, label %172, label %169
168:
  store i8 addrspace(1)* %151, i8 addrspace(1)** %17
  br label %158
169:
  %170 = extractvalue {i64, i1} %166, 0
  %171 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %170)
  store i8 addrspace(1)* %171, i8 addrspace(1)** %17
  br label %158
172:
  %173 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731), !dbg !16
  store i8 addrspace(1)* %173, i8 addrspace(1)** %45
  br label %76
174:
  %175 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %159)
  store i64 %175, i64* %18
  %176 = load i64, i64* %14
  %177 = load i64, i64* %18
  %178 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %176, i64 %177)
  %179 = extractvalue {i64, i1} %178, 1
  br i1 %179, label %195, label %182
180:
  %181 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731), !dbg !16
  store i8 addrspace(1)* %181, i8 addrspace(1)** %45
  br label %76
182:
  %183 = extractvalue {i64, i1} %178, 0
  store i64 %183, i64* %19
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %185 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %184, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %185, i8 addrspace(1)** %20
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %188 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %187, i8 addrspace(1)* %186)
  %189 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %187, i8 addrspace(1)* %188)
  store i8 addrspace(1)* %189, i8 addrspace(1)** %21
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %191 = addrspacecast i8 addrspace(1)* %190 to i8*
  %192 = ptrtoint i8* %191 to i64
  %193 = and i64 %192, 2233785415175766016
  %194 = icmp eq i64 %193, 576460752303423488
  br i1 %194, label %203, label %207
195:
  %196 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !16
  store i8 addrspace(1)* %196, i8 addrspace(1)** %45
  br label %76
197:
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %199 = addrspacecast i8 addrspace(1)* %198 to i8*
  %200 = ptrtoint i8* %199 to i64
  %201 = and i64 %200, 2233785415175766016
  %202 = icmp eq i64 %201, 504403158265495552
  br i1 %202, label %213, label %219
203:
  %204 = call double @_bal_tagged_to_float(i8 addrspace(1)* %190)
  %205 = call {i64, i1} @_bal_float_to_int(double %204)
  %206 = extractvalue {i64, i1} %205, 1
  br i1 %206, label %211, label %208
207:
  store i8 addrspace(1)* %190, i8 addrspace(1)** %22
  br label %197
208:
  %209 = extractvalue {i64, i1} %205, 0
  %210 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %209)
  store i8 addrspace(1)* %210, i8 addrspace(1)** %22
  br label %197
211:
  %212 = call i8 addrspace(1)* @_bal_panic_construct(i64 9987), !dbg !16
  store i8 addrspace(1)* %212, i8 addrspace(1)** %45
  br label %76
213:
  %214 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %198)
  store i64 %214, i64* %23
  %215 = load i64, i64* %19
  %216 = load i64, i64* %23
  %217 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %215, i64 %216)
  %218 = extractvalue {i64, i1} %217, 1
  br i1 %218, label %234, label %221
219:
  %220 = call i8 addrspace(1)* @_bal_panic_construct(i64 9987), !dbg !16
  store i8 addrspace(1)* %220, i8 addrspace(1)** %45
  br label %76
221:
  %222 = extractvalue {i64, i1} %217, 0
  store i64 %222, i64* %24
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %224 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %223, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %224, i8 addrspace(1)** %25
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %227 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %226, i8 addrspace(1)* %225)
  %228 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %226, i8 addrspace(1)* %227)
  store i8 addrspace(1)* %228, i8 addrspace(1)** %26
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %230 = addrspacecast i8 addrspace(1)* %229 to i8*
  %231 = ptrtoint i8* %230 to i64
  %232 = and i64 %231, 2233785415175766016
  %233 = icmp eq i64 %232, 576460752303423488
  br i1 %233, label %242, label %246
234:
  %235 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985), !dbg !16
  store i8 addrspace(1)* %235, i8 addrspace(1)** %45
  br label %76
236:
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %238 = addrspacecast i8 addrspace(1)* %237 to i8*
  %239 = ptrtoint i8* %238 to i64
  %240 = and i64 %239, 2233785415175766016
  %241 = icmp eq i64 %240, 504403158265495552
  br i1 %241, label %252, label %258
242:
  %243 = call double @_bal_tagged_to_float(i8 addrspace(1)* %229)
  %244 = call {i64, i1} @_bal_float_to_int(double %243)
  %245 = extractvalue {i64, i1} %244, 1
  br i1 %245, label %250, label %247
246:
  store i8 addrspace(1)* %229, i8 addrspace(1)** %27
  br label %236
247:
  %248 = extractvalue {i64, i1} %244, 0
  %249 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %248)
  store i8 addrspace(1)* %249, i8 addrspace(1)** %27
  br label %236
250:
  %251 = call i8 addrspace(1)* @_bal_panic_construct(i64 10243), !dbg !16
  store i8 addrspace(1)* %251, i8 addrspace(1)** %45
  br label %76
252:
  %253 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %237)
  store i64 %253, i64* %28
  %254 = load i64, i64* %24
  %255 = load i64, i64* %28
  %256 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %254, i64 %255)
  %257 = extractvalue {i64, i1} %256, 1
  br i1 %257, label %273, label %260
258:
  %259 = call i8 addrspace(1)* @_bal_panic_construct(i64 10243), !dbg !16
  store i8 addrspace(1)* %259, i8 addrspace(1)** %45
  br label %76
260:
  %261 = extractvalue {i64, i1} %256, 0
  store i64 %261, i64* %29
  %262 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %263 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %262, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %263, i8 addrspace(1)** %30
  %264 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %265 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %266 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %265, i8 addrspace(1)* %264)
  %267 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %265, i8 addrspace(1)* %266)
  store i8 addrspace(1)* %267, i8 addrspace(1)** %31
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  %269 = addrspacecast i8 addrspace(1)* %268 to i8*
  %270 = ptrtoint i8* %269 to i64
  %271 = and i64 %270, 2233785415175766016
  %272 = icmp eq i64 %271, 576460752303423488
  br i1 %272, label %281, label %285
273:
  %274 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !16
  store i8 addrspace(1)* %274, i8 addrspace(1)** %45
  br label %76
275:
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  %277 = addrspacecast i8 addrspace(1)* %276 to i8*
  %278 = ptrtoint i8* %277 to i64
  %279 = and i64 %278, 2233785415175766016
  %280 = icmp eq i64 %279, 504403158265495552
  br i1 %280, label %291, label %297
281:
  %282 = call double @_bal_tagged_to_float(i8 addrspace(1)* %268)
  %283 = call {i64, i1} @_bal_float_to_int(double %282)
  %284 = extractvalue {i64, i1} %283, 1
  br i1 %284, label %289, label %286
285:
  store i8 addrspace(1)* %268, i8 addrspace(1)** %32
  br label %275
286:
  %287 = extractvalue {i64, i1} %283, 0
  %288 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %287)
  store i8 addrspace(1)* %288, i8 addrspace(1)** %32
  br label %275
289:
  %290 = call i8 addrspace(1)* @_bal_panic_construct(i64 10499), !dbg !16
  store i8 addrspace(1)* %290, i8 addrspace(1)** %45
  br label %76
291:
  %292 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %276)
  store i64 %292, i64* %33
  %293 = load i64, i64* %29
  %294 = load i64, i64* %33
  %295 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %293, i64 %294)
  %296 = extractvalue {i64, i1} %295, 1
  br i1 %296, label %312, label %299
297:
  %298 = call i8 addrspace(1)* @_bal_panic_construct(i64 10499), !dbg !16
  store i8 addrspace(1)* %298, i8 addrspace(1)** %45
  br label %76
299:
  %300 = extractvalue {i64, i1} %295, 0
  store i64 %300, i64* %34
  %301 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %302 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %301, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %302, i8 addrspace(1)** %35
  %303 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  %304 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %305 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %304, i8 addrspace(1)* %303)
  %306 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %304, i8 addrspace(1)* %305)
  store i8 addrspace(1)* %306, i8 addrspace(1)** %36
  %307 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %308 = addrspacecast i8 addrspace(1)* %307 to i8*
  %309 = ptrtoint i8* %308 to i64
  %310 = and i64 %309, 2233785415175766016
  %311 = icmp eq i64 %310, 576460752303423488
  br i1 %311, label %320, label %324
312:
  %313 = call i8 addrspace(1)* @_bal_panic_construct(i64 10497), !dbg !16
  store i8 addrspace(1)* %313, i8 addrspace(1)** %45
  br label %76
314:
  %315 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %316 = addrspacecast i8 addrspace(1)* %315 to i8*
  %317 = ptrtoint i8* %316 to i64
  %318 = and i64 %317, 2233785415175766016
  %319 = icmp eq i64 %318, 504403158265495552
  br i1 %319, label %330, label %336
320:
  %321 = call double @_bal_tagged_to_float(i8 addrspace(1)* %307)
  %322 = call {i64, i1} @_bal_float_to_int(double %321)
  %323 = extractvalue {i64, i1} %322, 1
  br i1 %323, label %328, label %325
324:
  store i8 addrspace(1)* %307, i8 addrspace(1)** %37
  br label %314
325:
  %326 = extractvalue {i64, i1} %322, 0
  %327 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %326)
  store i8 addrspace(1)* %327, i8 addrspace(1)** %37
  br label %314
328:
  %329 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755), !dbg !16
  store i8 addrspace(1)* %329, i8 addrspace(1)** %45
  br label %76
330:
  %331 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %315)
  store i64 %331, i64* %38
  %332 = load i64, i64* %34
  %333 = load i64, i64* %38
  %334 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %332, i64 %333)
  %335 = extractvalue {i64, i1} %334, 1
  br i1 %335, label %351, label %338
336:
  %337 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755), !dbg !16
  store i8 addrspace(1)* %337, i8 addrspace(1)** %45
  br label %76
338:
  %339 = extractvalue {i64, i1} %334, 0
  store i64 %339, i64* %39
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %341 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %340, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %341, i8 addrspace(1)** %40
  %342 = load i8 addrspace(1)*, i8 addrspace(1)** %40
  %343 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %344 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %343, i8 addrspace(1)* %342)
  %345 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %343, i8 addrspace(1)* %344)
  store i8 addrspace(1)* %345, i8 addrspace(1)** %41
  %346 = load i8 addrspace(1)*, i8 addrspace(1)** %41
  %347 = addrspacecast i8 addrspace(1)* %346 to i8*
  %348 = ptrtoint i8* %347 to i64
  %349 = and i64 %348, 2233785415175766016
  %350 = icmp eq i64 %349, 576460752303423488
  br i1 %350, label %359, label %363
351:
  %352 = call i8 addrspace(1)* @_bal_panic_construct(i64 10753), !dbg !16
  store i8 addrspace(1)* %352, i8 addrspace(1)** %45
  br label %76
353:
  %354 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  %355 = addrspacecast i8 addrspace(1)* %354 to i8*
  %356 = ptrtoint i8* %355 to i64
  %357 = and i64 %356, 2233785415175766016
  %358 = icmp eq i64 %357, 504403158265495552
  br i1 %358, label %369, label %375
359:
  %360 = call double @_bal_tagged_to_float(i8 addrspace(1)* %346)
  %361 = call {i64, i1} @_bal_float_to_int(double %360)
  %362 = extractvalue {i64, i1} %361, 1
  br i1 %362, label %367, label %364
363:
  store i8 addrspace(1)* %346, i8 addrspace(1)** %42
  br label %353
364:
  %365 = extractvalue {i64, i1} %361, 0
  %366 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %365)
  store i8 addrspace(1)* %366, i8 addrspace(1)** %42
  br label %353
367:
  %368 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !16
  store i8 addrspace(1)* %368, i8 addrspace(1)** %45
  br label %76
369:
  %370 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %354)
  store i64 %370, i64* %43
  %371 = load i64, i64* %39
  %372 = load i64, i64* %43
  %373 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %371, i64 %372)
  %374 = extractvalue {i64, i1} %373, 1
  br i1 %374, label %380, label %377
375:
  %376 = call i8 addrspace(1)* @_bal_panic_construct(i64 11011), !dbg !16
  store i8 addrspace(1)* %376, i8 addrspace(1)** %45
  br label %76
377:
  %378 = extractvalue {i64, i1} %373, 0
  store i64 %378, i64* %44
  %379 = load i64, i64* %44
  store i64 %379, i64* %res
  br label %73
380:
  %381 = call i8 addrspace(1)* @_bal_panic_construct(i64 11009), !dbg !16
  store i8 addrspace(1)* %381, i8 addrspace(1)** %45
  br label %76
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
