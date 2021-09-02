@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Barray__length(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Barray__push(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %103, label %26
26:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %31
  %32 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702848
  store i8 addrspace(1)* %32, i8 addrspace(1)** %1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %33, i8 addrspace(1)** %v
  %34 = load i64, i64* %len
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 0, i64* %i
  br label %36
36:
  %37 = load i64, i64* %i
  %38 = load i64, i64* %len
  %39 = icmp slt i64 %37, %38
  store i1 %39, i1* %3
  %40 = load i1, i1* %3
  br i1 %40, label %57, label %41
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %43 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %42)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %7
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %s
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %46 = call i64 @_Barray__length(i8 addrspace(1)* %45)
  store i64 %46, i64* %9
  %47 = load i64, i64* %9
  %48 = load i64, i64* %len
  %49 = icmp eq i64 %47, %48
  store i1 %49, i1* %8
  %50 = load i1, i1* %8
  %51 = zext i1 %50 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %54 = load i64, i64* %len
  %55 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %54, i64 1)
  %56 = extractvalue {i64, i1} %55, 1
  br i1 %56, label %107, label %105
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %59 = load i64, i64* %x
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59)
  call void @_Barray__push(i8 addrspace(1)* %58, i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %61 = load i64, i64* %x
  %62 = load i64, i64* %a
  %63 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %61, i64 %62)
  %64 = extractvalue {i64, i1} %63, 1
  br i1 %64, label %114, label %109
65:
  %66 = load i64, i64* %i
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %i
  br label %36
68:
  %69 = load i64, i64* %i.1
  %70 = load i64, i64* %11
  %71 = icmp slt i64 %69, %70
  store i1 %71, i1* %12
  %72 = load i1, i1* %12
  br i1 %72, label %85, label %73
73:
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %75 = call i64 @_B_checksum(i8 addrspace(1)* %74)
  store i64 %75, i64* %19
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %77 = call i64 @_B_checksum(i8 addrspace(1)* %76)
  store i64 %77, i64* %20
  %78 = load i64, i64* %19
  %79 = load i64, i64* %20
  %80 = icmp eq i64 %78, %79
  store i1 %80, i1* %18
  %81 = load i1, i1* %18
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  ret void
85:
  %86 = load i64, i64* %i.1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %88 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %87, i64 72057594037927935)
  %89 = bitcast i8 addrspace(1)* %88 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %90 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %89, i64 0, i32 0
  %91 = load i64, i64 addrspace(1)* %90, align 8
  %92 = icmp ult i64 %86, %91
  br i1 %92, label %127, label %136
93:
  %94 = zext i1 0 to i64
  %95 = or i64 %94, 72057594037927936
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95
  call void @_Bio__println(i8 addrspace(1)* %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  br label %97
97:
  br label %98
98:
  %99 = load i64, i64* %i.1
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %i.1
  br label %68
101:
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %102)
  unreachable
103:
  %104 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284)
  call void @_bal_panic(i8 addrspace(1)* %104)
  unreachable
105:
  %106 = extractvalue {i64, i1} %55, 0
  store i64 %106, i64* %11
  store i64 0, i64* %i.1
  br label %68
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %108, i8 addrspace(1)** %22
  br label %101
109:
  %110 = extractvalue {i64, i1} %63, 0
  store i64 %110, i64* %5
  %111 = load i64, i64* %5
  %112 = load i64, i64* %m
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %116, label %118
114:
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585)
  store i8 addrspace(1)* %115, i8 addrspace(1)** %22
  br label %101
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 3586)
  store i8 addrspace(1)* %117, i8 addrspace(1)** %22
  br label %101
118:
  %119 = icmp eq i64 %111, -9223372036854775808
  %120 = icmp eq i64 %112, -1
  %121 = and i1 %119, %120
  br i1 %121, label %124, label %122
122:
  %123 = srem i64 %111, %112
  store i64 %123, i64* %6
  br label %125
124:
  store i64 0, i64* %6
  br label %125
125:
  %126 = load i64, i64* %6
  store i64 %126, i64* %x
  br label %65
