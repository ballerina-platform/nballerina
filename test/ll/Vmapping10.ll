@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %max = alloca i64
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  store i64 16, i64* %max
  %9 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %12 = load i64, i64* %max
  call void @_B_populate(i8 addrspace(1)* %11, i64 %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %14 = load i64, i64* %max
  %15 = call i64 @_B_retrieve(i8 addrspace(1)* %13, i64 %14)
  store i64 %15, i64* %3
  %16 = load i64, i64* %3
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
18:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_populate(i8 addrspace(1)* %0, i64 %1) {
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
  %22 = alloca i64
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
  br i1 %40, label %55, label %47
41:
  %42 = load i64, i64* %i
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %i
  br label %27
44:
  %45 = load i64, i64* %22
  call void @_bal_panic(i64 %45)
  unreachable
46:
  call void @_bal_panic(i64 2564)
  unreachable
47:
  %48 = extractvalue {i64, i1} %39, 0
  store i64 %48, i64* %5
  %49 = load i64, i64* %5
  store i64 %49, i64* %xLen
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %51 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %50, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247))
  store i8 addrspace(1)* %51, i8 addrspace(1)** %6
  %52 = load i64, i64* %xLen
  %53 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %52, i64 0)
  %54 = extractvalue {i64, i1} %53, 1
  br i1 %54, label %64, label %56
55:
  store i64 4097, i64* %22
  br label %44
56:
  %57 = extractvalue {i64, i1} %53, 0
  store i64 %57, i64* %7
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %60 = load i64, i64* %7
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60)
  %62 = call i64 @_bal_mapping_set(i8 addrspace(1)* %58, i8 addrspace(1)* %59, i8 addrspace(1)* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %65, label %71
64:
  store i64 4353, i64* %22
  br label %44
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %67 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %66, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %67, i8 addrspace(1)** %8
  %68 = load i64, i64* %xLen
  %69 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %68, i64 1)
  %70 = extractvalue {i64, i1} %69, 1
  br i1 %70, label %81, label %73
71:
  %72 = or i64 %62, 4352
  store i64 %72, i64* %22
  br label %44
73:
  %74 = extractvalue {i64, i1} %69, 0
  store i64 %74, i64* %9
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %77 = load i64, i64* %9
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77)
  %79 = call i64 @_bal_mapping_set(i8 addrspace(1)* %75, i8 addrspace(1)* %76, i8 addrspace(1)* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %82, label %88
81:
  store i64 4609, i64* %22
  br label %44
82:
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %84 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %83, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %84, i8 addrspace(1)** %10
  %85 = load i64, i64* %xLen
  %86 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %85, i64 2)
  %87 = extractvalue {i64, i1} %86, 1
  br i1 %87, label %98, label %90
88:
  %89 = or i64 %79, 4608
  store i64 %89, i64* %22
  br label %44
90:
  %91 = extractvalue {i64, i1} %86, 0
  store i64 %91, i64* %11
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %94 = load i64, i64* %11
  %95 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %94)
  %96 = call i64 @_bal_mapping_set(i8 addrspace(1)* %92, i8 addrspace(1)* %93, i8 addrspace(1)* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %99, label %105
98:
  store i64 4865, i64* %22
  br label %44
99:
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %101 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %100, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %101, i8 addrspace(1)** %12
  %102 = load i64, i64* %xLen
  %103 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %102, i64 3)
  %104 = extractvalue {i64, i1} %103, 1
  br i1 %104, label %115, label %107
105:
  %106 = or i64 %96, 4864
  store i64 %106, i64* %22
  br label %44
107:
  %108 = extractvalue {i64, i1} %103, 0
  store i64 %108, i64* %13
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %111 = load i64, i64* %13
  %112 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %111)
  %113 = call i64 @_bal_mapping_set(i8 addrspace(1)* %109, i8 addrspace(1)* %110, i8 addrspace(1)* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %116, label %122
115:
  store i64 5121, i64* %22
  br label %44
116:
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %118 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %117, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %118, i8 addrspace(1)** %14
  %119 = load i64, i64* %xLen
  %120 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %119, i64 4)
  %121 = extractvalue {i64, i1} %120, 1
  br i1 %121, label %132, label %124
122:
  %123 = or i64 %113, 5120
  store i64 %123, i64* %22
  br label %44
