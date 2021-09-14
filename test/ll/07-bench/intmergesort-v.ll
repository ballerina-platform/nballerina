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
  br i1 %25, label %104, label %26
26:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702848
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %34, i8 addrspace(1)** %v
  %35 = load i64, i64* %len
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 0, i64* %i
  br label %37
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %len
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %3
  %41 = load i1, i1* %3
  br i1 %41, label %58, label %42
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %44 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %7
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %45, i8 addrspace(1)** %s
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %47 = call i64 @_Barray__length(i8 addrspace(1)* %46)
  store i64 %47, i64* %9
  %48 = load i64, i64* %9
  %49 = load i64, i64* %len
  %50 = icmp eq i64 %48, %49
  store i1 %50, i1* %8
  %51 = load i1, i1* %8
  %52 = zext i1 %51 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %55 = load i64, i64* %len
  %56 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %55, i64 1)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %108, label %106
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %60 = load i64, i64* %x
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60)
  call void @_Barray__push(i8 addrspace(1)* %59, i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %62 = load i64, i64* %x
  %63 = load i64, i64* %a
  %64 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %62, i64 %63)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %115, label %110
66:
  %67 = load i64, i64* %i
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %i
  br label %37
69:
  %70 = load i64, i64* %i.1
  %71 = load i64, i64* %11
  %72 = icmp slt i64 %70, %71
  store i1 %72, i1* %12
  %73 = load i1, i1* %12
  br i1 %73, label %86, label %74
74:
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %76 = call i64 @_B_checksum(i8 addrspace(1)* %75)
  store i64 %76, i64* %19
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %78 = call i64 @_B_checksum(i8 addrspace(1)* %77)
  store i64 %78, i64* %20
  %79 = load i64, i64* %19
  %80 = load i64, i64* %20
  %81 = icmp eq i64 %79, %80
  store i1 %81, i1* %18
  %82 = load i1, i1* %18
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  ret void
86:
  %87 = load i64, i64* %i.1
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %89 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %88, i64 72057594037927935)
  %90 = bitcast i8 addrspace(1)* %89 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %91 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  %92 = load i64, i64 addrspace(1)* %91, align 8
  %93 = icmp ult i64 %87, %92
  br i1 %93, label %128, label %137
94:
  %95 = zext i1 0 to i64
  %96 = or i64 %95, 72057594037927936
  %97 = getelementptr i8, i8 addrspace(1)* null, i64 %96
  call void @_Bio__println(i8 addrspace(1)* %97)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  br label %98
98:
  br label %99
99:
  %100 = load i64, i64* %i.1
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %i.1
  br label %69
102:
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %103)
  unreachable
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %105)
  unreachable
106:
  %107 = extractvalue {i64, i1} %56, 0
  store i64 %107, i64* %11
  store i64 0, i64* %i.1
  br label %69
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865)
  store i8 addrspace(1)* %109, i8 addrspace(1)** %22
  br label %102
110:
  %111 = extractvalue {i64, i1} %64, 0
  store i64 %111, i64* %5
  %112 = load i64, i64* %5
  %113 = load i64, i64* %m
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %117, label %119
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841)
  store i8 addrspace(1)* %116, i8 addrspace(1)** %22
  br label %102
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842)
  store i8 addrspace(1)* %118, i8 addrspace(1)** %22
  br label %102
119:
  %120 = icmp eq i64 %112, -9223372036854775808
  %121 = icmp eq i64 %113, -1
  %122 = and i1 %120, %121
  br i1 %122, label %125, label %123
123:
  %124 = srem i64 %112, %113
  store i64 %124, i64* %6
  br label %126
125:
  store i64 0, i64* %6
  br label %126
126:
  %127 = load i64, i64* %6
  store i64 %127, i64* %x
  br label %66
128:
  %129 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 3
  %130 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %129, align 8
  %131 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %130, i64 0, i64 %87
  %132 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %131, align 8
  %133 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %132)
  store i64 %133, i64* %14
  %134 = load i64, i64* %i.1
  %135 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %134, i64 1)
  %136 = extractvalue {i64, i1} %135, 1
  br i1 %136, label %148, label %139
137:
  %138 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125)
  store i8 addrspace(1)* %138, i8 addrspace(1)** %22
  br label %102