127:
  %128 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %89, i64 0, i32 2
  %129 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %128, align 8
  %130 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %129, i64 0, i64 %86
  %131 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %130, align 8
  %132 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %131)
  store i64 %132, i64* %14
  %133 = load i64, i64* %i.1
  %134 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %133, i64 1)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %147, label %138
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869)
  store i8 addrspace(1)* %137, i8 addrspace(1)** %22
  br label %101
138:
  %139 = extractvalue {i64, i1} %134, 0
  store i64 %139, i64* %15
  %140 = load i64, i64* %15
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %142 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %141, i64 72057594037927935)
  %143 = bitcast i8 addrspace(1)* %142 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %144 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %143, i64 0, i32 0
  %145 = load i64, i64 addrspace(1)* %144, align 8
  %146 = icmp ult i64 %140, %145
  br i1 %146, label %149, label %159
147:
  %148 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865)
  store i8 addrspace(1)* %148, i8 addrspace(1)** %22
  br label %101
149:
  %150 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %143, i64 0, i32 2
  %151 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %150, align 8
  %152 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %151, i64 0, i64 %140
  %153 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %152, align 8
  %154 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %153)
  store i64 %154, i64* %16
  %155 = load i64, i64* %14
  %156 = load i64, i64* %16
  %157 = icmp sgt i64 %155, %156
  store i1 %157, i1* %13
  %158 = load i1, i1* %13
  br i1 %158, label %93, label %97
159:
  %160 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869)
  store i8 addrspace(1)* %160, i8 addrspace(1)** %22
  br label %101
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %33, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %12 = call i64 @_Barray__length(i8 addrspace(1)* %11)
  store i64 %12, i64* %2
  store i64 0, i64* %i
  br label %13
13:
  %14 = load i64, i64* %i
  %15 = load i64, i64* %2
  %16 = icmp slt i64 %14, %15
  store i1 %16, i1* %3
  %17 = load i1, i1* %3
  br i1 %17, label %20, label %18
18:
  %19 = load i64, i64* %c
  ret i64 %19
20:
  %21 = load i64, i64* %i
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %23 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 72057594037927935)
  %24 = bitcast i8 addrspace(1)* %23 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 0
  %26 = load i64, i64 addrspace(1)* %25, align 8
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %35, label %45
28:
  %29 = load i64, i64* %i
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %i
  br label %13
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 2
  %37 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36, align 8
  %38 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %37, i64 0, i64 %21
  %39 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %38, align 8
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  store i64 %40, i64* %4
  %41 = load i64, i64* %c
  %42 = load i64, i64* %4
  %43 = xor i64 %41, %42
  store i64 %43, i64* %5
  %44 = load i64, i64* %5
  store i64 %44, i64* %c
  br label %28
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 7429)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %31
}
define internal i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %mid = alloca i64
  %6 = alloca i8 addrspace(1)*
  %list1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %89, label %22
22:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = call i64 @_Barray__length(i8 addrspace(1)* %23)
  store i64 %24, i64* %3
  %25 = load i64, i64* %3
  %26 = icmp sle i64 %25, 1
  store i1 %26, i1* %2
  %27 = load i1, i1* %2
  br i1 %27, label %28, label %30
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %29
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %32 = call i64 @_Barray__length(i8 addrspace(1)* %31)
  store i64 %32, i64* %4
  %33 = load i64, i64* %4
  %34 = icmp eq i64 2, 0
  br i1 %34, label %91, label %93
35:
  %36 = load i64, i64* %i
  %37 = load i64, i64* %mid
  %38 = icmp slt i64 %36, %37
  store i1 %38, i1* %7
  %39 = load i1, i1* %7
  br i1 %39, label %51, label %40
40:
  %41 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %42 = bitcast i8 addrspace(1)* %41 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %43 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %44
  %45 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %45
  %46 = getelementptr i8, i8 addrspace(1)* %41, i64 1297036692682702848
  store i8 addrspace(1)* %46, i8 addrspace(1)** %10
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %47, i8 addrspace(1)** %list2
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %49 = call i64 @_Barray__length(i8 addrspace(1)* %48)
  store i64 %49, i64* %11
  %50 = load i64, i64* %mid
  store i64 %50, i64* %i.1
  br label %62
