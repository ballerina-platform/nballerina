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
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i64
  %38 = alloca i8
  %39 = load i8*, i8** @_bal_stack_guard
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %69, label %41
41:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i64 %1, i64* %max
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)** %x
  store i64 0, i64* %res
  store i64 0, i64* %i
  br label %42
42:
  %43 = load i64, i64* %i
  %44 = load i64, i64* %max
  %45 = icmp slt i64 %43, %44
  store i1 %45, i1* %3
  %46 = load i1, i1* %3
  br i1 %46, label %49, label %47
47:
  %48 = load i64, i64* %res
  ret i64 %48
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %52 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %50, i8 addrspace(1)* %51)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %4
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %53, i8 addrspace(1)** %x
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %55 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %54, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247))
  store i8 addrspace(1)* %55, i8 addrspace(1)** %5
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %58 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %56, i8 addrspace(1)* %57)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %6
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %60 = addrspacecast i8 addrspace(1)* %59 to i8*
  %61 = ptrtoint i8* %60 to i64
  %62 = and i64 %61, 2233785415175766016
  %63 = icmp eq i64 %62, 504403158265495552
  br i1 %63, label %70, label %76
64:
  %65 = load i64, i64* %i
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %i
  br label %42
67:
  %68 = load i64, i64* %37
  call void @_bal_panic(i64 %68)
  unreachable
69:
  call void @_bal_panic(i64 7428)
  unreachable
70:
  %71 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %59)
  store i64 %71, i64* %7
  %72 = load i64, i64* %res
  %73 = load i64, i64* %7
  %74 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %89, label %77
76:
  store i64 8963, i64* %37
  br label %67
77:
  %78 = extractvalue {i64, i1} %74, 0
  store i64 %78, i64* %8
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %80 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %79, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %80, i8 addrspace(1)** %9
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %83 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %81, i8 addrspace(1)* %82)
  store i8 addrspace(1)* %83, i8 addrspace(1)** %10
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %85 = addrspacecast i8 addrspace(1)* %84 to i8*
  %86 = ptrtoint i8* %85 to i64
  %87 = and i64 %86, 2233785415175766016
  %88 = icmp eq i64 %87, 504403158265495552
  br i1 %88, label %90, label %96
89:
  store i64 8961, i64* %37
  br label %67
90:
  %91 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %84)
  store i64 %91, i64* %11
  %92 = load i64, i64* %8
  %93 = load i64, i64* %11
  %94 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %92, i64 %93)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %109, label %97
96:
  store i64 9219, i64* %37
  br label %67
97:
  %98 = extractvalue {i64, i1} %94, 0
  store i64 %98, i64* %12
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %100 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %99, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897))
  store i8 addrspace(1)* %100, i8 addrspace(1)** %13
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %103 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %101, i8 addrspace(1)* %102)
  store i8 addrspace(1)* %103, i8 addrspace(1)** %14
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %105 = addrspacecast i8 addrspace(1)* %104 to i8*
  %106 = ptrtoint i8* %105 to i64
  %107 = and i64 %106, 2233785415175766016
  %108 = icmp eq i64 %107, 504403158265495552
  br i1 %108, label %110, label %116
109:
  store i64 9217, i64* %37
  br label %67
110:
  %111 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %104)
  store i64 %111, i64* %15
  %112 = load i64, i64* %12
  %113 = load i64, i64* %15
  %114 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %112, i64 %113)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %129, label %117
116:
  store i64 9475, i64* %37
  br label %67
117:
  %118 = extractvalue {i64, i1} %114, 0
  store i64 %118, i64* %16
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %120 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %119, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  store i8 addrspace(1)* %120, i8 addrspace(1)** %17
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %123 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  store i8 addrspace(1)* %123, i8 addrspace(1)** %18
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %125 = addrspacecast i8 addrspace(1)* %124 to i8*
  %126 = ptrtoint i8* %125 to i64
  %127 = and i64 %126, 2233785415175766016
  %128 = icmp eq i64 %127, 504403158265495552
  br i1 %128, label %130, label %136
129:
  store i64 9473, i64* %37
  br label %67
130:
  %131 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %124)
  store i64 %131, i64* %19
  %132 = load i64, i64* %16
  %133 = load i64, i64* %19
  %134 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %132, i64 %133)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %149, label %137