139:
  %140 = extractvalue {i64, i1} %135, 0
  store i64 %140, i64* %15
  %141 = load i64, i64* %15
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %143 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %142, i64 72057594037927935)
  %144 = bitcast i8 addrspace(1)* %143 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %145 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %144, i64 0, i32 1
  %146 = load i64, i64 addrspace(1)* %145, align 8
  %147 = icmp ult i64 %141, %146
  br i1 %147, label %150, label %160
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121)
  store i8 addrspace(1)* %149, i8 addrspace(1)** %22
  br label %102
150:
  %151 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %144, i64 0, i32 3
  %152 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %151, align 8
  %153 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %152, i64 0, i64 %141
  %154 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %153, align 8
  %155 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %154)
  store i64 %155, i64* %16
  %156 = load i64, i64* %14
  %157 = load i64, i64* %16
  %158 = icmp sgt i64 %156, %157
  store i1 %158, i1* %13
  %159 = load i1, i1* %13
  br i1 %159, label %94, label %98
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %22
  br label %102
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
  %24 = bitcast i8 addrspace(1)* %23 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 1
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
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 3
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
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685)
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
  br i1 %21, label %90, label %22
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
  br i1 %34, label %92, label %94
35:
  %36 = load i64, i64* %i
  %37 = load i64, i64* %mid
  %38 = icmp slt i64 %36, %37
  store i1 %38, i1* %7
  %39 = load i1, i1* %7
  br i1 %39, label %52, label %40
40:
  %41 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %42 = bitcast i8 addrspace(1)* %41 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %44
  %45 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %45
  %46 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %46
  %47 = getelementptr i8, i8 addrspace(1)* %41, i64 1297036692682702848
  store i8 addrspace(1)* %47, i8 addrspace(1)** %10
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %48, i8 addrspace(1)** %list2
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %50 = call i64 @_Barray__length(i8 addrspace(1)* %49)
  store i64 %50, i64* %11
  %51 = load i64, i64* %mid
  store i64 %51, i64* %i.1
  br label %63
52:
  %53 = load i64, i64* %i
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %55 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %54, i64 72057594037927935)
  %56 = bitcast i8 addrspace(1)* %55 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %57 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 1
  %58 = load i64, i64 addrspace(1)* %57, align 8
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %111, label %120
60:
  %61 = load i64, i64* %i
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %i
  br label %35
63:
  %64 = load i64, i64* %i.1
  %65 = load i64, i64* %11
  %66 = icmp slt i64 %64, %65
  store i1 %66, i1* %12
  %67 = load i1, i1* %12
  br i1 %67, label %77, label %68
68:
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %70 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %69)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %15
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %72 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %71)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %16
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %75 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %73, i8 addrspace(1)* %74)
  store i8 addrspace(1)* %75, i8 addrspace(1)** %17
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %76
77:
  %78 = load i64, i64* %i.1
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %80 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %79, i64 72057594037927935)
  %81 = bitcast i8 addrspace(1)* %80 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %82 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %81, i64 0, i32 1
  %83 = load i64, i64 addrspace(1)* %82, align 8
  %84 = icmp ult i64 %78, %83
  br i1 %84, label %122, label %131
85:
  %86 = load i64, i64* %i.1
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %i.1
  br label %63
88:
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_bal_panic(i8 addrspace(1)* %89)
  unreachable
90:
  %91 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220)
  call void @_bal_panic(i8 addrspace(1)* %91)
  unreachable
92:
  %93 = call i8 addrspace(1)* @_bal_panic_construct(i64 10242)
  store i8 addrspace(1)* %93, i8 addrspace(1)** %18
  br label %88
94:
  %95 = icmp eq i64 %33, -9223372036854775808
  %96 = icmp eq i64 2, -1
  %97 = and i1 %95, %96
  br i1 %97, label %109, label %98
98:
  %99 = sdiv i64 %33, 2
  store i64 %99, i64* %5
  %100 = load i64, i64* %5
  store i64 %100, i64* %mid
  %101 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %102 = bitcast i8 addrspace(1)* %101 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %103 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %103
  %104 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %104
  %105 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %105
  %106 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %106
  %107 = getelementptr i8, i8 addrspace(1)* %101, i64 1297036692682702848
  store i8 addrspace(1)* %107, i8 addrspace(1)** %6
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %108, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %35
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241)
  store i8 addrspace(1)* %110, i8 addrspace(1)** %18
  br label %88
111:
  %112 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 3
  %113 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %112, align 8
  %114 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %113, i64 0, i64 %53
  %115 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %114, align 8
  %116 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %115)
  store i64 %116, i64* %8
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %118 = load i64, i64* %8
  %119 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %118)
  call void @_Barray__push(i8 addrspace(1)* %117, i8 addrspace(1)* %119)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %60
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %18
  br label %88