51:
  %52 = load i64, i64* %i
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %53, i64 72057594037927935)
  %55 = bitcast i8 addrspace(1)* %54 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %56 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 0
  %57 = load i64, i64 addrspace(1)* %56, align 8
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %109, label %118
59:
  %60 = load i64, i64* %i
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %i
  br label %35
62:
  %63 = load i64, i64* %i.1
  %64 = load i64, i64* %11
  %65 = icmp slt i64 %63, %64
  store i1 %65, i1* %12
  %66 = load i1, i1* %12
  br i1 %66, label %76, label %67
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %69 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %68)
  store i8 addrspace(1)* %69, i8 addrspace(1)** %15
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %71 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %70)
  store i8 addrspace(1)* %71, i8 addrspace(1)** %16
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %74 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %72, i8 addrspace(1)* %73)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %17
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %75
76:
  %77 = load i64, i64* %i.1
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %79 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %78, i64 72057594037927935)
  %80 = bitcast i8 addrspace(1)* %79 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %81 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 0
  %82 = load i64, i64 addrspace(1)* %81, align 8
  %83 = icmp ult i64 %77, %82
  br i1 %83, label %120, label %129
84:
  %85 = load i64, i64* %i.1
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %i.1
  br label %62
87:
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_bal_panic(i8 addrspace(1)* %88)
  unreachable
89:
  %90 = call i8 addrspace(1)* @_bal_panic_construct(i64 8964)
  call void @_bal_panic(i8 addrspace(1)* %90)
  unreachable
91:
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 9986)
  store i8 addrspace(1)* %92, i8 addrspace(1)** %18
  br label %87
93:
  %94 = icmp eq i64 %33, -9223372036854775808
  %95 = icmp eq i64 2, -1
  %96 = and i1 %94, %95
  br i1 %96, label %107, label %97
97:
  %98 = sdiv i64 %33, 2
  store i64 %98, i64* %5
  %99 = load i64, i64* %5
  store i64 %99, i64* %mid
  %100 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %101 = bitcast i8 addrspace(1)* %100 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %102 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %101, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %102
  %103 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %101, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %103
  %104 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %101, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %104
  %105 = getelementptr i8, i8 addrspace(1)* %100, i64 1297036692682702848
  store i8 addrspace(1)* %105, i8 addrspace(1)** %6
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %106, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %35
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985)
  store i8 addrspace(1)* %108, i8 addrspace(1)** %18
  br label %87
109:
  %110 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 2
  %111 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %110, align 8
  %112 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %111, i64 0, i64 %52
  %113 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %112, align 8
  %114 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %113)
  store i64 %114, i64* %8
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %116 = load i64, i64* %8
  %117 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %116)
  call void @_Barray__push(i8 addrspace(1)* %115, i8 addrspace(1)* %117)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %59
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 10757)
  store i8 addrspace(1)* %119, i8 addrspace(1)** %18
  br label %87
120:
  %121 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 2
  %122 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %121, align 8
  %123 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %122, i64 0, i64 %77
  %124 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %123, align 8
  %125 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %124)
  store i64 %125, i64* %13
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %127 = load i64, i64* %13
  %128 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %127)
  call void @_Barray__push(i8 addrspace(1)* %126, i8 addrspace(1)* %128)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  br label %84
129:
  %130 = call i8 addrspace(1)* @_bal_panic_construct(i64 11781)
  store i8 addrspace(1)* %130, i8 addrspace(1)** %18
  br label %87
}
define internal i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %i1 = alloca i64
  %i2 = alloca i64
  %4 = alloca i64
  %len1 = alloca i64
  %5 = alloca i64
  %len2 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %113, label %29
29:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %30 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %31 = bitcast i8 addrspace(1)* %30 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %32 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %34
  %35 = getelementptr i8, i8 addrspace(1)* %30, i64 1297036692682702848
  store i8 addrspace(1)* %35, i8 addrspace(1)** %3
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %36, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %38 = call i64 @_Barray__length(i8 addrspace(1)* %37)
  store i64 %38, i64* %4
  %39 = load i64, i64* %4
  store i64 %39, i64* %len1
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %41 = call i64 @_Barray__length(i8 addrspace(1)* %40)
  store i64 %41, i64* %5
  %42 = load i64, i64* %5
  store i64 %42, i64* %len2
  br label %43
43:
  br label %44