136:
  store i64 9731, i64* %37
  br label %67
137:
  %138 = extractvalue {i64, i1} %134, 0
  store i64 %138, i64* %20
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %140 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %139, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801))
  store i8 addrspace(1)* %140, i8 addrspace(1)** %21
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  %143 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %141, i8 addrspace(1)* %142)
  store i8 addrspace(1)* %143, i8 addrspace(1)** %22
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %145 = addrspacecast i8 addrspace(1)* %144 to i8*
  %146 = ptrtoint i8* %145 to i64
  %147 = and i64 %146, 2233785415175766016
  %148 = icmp eq i64 %147, 504403158265495552
  br i1 %148, label %150, label %156
149:
  store i64 9729, i64* %37
  br label %67
150:
  %151 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %144)
  store i64 %151, i64* %23
  %152 = load i64, i64* %20
  %153 = load i64, i64* %23
  %154 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %152, i64 %153)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %169, label %157
156:
  store i64 9987, i64* %37
  br label %67
157:
  %158 = extractvalue {i64, i1} %154, 0
  store i64 %158, i64* %24
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %160 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %159, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879595205217))
  store i8 addrspace(1)* %160, i8 addrspace(1)** %25
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %163 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %161, i8 addrspace(1)* %162)
  store i8 addrspace(1)* %163, i8 addrspace(1)** %26
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %165 = addrspacecast i8 addrspace(1)* %164 to i8*
  %166 = ptrtoint i8* %165 to i64
  %167 = and i64 %166, 2233785415175766016
  %168 = icmp eq i64 %167, 504403158265495552
  br i1 %168, label %170, label %176
169:
  store i64 9985, i64* %37
  br label %67
170:
  %171 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %164)
  store i64 %171, i64* %27
  %172 = load i64, i64* %24
  %173 = load i64, i64* %27
  %174 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %172, i64 %173)
  %175 = extractvalue {i64, i1} %174, 1
  br i1 %175, label %189, label %177
176:
  store i64 10243, i64* %37
  br label %67
177:
  %178 = extractvalue {i64, i1} %174, 0
  store i64 %178, i64* %28
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %180 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %179, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098307654316155489))
  store i8 addrspace(1)* %180, i8 addrspace(1)** %29
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  %183 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %181, i8 addrspace(1)* %182)
  store i8 addrspace(1)* %183, i8 addrspace(1)** %30
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %185 = addrspacecast i8 addrspace(1)* %184 to i8*
  %186 = ptrtoint i8* %185 to i64
  %187 = and i64 %186, 2233785415175766016
  %188 = icmp eq i64 %187, 504403158265495552
  br i1 %188, label %190, label %196
189:
  store i64 10241, i64* %37
  br label %67
190:
  %191 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %184)
  store i64 %191, i64* %31
  %192 = load i64, i64* %28
  %193 = load i64, i64* %31
  %194 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %192, i64 %193)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %209, label %197
196:
  store i64 10499, i64* %37
  br label %67
197:
  %198 = extractvalue {i64, i1} %194, 0
  store i64 %198, i64* %32
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %200 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %199, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055523457856135777))
  store i8 addrspace(1)* %200, i8 addrspace(1)** %33
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %203 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  store i8 addrspace(1)* %203, i8 addrspace(1)** %34
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %34
  %205 = addrspacecast i8 addrspace(1)* %204 to i8*
  %206 = ptrtoint i8* %205 to i64
  %207 = and i64 %206, 2233785415175766016
  %208 = icmp eq i64 %207, 504403158265495552
  br i1 %208, label %210, label %216
209:
  store i64 10497, i64* %37
  br label %67
210:
  %211 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %204)
  store i64 %211, i64* %35
  %212 = load i64, i64* %32
  %213 = load i64, i64* %35
  %214 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %212, i64 %213)
  %215 = extractvalue {i64, i1} %214, 1
  br i1 %215, label %220, label %217
216:
  store i64 10755, i64* %37
  br label %67
217:
  %218 = extractvalue {i64, i1} %214, 0
  store i64 %218, i64* %36
  %219 = load i64, i64* %36
  store i64 %219, i64* %res
  br label %64
220:
  store i64 10753, i64* %37
  br label %67
}