122:
  %123 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %81, i64 0, i32 3
  %124 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %123, align 8
  %125 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %124, i64 0, i64 %78
  %126 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %125, align 8
  %127 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %126)
  store i64 %127, i64* %13
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %129 = load i64, i64* %13
  %130 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %129)
  call void @_Barray__push(i8 addrspace(1)* %128, i8 addrspace(1)* %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  br label %85
131:
  %132 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037)
  store i8 addrspace(1)* %132, i8 addrspace(1)** %18
  br label %88
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
  br i1 %28, label %114, label %29
29:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %30 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %31 = bitcast i8 addrspace(1)* %30 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35
  %36 = getelementptr i8, i8 addrspace(1)* %30, i64 1297036692682702848
  store i8 addrspace(1)* %36, i8 addrspace(1)** %3
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %37, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %39 = call i64 @_Barray__length(i8 addrspace(1)* %38)
  store i64 %39, i64* %4
  %40 = load i64, i64* %4
  store i64 %40, i64* %len1
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %42 = call i64 @_Barray__length(i8 addrspace(1)* %41)
  store i64 %42, i64* %5
  %43 = load i64, i64* %5
  store i64 %43, i64* %len2
  br label %44
44:
  br label %45
45:
  %46 = load i64, i64* %i1
  %47 = load i64, i64* %len1
  %48 = icmp slt i64 %46, %47
  store i1 %48, i1* %6
  %49 = load i1, i1* %6
  br i1 %49, label %51, label %82
50:
  br label %83
51:
  %52 = load i64, i64* %i2
  %53 = load i64, i64* %len2
  %54 = icmp slt i64 %52, %53
  store i1 %54, i1* %7
  %55 = load i1, i1* %7
  br i1 %55, label %56, label %81
56:
  %57 = load i64, i64* %i1
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 72057594037927935)
  %60 = bitcast i8 addrspace(1)* %59 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %61 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 1
  %62 = load i64, i64 addrspace(1)* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %116, label %129
64:
  %65 = load i64, i64* %i1
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %67 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %66, i64 72057594037927935)
  %68 = bitcast i8 addrspace(1)* %67 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %69 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 1
  %70 = load i64, i64 addrspace(1)* %69, align 8
  %71 = icmp ult i64 %65, %70
  br i1 %71, label %143, label %155
72:
  %73 = load i64, i64* %i2
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %75 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 72057594037927935)
  %76 = bitcast i8 addrspace(1)* %75 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %77 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %76, i64 0, i32 1
  %78 = load i64, i64 addrspace(1)* %77, align 8
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %162, label %174
80:
  br label %44
81:
  br label %82
82:
  br label %50
83:
  %84 = load i64, i64* %i1
  %85 = load i64, i64* %len1
  %86 = icmp slt i64 %84, %85
  store i1 %86, i1* %17
  %87 = load i1, i1* %17
  br i1 %87, label %88, label %96
88:
  %89 = load i64, i64* %i1
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %91 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %90, i64 72057594037927935)
  %92 = bitcast i8 addrspace(1)* %91 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %93 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 1
  %94 = load i64, i64 addrspace(1)* %93, align 8
  %95 = icmp ult i64 %89, %94
  br i1 %95, label %181, label %193
96:
  br label %97
97:
  %98 = load i64, i64* %i2
  %99 = load i64, i64* %len2
  %100 = icmp slt i64 %98, %99
  store i1 %100, i1* %21
  %101 = load i1, i1* %21
  br i1 %101, label %102, label %110
102:
  %103 = load i64, i64* %i2
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %105 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %104, i64 72057594037927935)
  %106 = bitcast i8 addrspace(1)* %105 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %107 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  %108 = load i64, i64 addrspace(1)* %107, align 8
  %109 = icmp ult i64 %103, %108
  br i1 %109, label %200, label %212
110:
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %111
112:
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_bal_panic(i8 addrspace(1)* %113)
  unreachable
114:
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 13316)
  call void @_bal_panic(i8 addrspace(1)* %115)
  unreachable
116:
  %117 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 3
  %118 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %117, align 8
  %119 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %118, i64 0, i64 %57
  %120 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %119, align 8
  %121 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %120)
  store i64 %121, i64* %9
  %122 = load i64, i64* %i2
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %124 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %123, i64 72057594037927935)
  %125 = bitcast i8 addrspace(1)* %124 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %126 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %125, i64 0, i32 1
  %127 = load i64, i64 addrspace(1)* %126, align 8
  %128 = icmp ult i64 %122, %127
  br i1 %128, label %131, label %141