124:
  %125 = extractvalue {i64, i1} %120, 0
  store i64 %125, i64* %15
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %128 = load i64, i64* %15
  %129 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %128)
  %130 = call i64 @_bal_mapping_set(i8 addrspace(1)* %126, i8 addrspace(1)* %127, i8 addrspace(1)* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %133, label %139
132:
  store i64 5377, i64* %22
  br label %44
133:
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %135 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %134, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %135, i8 addrspace(1)** %16
  %136 = load i64, i64* %xLen
  %137 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %136, i64 5)
  %138 = extractvalue {i64, i1} %137, 1
  br i1 %138, label %149, label %141
139:
  %140 = or i64 %130, 5376
  store i64 %140, i64* %22
  br label %44
141:
  %142 = extractvalue {i64, i1} %137, 0
  store i64 %142, i64* %17
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %145 = load i64, i64* %17
  %146 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %145)
  %147 = call i64 @_bal_mapping_set(i8 addrspace(1)* %143, i8 addrspace(1)* %144, i8 addrspace(1)* %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %150, label %156
149:
  store i64 5633, i64* %22
  br label %44
150:
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %152 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %151, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %152, i8 addrspace(1)** %18
  %153 = load i64, i64* %xLen
  %154 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %153, i64 6)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %166, label %158
156:
  %157 = or i64 %147, 5632
  store i64 %157, i64* %22
  br label %44
158:
  %159 = extractvalue {i64, i1} %154, 0
  store i64 %159, i64* %19
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %162 = load i64, i64* %19
  %163 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %162)
  %164 = call i64 @_bal_mapping_set(i8 addrspace(1)* %160, i8 addrspace(1)* %161, i8 addrspace(1)* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %167, label %173
166:
  store i64 5889, i64* %22
  br label %44
167:
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %169 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %168, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %169, i8 addrspace(1)** %20
  %170 = load i64, i64* %xLen
  %171 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %170, i64 7)
  %172 = extractvalue {i64, i1} %171, 1
  br i1 %172, label %183, label %175
173:
  %174 = or i64 %164, 5888
  store i64 %174, i64* %22
  br label %44
175:
  %176 = extractvalue {i64, i1} %171, 0
  store i64 %176, i64* %21
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %179 = load i64, i64* %21
  %180 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %179)
  %181 = call i64 @_bal_mapping_set(i8 addrspace(1)* %177, i8 addrspace(1)* %178, i8 addrspace(1)* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %184, label %185
183:
  store i64 6145, i64* %22
  br label %44
184:
  br label %41
185:
  %186 = or i64 %181, 6144
  store i64 %186, i64* %22
  br label %44
}
define internal i64 @_B_retrieve(i8 addrspace(1)* %0, i64 %1) {
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
  %45 = alloca i64
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
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %66 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %64, i8 addrspace(1)* %65)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 576460752303423488
  br i1 %71, label %84, label %88
72:
  %73 = load i64, i64* %i
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %i
  br label %50
75:
  %76 = load i64, i64* %45
  call void @_bal_panic(i64 %76)
  unreachable
77:
  call void @_bal_panic(i64 7428)
  unreachable
78:
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %80 = addrspacecast i8 addrspace(1)* %79 to i8*
  %81 = ptrtoint i8* %80 to i64
  %82 = and i64 %81, 2233785415175766016
  %83 = icmp eq i64 %82, 504403158265495552
  br i1 %83, label %93, label %99
84:
  %85 = call double @_bal_tagged_to_float(i8 addrspace(1)* %67)
  %86 = call {i64, i1} @_bal_float_to_int(double %85)
  %87 = extractvalue {i64, i1} %86, 1
  br i1 %87, label %92, label %89
88:
  store i8 addrspace(1)* %67, i8 addrspace(1)** %7
  br label %78
89:
  %90 = extractvalue {i64, i1} %86, 0
  %91 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %90)
  store i8 addrspace(1)* %91, i8 addrspace(1)** %7
  br label %78
92:
  store i64 8963, i64* %45
  br label %75
93:
  %94 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %79)
  store i64 %94, i64* %8
  %95 = load i64, i64* %res
  %96 = load i64, i64* %8
  %97 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %95, i64 %96)
  %98 = extractvalue {i64, i1} %97, 1
  br i1 %98, label %112, label %100
99:
  store i64 8963, i64* %45
  br label %75