44:
  %45 = load i64, i64* %i1
  %46 = load i64, i64* %len1
  %47 = icmp slt i64 %45, %46
  store i1 %47, i1* %6
  %48 = load i1, i1* %6
  br i1 %48, label %50, label %81
49:
  br label %82
50:
  %51 = load i64, i64* %i2
  %52 = load i64, i64* %len2
  %53 = icmp slt i64 %51, %52
  store i1 %53, i1* %7
  %54 = load i1, i1* %7
  br i1 %54, label %55, label %80
55:
  %56 = load i64, i64* %i1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %58 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %57, i64 72057594037927935)
  %59 = bitcast i8 addrspace(1)* %58 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %60 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 0
  %61 = load i64, i64 addrspace(1)* %60, align 8
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %115, label %128
63:
  %64 = load i64, i64* %i1
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %66 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %65, i64 72057594037927935)
  %67 = bitcast i8 addrspace(1)* %66 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %68 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 0
  %69 = load i64, i64 addrspace(1)* %68, align 8
  %70 = icmp ult i64 %64, %69
  br i1 %70, label %142, label %154
71:
  %72 = load i64, i64* %i2
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %74 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %73, i64 72057594037927935)
  %75 = bitcast i8 addrspace(1)* %74 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %76 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 0
  %77 = load i64, i64 addrspace(1)* %76, align 8
  %78 = icmp ult i64 %72, %77
  br i1 %78, label %161, label %173
79:
  br label %43
80:
  br label %81
81:
  br label %49
82:
  %83 = load i64, i64* %i1
  %84 = load i64, i64* %len1
  %85 = icmp slt i64 %83, %84
  store i1 %85, i1* %17
  %86 = load i1, i1* %17
  br i1 %86, label %87, label %95
87:
  %88 = load i64, i64* %i1
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %90 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %89, i64 72057594037927935)
  %91 = bitcast i8 addrspace(1)* %90 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %92 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 0
  %93 = load i64, i64 addrspace(1)* %92, align 8
  %94 = icmp ult i64 %88, %93
  br i1 %94, label %180, label %192
95:
  br label %96
96:
  %97 = load i64, i64* %i2
  %98 = load i64, i64* %len2
  %99 = icmp slt i64 %97, %98
  store i1 %99, i1* %21
  %100 = load i1, i1* %21
  br i1 %100, label %101, label %109
101:
  %102 = load i64, i64* %i2
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %104 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %103, i64 72057594037927935)
  %105 = bitcast i8 addrspace(1)* %104 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %106 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 0
  %107 = load i64, i64 addrspace(1)* %106, align 8
  %108 = icmp ult i64 %102, %107
  br i1 %108, label %199, label %211
109:
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %110
111:
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_bal_panic(i8 addrspace(1)* %112)
  unreachable
113:
  %114 = call i8 addrspace(1)* @_bal_panic_construct(i64 13060)
  call void @_bal_panic(i8 addrspace(1)* %114)
  unreachable
115:
  %116 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 2
  %117 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %116, align 8
  %118 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 %56
  %119 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %118, align 8
  %120 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %119)
  store i64 %120, i64* %9
  %121 = load i64, i64* %i2
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %123 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %122, i64 72057594037927935)
  %124 = bitcast i8 addrspace(1)* %123 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %125 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %124, i64 0, i32 0
  %126 = load i64, i64 addrspace(1)* %125, align 8
  %127 = icmp ult i64 %121, %126
  br i1 %127, label %130, label %140
128:
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 15365)
  store i8 addrspace(1)* %129, i8 addrspace(1)** %25
  br label %111
130:
  %131 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %124, i64 0, i32 2
  %132 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %131, align 8
  %133 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %132, i64 0, i64 %121
  %134 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %133, align 8
  %135 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %134)
  store i64 %135, i64* %10
  %136 = load i64, i64* %9
  %137 = load i64, i64* %10
  %138 = icmp sle i64 %136, %137
  store i1 %138, i1* %8
  %139 = load i1, i1* %8
  br i1 %139, label %63, label %71
140:
  %141 = call i8 addrspace(1)* @_bal_panic_construct(i64 15365)
  store i8 addrspace(1)* %141, i8 addrspace(1)** %25
  br label %111