129:
  %130 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621)
  store i8 addrspace(1)* %130, i8 addrspace(1)** %25
  br label %112
131:
  %132 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %125, i64 0, i32 3
  %133 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %132, align 8
  %134 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %133, i64 0, i64 %122
  %135 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %134, align 8
  %136 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %135)
  store i64 %136, i64* %10
  %137 = load i64, i64* %9
  %138 = load i64, i64* %10
  %139 = icmp sle i64 %137, %138
  store i1 %139, i1* %8
  %140 = load i1, i1* %8
  br i1 %140, label %64, label %72
141:
  %142 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621)
  store i8 addrspace(1)* %142, i8 addrspace(1)** %25
  br label %112
143:
  %144 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 3
  %145 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %144, align 8
  %146 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %145, i64 0, i64 %65
  %147 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %146, align 8
  %148 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %147)
  store i64 %148, i64* %11
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %150 = load i64, i64* %11
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150)
  call void @_Barray__push(i8 addrspace(1)* %149, i8 addrspace(1)* %151)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %152 = load i64, i64* %i1
  %153 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %152, i64 1)
  %154 = extractvalue {i64, i1} %153, 1
  br i1 %154, label %160, label %157
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877)
  store i8 addrspace(1)* %156, i8 addrspace(1)** %25
  br label %112
157:
  %158 = extractvalue {i64, i1} %153, 0
  store i64 %158, i64* %13
  %159 = load i64, i64* %13
  store i64 %159, i64* %i1
  br label %80
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %25
  br label %112
162:
  %163 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %76, i64 0, i32 3
  %164 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %163, align 8
  %165 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %164, i64 0, i64 %73
  %166 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %165, align 8
  %167 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %166)
  store i64 %167, i64* %14
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %169 = load i64, i64* %14
  %170 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %169)
  call void @_Barray__push(i8 addrspace(1)* %168, i8 addrspace(1)* %170)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %171 = load i64, i64* %i2
  %172 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %171, i64 1)
  %173 = extractvalue {i64, i1} %172, 1
  br i1 %173, label %179, label %176
174:
  %175 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901)
  store i8 addrspace(1)* %175, i8 addrspace(1)** %25
  br label %112
176:
  %177 = extractvalue {i64, i1} %172, 0
  store i64 %177, i64* %16
  %178 = load i64, i64* %16
  store i64 %178, i64* %i2
  br label %80
179:
  %180 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153)
  store i8 addrspace(1)* %180, i8 addrspace(1)** %25
  br label %112
181:
  %182 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 3
  %183 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %182, align 8
  %184 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %183, i64 0, i64 %89
  %185 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %184, align 8
  %186 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %185)
  store i64 %186, i64* %18
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %188 = load i64, i64* %18
  %189 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %188)
  call void @_Barray__push(i8 addrspace(1)* %187, i8 addrspace(1)* %189)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %190 = load i64, i64* %i1
  %191 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %190, i64 1)
  %192 = extractvalue {i64, i1} %191, 1
  br i1 %192, label %198, label %195
193:
  %194 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205)
  store i8 addrspace(1)* %194, i8 addrspace(1)** %25
  br label %112
195:
  %196 = extractvalue {i64, i1} %191, 0
  store i64 %196, i64* %20
  %197 = load i64, i64* %20
  store i64 %197, i64* %i1
  br label %83
198:
  %199 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457)
  store i8 addrspace(1)* %199, i8 addrspace(1)** %25
  br label %112
200:
  %201 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  %202 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %201, align 8
  %203 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %202, i64 0, i64 %103
  %204 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %203, align 8
  %205 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %204)
  store i64 %205, i64* %22
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %207 = load i64, i64* %22
  %208 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %207)
  call void @_Barray__push(i8 addrspace(1)* %206, i8 addrspace(1)* %208)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %209 = load i64, i64* %i2
  %210 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %209, i64 1)
  %211 = extractvalue {i64, i1} %210, 1
  br i1 %211, label %217, label %214
212:
  %213 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229)
  store i8 addrspace(1)* %213, i8 addrspace(1)** %25
  br label %112
214:
  %215 = extractvalue {i64, i1} %210, 0
  store i64 %215, i64* %24
  %216 = load i64, i64* %24
  store i64 %216, i64* %i2
  br label %97
217:
  %218 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481)
  store i8 addrspace(1)* %218, i8 addrspace(1)** %25
  br label %112
}