100:
  %101 = extractvalue {i64, i1} %97, 0
  store i64 %101, i64* %9
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %103 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %102, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %103, i8 addrspace(1)** %10
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %106 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %104, i8 addrspace(1)* %105)
  store i8 addrspace(1)* %106, i8 addrspace(1)** %11
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %108 = addrspacecast i8 addrspace(1)* %107 to i8*
  %109 = ptrtoint i8* %108 to i64
  %110 = and i64 %109, 2233785415175766016
  %111 = icmp eq i64 %110, 576460752303423488
  br i1 %111, label %119, label %123
112:
  store i64 8961, i64* %45
  br label %75
113:
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %115 = addrspacecast i8 addrspace(1)* %114 to i8*
  %116 = ptrtoint i8* %115 to i64
  %117 = and i64 %116, 2233785415175766016
  %118 = icmp eq i64 %117, 504403158265495552
  br i1 %118, label %128, label %134
119:
  %120 = call double @_bal_tagged_to_float(i8 addrspace(1)* %107)
  %121 = call {i64, i1} @_bal_float_to_int(double %120)
  %122 = extractvalue {i64, i1} %121, 1
  br i1 %122, label %127, label %124
123:
  store i8 addrspace(1)* %107, i8 addrspace(1)** %12
  br label %113
124:
  %125 = extractvalue {i64, i1} %121, 0
  %126 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %125)
  store i8 addrspace(1)* %126, i8 addrspace(1)** %12
  br label %113
127:
  store i64 9219, i64* %45
  br label %75
128:
  %129 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %114)
  store i64 %129, i64* %13
  %130 = load i64, i64* %9
  %131 = load i64, i64* %13
  %132 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %130, i64 %131)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %147, label %135
134:
  store i64 9219, i64* %45
  br label %75
135:
  %136 = extractvalue {i64, i1} %132, 0
  store i64 %136, i64* %14
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %138 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %137, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %138, i8 addrspace(1)** %15
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %141 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %139, i8 addrspace(1)* %140)
  store i8 addrspace(1)* %141, i8 addrspace(1)** %16
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %143 = addrspacecast i8 addrspace(1)* %142 to i8*
  %144 = ptrtoint i8* %143 to i64
  %145 = and i64 %144, 2233785415175766016
  %146 = icmp eq i64 %145, 576460752303423488
  br i1 %146, label %154, label %158
147:
  store i64 9217, i64* %45
  br label %75
148:
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %150 = addrspacecast i8 addrspace(1)* %149 to i8*
  %151 = ptrtoint i8* %150 to i64
  %152 = and i64 %151, 2233785415175766016
  %153 = icmp eq i64 %152, 504403158265495552
  br i1 %153, label %163, label %169
154:
  %155 = call double @_bal_tagged_to_float(i8 addrspace(1)* %142)
  %156 = call {i64, i1} @_bal_float_to_int(double %155)
  %157 = extractvalue {i64, i1} %156, 1
  br i1 %157, label %162, label %159
158:
  store i8 addrspace(1)* %142, i8 addrspace(1)** %17
  br label %148
159:
  %160 = extractvalue {i64, i1} %156, 0
  %161 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %160)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %17
  br label %148
162:
  store i64 9475, i64* %45
  br label %75
163:
  %164 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %149)
  store i64 %164, i64* %18
  %165 = load i64, i64* %14
  %166 = load i64, i64* %18
  %167 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %165, i64 %166)
  %168 = extractvalue {i64, i1} %167, 1
  br i1 %168, label %182, label %170
169:
  store i64 9475, i64* %45
  br label %75
170:
  %171 = extractvalue {i64, i1} %167, 0
  store i64 %171, i64* %19
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %173 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %172, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %173, i8 addrspace(1)** %20
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %176 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %174, i8 addrspace(1)* %175)
  store i8 addrspace(1)* %176, i8 addrspace(1)** %21
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %178 = addrspacecast i8 addrspace(1)* %177 to i8*
  %179 = ptrtoint i8* %178 to i64
  %180 = and i64 %179, 2233785415175766016
  %181 = icmp eq i64 %180, 576460752303423488
  br i1 %181, label %189, label %193
182:
  store i64 9473, i64* %45
  br label %75
183:
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %185 = addrspacecast i8 addrspace(1)* %184 to i8*
  %186 = ptrtoint i8* %185 to i64
  %187 = and i64 %186, 2233785415175766016
  %188 = icmp eq i64 %187, 504403158265495552
  br i1 %188, label %198, label %204