142:
  %143 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 2
  %144 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %143, align 8
  %145 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 %64
  %146 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %145, align 8
  %147 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %146)
  store i64 %147, i64* %11
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %149 = load i64, i64* %11
  %150 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %149)
  call void @_Barray__push(i8 addrspace(1)* %148, i8 addrspace(1)* %150)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %151 = load i64, i64* %i1
  %152 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %151, i64 1)
  %153 = extractvalue {i64, i1} %152, 1
  br i1 %153, label %159, label %156
154:
  %155 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621)
  store i8 addrspace(1)* %155, i8 addrspace(1)** %25
  br label %111
156:
  %157 = extractvalue {i64, i1} %152, 0
  store i64 %157, i64* %13
  %158 = load i64, i64* %13
  store i64 %158, i64* %i1
  br label %79
159:
  %160 = call i8 addrspace(1)* @_bal_panic_construct(i64 15873)
  store i8 addrspace(1)* %160, i8 addrspace(1)** %25
  br label %111
161:
  %162 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 2
  %163 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %162, align 8
  %164 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %163, i64 0, i64 %72
  %165 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %164, align 8
  %166 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %165)
  store i64 %166, i64* %14
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %168 = load i64, i64* %14
  %169 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %168)
  call void @_Barray__push(i8 addrspace(1)* %167, i8 addrspace(1)* %169)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %170 = load i64, i64* %i2
  %171 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %170, i64 1)
  %172 = extractvalue {i64, i1} %171, 1
  br i1 %172, label %178, label %175
173:
  %174 = call i8 addrspace(1)* @_bal_panic_construct(i64 16645)
  store i8 addrspace(1)* %174, i8 addrspace(1)** %25
  br label %111
175:
  %176 = extractvalue {i64, i1} %171, 0
  store i64 %176, i64* %16
  %177 = load i64, i64* %16
  store i64 %177, i64* %i2
  br label %79
178:
  %179 = call i8 addrspace(1)* @_bal_panic_construct(i64 16897)
  store i8 addrspace(1)* %179, i8 addrspace(1)** %25
  br label %111
180:
  %181 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 2
  %182 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %181, align 8
  %183 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %182, i64 0, i64 %88
  %184 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %183, align 8
  %185 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %184)
  store i64 %185, i64* %18
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %187 = load i64, i64* %18
  %188 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %187)
  call void @_Barray__push(i8 addrspace(1)* %186, i8 addrspace(1)* %188)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %189 = load i64, i64* %i1
  %190 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %189, i64 1)
  %191 = extractvalue {i64, i1} %190, 1
  br i1 %191, label %197, label %194
192:
  %193 = call i8 addrspace(1)* @_bal_panic_construct(i64 18949)
  store i8 addrspace(1)* %193, i8 addrspace(1)** %25
  br label %111
194:
  %195 = extractvalue {i64, i1} %190, 0
  store i64 %195, i64* %20
  %196 = load i64, i64* %20
  store i64 %196, i64* %i1
  br label %82
197:
  %198 = call i8 addrspace(1)* @_bal_panic_construct(i64 19201)
  store i8 addrspace(1)* %198, i8 addrspace(1)** %25
  br label %111
199:
  %200 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 2
  %201 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %200, align 8
  %202 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %201, i64 0, i64 %102
  %203 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %202, align 8
  %204 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %203)
  store i64 %204, i64* %22
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %206 = load i64, i64* %22
  %207 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %206)
  call void @_Barray__push(i8 addrspace(1)* %205, i8 addrspace(1)* %207)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %208 = load i64, i64* %i2
  %209 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %208, i64 1)
  %210 = extractvalue {i64, i1} %209, 1
  br i1 %210, label %216, label %213
211:
  %212 = call i8 addrspace(1)* @_bal_panic_construct(i64 19973)
  store i8 addrspace(1)* %212, i8 addrspace(1)** %25
  br label %111
213:
  %214 = extractvalue {i64, i1} %209, 0
  store i64 %214, i64* %24
  %215 = load i64, i64* %24
  store i64 %215, i64* %i2
  br label %96
216:
  %217 = call i8 addrspace(1)* @_bal_panic_construct(i64 20225)
  store i8 addrspace(1)* %217, i8 addrspace(1)** %25
  br label %111
}