189:
  %190 = call double @_bal_tagged_to_float(i8 addrspace(1)* %177)
  %191 = call {i64, i1} @_bal_float_to_int(double %190)
  %192 = extractvalue {i64, i1} %191, 1
  br i1 %192, label %197, label %194
193:
  store i8 addrspace(1)* %177, i8 addrspace(1)** %22
  br label %183
194:
  %195 = extractvalue {i64, i1} %191, 0
  %196 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %195)
  store i8 addrspace(1)* %196, i8 addrspace(1)** %22
  br label %183
197:
  store i64 9731, i64* %45
  br label %75
198:
  %199 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %184)
  store i64 %199, i64* %23
  %200 = load i64, i64* %19
  %201 = load i64, i64* %23
  %202 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %200, i64 %201)
  %203 = extractvalue {i64, i1} %202, 1
  br i1 %203, label %217, label %205
204:
  store i64 9731, i64* %45
  br label %75
205:
  %206 = extractvalue {i64, i1} %202, 0
  store i64 %206, i64* %24
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %208 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %207, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %208, i8 addrspace(1)** %25
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %211 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %209, i8 addrspace(1)* %210)
  store i8 addrspace(1)* %211, i8 addrspace(1)** %26
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %213 = addrspacecast i8 addrspace(1)* %212 to i8*
  %214 = ptrtoint i8* %213 to i64
  %215 = and i64 %214, 2233785415175766016
  %216 = icmp eq i64 %215, 576460752303423488
  br i1 %216, label %224, label %228
217:
  store i64 9729, i64* %45
  br label %75
218:
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %220 = addrspacecast i8 addrspace(1)* %219 to i8*
  %221 = ptrtoint i8* %220 to i64
  %222 = and i64 %221, 2233785415175766016
  %223 = icmp eq i64 %222, 504403158265495552
  br i1 %223, label %233, label %239
224:
  %225 = call double @_bal_tagged_to_float(i8 addrspace(1)* %212)
  %226 = call {i64, i1} @_bal_float_to_int(double %225)
  %227 = extractvalue {i64, i1} %226, 1
  br i1 %227, label %232, label %229
228:
  store i8 addrspace(1)* %212, i8 addrspace(1)** %27
  br label %218
229:
  %230 = extractvalue {i64, i1} %226, 0
  %231 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %230)
  store i8 addrspace(1)* %231, i8 addrspace(1)** %27
  br label %218
232:
  store i64 9987, i64* %45
  br label %75
233:
  %234 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %219)
  store i64 %234, i64* %28
  %235 = load i64, i64* %24
  %236 = load i64, i64* %28
  %237 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %235, i64 %236)
  %238 = extractvalue {i64, i1} %237, 1
  br i1 %238, label %252, label %240
239:
  store i64 9987, i64* %45
  br label %75
240:
  %241 = extractvalue {i64, i1} %237, 0
  store i64 %241, i64* %29
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %243 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %242, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %243, i8 addrspace(1)** %30
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %245 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %246 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %244, i8 addrspace(1)* %245)
  store i8 addrspace(1)* %246, i8 addrspace(1)** %31
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  %248 = addrspacecast i8 addrspace(1)* %247 to i8*
  %249 = ptrtoint i8* %248 to i64
  %250 = and i64 %249, 2233785415175766016
  %251 = icmp eq i64 %250, 576460752303423488
  br i1 %251, label %259, label %263
252:
  store i64 9985, i64* %45
  br label %75
253:
  %254 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  %255 = addrspacecast i8 addrspace(1)* %254 to i8*
  %256 = ptrtoint i8* %255 to i64
  %257 = and i64 %256, 2233785415175766016
  %258 = icmp eq i64 %257, 504403158265495552
  br i1 %258, label %268, label %274
259:
  %260 = call double @_bal_tagged_to_float(i8 addrspace(1)* %247)
  %261 = call {i64, i1} @_bal_float_to_int(double %260)
  %262 = extractvalue {i64, i1} %261, 1
  br i1 %262, label %267, label %264
263:
  store i8 addrspace(1)* %247, i8 addrspace(1)** %32
  br label %253
264:
  %265 = extractvalue {i64, i1} %261, 0
  %266 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %265)
  store i8 addrspace(1)* %266, i8 addrspace(1)** %32
  br label %253
267:
  store i64 10243, i64* %45
  br label %75
268:
  %269 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %254)
  store i64 %269, i64* %33
  %270 = load i64, i64* %29
  %271 = load i64, i64* %33
  %272 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %270, i64 %271)
  %273 = extractvalue {i64, i1} %272, 1
  br i1 %273, label %287, label %275
274:
  store i64 10243, i64* %45
  br label %75
275:
  %276 = extractvalue {i64, i1} %272, 0
  store i64 %276, i64* %34
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %278 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %277, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %278, i8 addrspace(1)** %35
  %279 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  %281 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %279, i8 addrspace(1)* %280)
  store i8 addrspace(1)* %281, i8 addrspace(1)** %36
  %282 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %283 = addrspacecast i8 addrspace(1)* %282 to i8*
  %284 = ptrtoint i8* %283 to i64
  %285 = and i64 %284, 2233785415175766016
  %286 = icmp eq i64 %285, 576460752303423488
  br i1 %286, label %294, label %298
287:
  store i64 10241, i64* %45
  br label %75
288:
  %289 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %290 = addrspacecast i8 addrspace(1)* %289 to i8*
  %291 = ptrtoint i8* %290 to i64
  %292 = and i64 %291, 2233785415175766016
  %293 = icmp eq i64 %292, 504403158265495552
  br i1 %293, label %303, label %309
294:
  %295 = call double @_bal_tagged_to_float(i8 addrspace(1)* %282)
  %296 = call {i64, i1} @_bal_float_to_int(double %295)
  %297 = extractvalue {i64, i1} %296, 1
  br i1 %297, label %302, label %299
298:
  store i8 addrspace(1)* %282, i8 addrspace(1)** %37
  br label %288
299:
  %300 = extractvalue {i64, i1} %296, 0
  %301 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %300)
  store i8 addrspace(1)* %301, i8 addrspace(1)** %37
  br label %288
302:
  store i64 10499, i64* %45
  br label %75
303:
  %304 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %289)
  store i64 %304, i64* %38
  %305 = load i64, i64* %34
  %306 = load i64, i64* %38
  %307 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %305, i64 %306)
  %308 = extractvalue {i64, i1} %307, 1
  br i1 %308, label %322, label %310
309:
  store i64 10499, i64* %45
  br label %75
310:
  %311 = extractvalue {i64, i1} %307, 0
  store i64 %311, i64* %39
  %312 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %313 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %312, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %313, i8 addrspace(1)** %40
  %314 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %315 = load i8 addrspace(1)*, i8 addrspace(1)** %40
  %316 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %314, i8 addrspace(1)* %315)
  store i8 addrspace(1)* %316, i8 addrspace(1)** %41
  %317 = load i8 addrspace(1)*, i8 addrspace(1)** %41
  %318 = addrspacecast i8 addrspace(1)* %317 to i8*
  %319 = ptrtoint i8* %318 to i64
  %320 = and i64 %319, 2233785415175766016
  %321 = icmp eq i64 %320, 576460752303423488
  br i1 %321, label %329, label %333
322:
  store i64 10497, i64* %45
  br label %75
323:
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  %325 = addrspacecast i8 addrspace(1)* %324 to i8*
  %326 = ptrtoint i8* %325 to i64
  %327 = and i64 %326, 2233785415175766016
  %328 = icmp eq i64 %327, 504403158265495552
  br i1 %328, label %338, label %344
329:
  %330 = call double @_bal_tagged_to_float(i8 addrspace(1)* %317)
  %331 = call {i64, i1} @_bal_float_to_int(double %330)
  %332 = extractvalue {i64, i1} %331, 1
  br i1 %332, label %337, label %334
333:
  store i8 addrspace(1)* %317, i8 addrspace(1)** %42
  br label %323
334:
  %335 = extractvalue {i64, i1} %331, 0
  %336 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %335)
  store i8 addrspace(1)* %336, i8 addrspace(1)** %42
  br label %323
337:
  store i64 10755, i64* %45
  br label %75
338:
  %339 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %324)
  store i64 %339, i64* %43
  %340 = load i64, i64* %39
  %341 = load i64, i64* %43
  %342 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %340, i64 %341)
  %343 = extractvalue {i64, i1} %342, 1
  br i1 %343, label %348, label %345
344:
  store i64 10755, i64* %45
  br label %75
345:
  %346 = extractvalue {i64, i1} %342, 0
  store i64 %346, i64* %44
  %347 = load i64, i64* %44
  store i64 %347, i64* %res
  br label %72
348:
  store i64 10753, i64* %45
  br label %75
}
