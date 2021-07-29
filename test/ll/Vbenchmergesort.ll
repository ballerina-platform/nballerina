@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %105, label %28
28:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %29 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %30 = bitcast i8 addrspace(1)* %29 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33
  %34 = getelementptr i8, i8 addrspace(1)* %29, i64 1297036692682702848
  store i8 addrspace(1)* %34, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %35, i8 addrspace(1)** %v
  %36 = load i64, i64* %len
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 0, i64* %i
  br label %38
38:
  %39 = load i64, i64* %i
  %40 = load i64, i64* %len
  %41 = icmp slt i64 %39, %40
  store i1 %41, i1* %3
  %42 = load i1, i1* %3
  br i1 %42, label %59, label %43
43:
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %45 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %7
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %46, i8 addrspace(1)** %s
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %48 = call i64 @_Barray__length(i8 addrspace(1)* %47)
  store i64 %48, i64* %9
  %49 = load i64, i64* %9
  %50 = load i64, i64* %len
  %51 = icmp eq i64 %49, %50
  store i1 %51, i1* %8
  %52 = load i1, i1* %8
  %53 = zext i1 %52 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %56 = load i64, i64* %len
  %57 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %56, i64 1)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %108, label %106
59:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %61 = load i64, i64* %x
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61)
  call void @_Barray__push(i8 addrspace(1)* %60, i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %63 = load i64, i64* %x
  %64 = load i64, i64* %a
  %65 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %63, i64 %64)
  %66 = extractvalue {i64, i1} %65, 1
  br i1 %66, label %114, label %109
67:
  %68 = load i64, i64* %i
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %i
  br label %38
70:
  %71 = load i64, i64* %i.1
  %72 = load i64, i64* %11
  %73 = icmp slt i64 %71, %72
  store i1 %73, i1* %12
  %74 = load i1, i1* %12
  br i1 %74, label %87, label %75
75:
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %77 = call i64 @_B_checksum(i8 addrspace(1)* %76)
  store i64 %77, i64* %21
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %79 = call i64 @_B_checksum(i8 addrspace(1)* %78)
  store i64 %79, i64* %22
  %80 = load i64, i64* %21
  %81 = load i64, i64* %22
  %82 = icmp eq i64 %80, %81
  store i1 %82, i1* %20
  %83 = load i1, i1* %20
  %84 = zext i1 %83 to i64
  %85 = or i64 %84, 72057594037927936
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85
  call void @_Bio__println(i8 addrspace(1)* %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  ret void
87:
  %88 = load i64, i64* %i.1
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %90 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %89, i64 72057594037927935)
  %91 = bitcast i8 addrspace(1)* %90 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %92 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 0
  %93 = load i64, i64 addrspace(1)* %92, align 8
  %94 = icmp ult i64 %88, %93
  br i1 %94, label %125, label %135
95:
  %96 = zext i1 0 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97
  call void @_Bio__println(i8 addrspace(1)* %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  br label %99
99:
  br label %100
100:
  %101 = load i64, i64* %i.1
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %i.1
  br label %70
103:
  %104 = load i64, i64* %24
  call void @_bal_panic(i64 %104)
  unreachable
105:
  call void @_bal_panic(i64 1284)
  unreachable
106:
  %107 = extractvalue {i64, i1} %57, 0
  store i64 %107, i64* %11
  store i64 0, i64* %i.1
  br label %70
108:
  store i64 4609, i64* %24
  br label %103
109:
  %110 = extractvalue {i64, i1} %65, 0
  store i64 %110, i64* %5
  %111 = load i64, i64* %5
  %112 = load i64, i64* %m
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %115, label %116
114:
  store i64 3585, i64* %24
  br label %103
115:
  store i64 3586, i64* %24
  br label %103
116:
  %117 = icmp eq i64 %111, -9223372036854775808
  %118 = icmp eq i64 %112, -1
  %119 = and i1 %117, %118
  br i1 %119, label %122, label %120
120:
  %121 = srem i64 %111, %112
  store i64 %121, i64* %6
  br label %123
122:
  store i64 0, i64* %6
  br label %123
123:
  %124 = load i64, i64* %6
  store i64 %124, i64* %x
  br label %67
125:
  %126 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 2
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 %88
  %129 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %128, align 8
  store i8 addrspace(1)* %129, i8 addrspace(1)** %14
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %131 = addrspacecast i8 addrspace(1)* %130 to i8*
  %132 = ptrtoint i8* %131 to i64
  %133 = and i64 %132, 2233785415175766016
  %134 = icmp eq i64 %133, 504403158265495552
  br i1 %134, label %136, label %141
135:
  store i64 4869, i64* %24
  br label %103
136:
  %137 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %130)
  store i64 %137, i64* %15
  %138 = load i64, i64* %i.1
  %139 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %138, i64 1)
  %140 = extractvalue {i64, i1} %139, 1
  br i1 %140, label %151, label %142
141:
  store i64 4867, i64* %24
  br label %103
142:
  %143 = extractvalue {i64, i1} %139, 0
  store i64 %143, i64* %16
  %144 = load i64, i64* %16
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %146 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %145, i64 72057594037927935)
  %147 = bitcast i8 addrspace(1)* %146 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %148 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %147, i64 0, i32 0
  %149 = load i64, i64 addrspace(1)* %148, align 8
  %150 = icmp ult i64 %144, %149
  br i1 %150, label %152, label %162
151:
  store i64 4865, i64* %24
  br label %103
152:
  %153 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %147, i64 0, i32 2
  %154 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %153, align 8
  %155 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %154, i64 0, i64 %144
  %156 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %155, align 8
  store i8 addrspace(1)* %156, i8 addrspace(1)** %17
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %158 = addrspacecast i8 addrspace(1)* %157 to i8*
  %159 = ptrtoint i8* %158 to i64
  %160 = and i64 %159, 2233785415175766016
  %161 = icmp eq i64 %160, 504403158265495552
  br i1 %161, label %163, label %169
162:
  store i64 4869, i64* %24
  br label %103
163:
  %164 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %157)
  store i64 %164, i64* %18
  %165 = load i64, i64* %15
  %166 = load i64, i64* %18
  %167 = icmp sgt i64 %165, %166
  store i1 %167, i1* %13
  %168 = load i1, i1* %13
  br i1 %168, label %95, label %99
169:
  store i64 4867, i64* %24
  br label %103
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %34, label %11
11:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %13 = call i64 @_Barray__length(i8 addrspace(1)* %12)
  store i64 %13, i64* %2
  store i64 0, i64* %i
  br label %14
14:
  %15 = load i64, i64* %i
  %16 = load i64, i64* %2
  %17 = icmp slt i64 %15, %16
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %21, label %19
19:
  %20 = load i64, i64* %c
  ret i64 %20
21:
  %22 = load i64, i64* %i
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 72057594037927935)
  %25 = bitcast i8 addrspace(1)* %24 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 0
  %27 = load i64, i64 addrspace(1)* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %35, label %45
29:
  %30 = load i64, i64* %i
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i
  br label %14
32:
  %33 = load i64, i64* %7
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 6660)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 2
  %37 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36, align 8
  %38 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %37, i64 0, i64 %22
  %39 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %38, align 8
  store i8 addrspace(1)* %39, i8 addrspace(1)** %4
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %41 = addrspacecast i8 addrspace(1)* %40 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = and i64 %42, 2233785415175766016
  %44 = icmp eq i64 %43, 504403158265495552
  br i1 %44, label %46, label %52
45:
  store i64 7429, i64* %7
  br label %32
46:
  %47 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %47, i64* %5
  %48 = load i64, i64* %c
  %49 = load i64, i64* %5
  %50 = xor i64 %48, %49
  store i64 %50, i64* %6
  %51 = load i64, i64* %6
  store i64 %51, i64* %c
  br label %29
52:
  store i64 7427, i64* %7
  br label %32
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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %i.1 = alloca i64
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %91, label %24
24:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i64 @_Barray__length(i8 addrspace(1)* %25)
  store i64 %26, i64* %3
  %27 = load i64, i64* %3
  %28 = icmp sle i64 %27, 1
  store i1 %28, i1* %2
  %29 = load i1, i1* %2
  br i1 %29, label %30, label %32
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %31
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %34 = call i64 @_Barray__length(i8 addrspace(1)* %33)
  store i64 %34, i64* %4
  %35 = load i64, i64* %4
  %36 = icmp eq i64 2, 0
  br i1 %36, label %92, label %93
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %mid
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %7
  %41 = load i1, i1* %7
  br i1 %41, label %53, label %42
42:
  %43 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %44 = bitcast i8 addrspace(1)* %43 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %45
  %46 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %46
  %47 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %47
  %48 = getelementptr i8, i8 addrspace(1)* %43, i64 1297036692682702848
  store i8 addrspace(1)* %48, i8 addrspace(1)** %11
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %49, i8 addrspace(1)** %list2
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %51 = call i64 @_Barray__length(i8 addrspace(1)* %50)
  store i64 %51, i64* %12
  %52 = load i64, i64* %mid
  store i64 %52, i64* %i.1
  br label %64
53:
  %54 = load i64, i64* %i
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %56 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %55, i64 72057594037927935)
  %57 = bitcast i8 addrspace(1)* %56 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %58 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 0
  %59 = load i64, i64 addrspace(1)* %58, align 8
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %108, label %118
61:
  %62 = load i64, i64* %i
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %i
  br label %37
64:
  %65 = load i64, i64* %i.1
  %66 = load i64, i64* %12
  %67 = icmp slt i64 %65, %66
  store i1 %67, i1* %13
  %68 = load i1, i1* %13
  br i1 %68, label %78, label %69
69:
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %71 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %70)
  store i8 addrspace(1)* %71, i8 addrspace(1)** %17
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %73 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %72)
  store i8 addrspace(1)* %73, i8 addrspace(1)** %18
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %76 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %74, i8 addrspace(1)* %75)
  store i8 addrspace(1)* %76, i8 addrspace(1)** %19
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  ret i8 addrspace(1)* %77
78:
  %79 = load i64, i64* %i.1
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %81 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %80, i64 72057594037927935)
  %82 = bitcast i8 addrspace(1)* %81 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %83 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 0
  %84 = load i64, i64 addrspace(1)* %83, align 8
  %85 = icmp ult i64 %79, %84
  br i1 %85, label %125, label %135
86:
  %87 = load i64, i64* %i.1
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %i.1
  br label %64
89:
  %90 = load i64, i64* %20
  call void @_bal_panic(i64 %90)
  unreachable
91:
  call void @_bal_panic(i64 8964)
  unreachable
92:
  store i64 9986, i64* %20
  br label %89
93:
  %94 = icmp eq i64 %35, -9223372036854775808
  %95 = icmp eq i64 2, -1
  %96 = and i1 %94, %95
  br i1 %96, label %107, label %97
97:
  %98 = sdiv i64 %35, 2
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
  br label %37
107:
  store i64 9985, i64* %20
  br label %89
108:
  %109 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 2
  %110 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %109, align 8
  %111 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %110, i64 0, i64 %54
  %112 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %111, align 8
  store i8 addrspace(1)* %112, i8 addrspace(1)** %8
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %114 = addrspacecast i8 addrspace(1)* %113 to i8*
  %115 = ptrtoint i8* %114 to i64
  %116 = and i64 %115, 2233785415175766016
  %117 = icmp eq i64 %116, 504403158265495552
  br i1 %117, label %119, label %124
118:
  store i64 10757, i64* %20
  br label %89
119:
  %120 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %113)
  store i64 %120, i64* %9
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %122 = load i64, i64* %9
  %123 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %122)
  call void @_Barray__push(i8 addrspace(1)* %121, i8 addrspace(1)* %123)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  br label %61
124:
  store i64 10755, i64* %20
  br label %89
125:
  %126 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 2
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 %79
  %129 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %128, align 8
  store i8 addrspace(1)* %129, i8 addrspace(1)** %14
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %131 = addrspacecast i8 addrspace(1)* %130 to i8*
  %132 = ptrtoint i8* %131 to i64
  %133 = and i64 %132, 2233785415175766016
  %134 = icmp eq i64 %133, 504403158265495552
  br i1 %134, label %136, label %141
135:
  store i64 11781, i64* %20
  br label %89
136:
  %137 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %130)
  store i64 %137, i64* %15
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %139 = load i64, i64* %15
  %140 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %139)
  call void @_Barray__push(i8 addrspace(1)* %138, i8 addrspace(1)* %140)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  br label %86
141:
  store i64 11779, i64* %20
  br label %89
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
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i1
  %27 = alloca i64
  %28 = alloca i8
  %29 = load i8*, i8** @_bal_stack_guard
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %115, label %31
31:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %32 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %35
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36
  %37 = getelementptr i8, i8 addrspace(1)* %32, i64 1297036692682702848
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %38, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %40 = call i64 @_Barray__length(i8 addrspace(1)* %39)
  store i64 %40, i64* %4
  %41 = load i64, i64* %4
  store i64 %41, i64* %len1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %43 = call i64 @_Barray__length(i8 addrspace(1)* %42)
  store i64 %43, i64* %5
  %44 = load i64, i64* %5
  store i64 %44, i64* %len2
  br label %45
45:
  br label %47
46:
  br label %84
47:
  %48 = load i64, i64* %i1
  %49 = load i64, i64* %len1
  %50 = icmp slt i64 %48, %49
  store i1 %50, i1* %6
  %51 = load i1, i1* %6
  br i1 %51, label %52, label %83
52:
  %53 = load i64, i64* %i2
  %54 = load i64, i64* %len2
  %55 = icmp slt i64 %53, %54
  store i1 %55, i1* %7
  %56 = load i1, i1* %7
  br i1 %56, label %57, label %82
57:
  %58 = load i64, i64* %i1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %59, i64 72057594037927935)
  %61 = bitcast i8 addrspace(1)* %60 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %62 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 0
  %63 = load i64, i64 addrspace(1)* %62, align 8
  %64 = icmp ult i64 %58, %63
  br i1 %64, label %116, label %126
65:
  %66 = load i64, i64* %i1
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %68 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %67, i64 72057594037927935)
  %69 = bitcast i8 addrspace(1)* %68 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %70 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 0
  %71 = load i64, i64 addrspace(1)* %70, align 8
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %155, label %165
73:
  %74 = load i64, i64* %i2
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %76 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %75, i64 72057594037927935)
  %77 = bitcast i8 addrspace(1)* %76 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %78 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 0
  %79 = load i64, i64 addrspace(1)* %78, align 8
  %80 = icmp ult i64 %74, %79
  br i1 %80, label %170, label %180
81:
  br label %45
82:
  br label %83
83:
  br label %46
84:
  %85 = load i64, i64* %i1
  %86 = load i64, i64* %len1
  %87 = icmp slt i64 %85, %86
  store i1 %87, i1* %22
  %88 = load i1, i1* %22
  br i1 %88, label %90, label %89
89:
  br label %98
90:
  %91 = load i64, i64* %i1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %92, i64 72057594037927935)
  %94 = bitcast i8 addrspace(1)* %93 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 0
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %185, label %195
98:
  %99 = load i64, i64* %i2
  %100 = load i64, i64* %len2
  %101 = icmp slt i64 %99, %100
  store i1 %101, i1* %26
  %102 = load i1, i1* %26
  br i1 %102, label %105, label %103
103:
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %104
105:
  %106 = load i64, i64* %i2
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %108 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %107, i64 72057594037927935)
  %109 = bitcast i8 addrspace(1)* %108 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %110 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 0
  %111 = load i64, i64 addrspace(1)* %110, align 8
  %112 = icmp ult i64 %106, %111
  br i1 %112, label %200, label %210
113:
  %114 = load i64, i64* %27
  call void @_bal_panic(i64 %114)
  unreachable
115:
  call void @_bal_panic(i64 13060)
  unreachable
116:
  %117 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 2
  %118 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %117, align 8
  %119 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %118, i64 0, i64 %58
  %120 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %119, align 8
  store i8 addrspace(1)* %120, i8 addrspace(1)** %9
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %122 = addrspacecast i8 addrspace(1)* %121 to i8*
  %123 = ptrtoint i8* %122 to i64
  %124 = and i64 %123, 2233785415175766016
  %125 = icmp eq i64 %124, 504403158265495552
  br i1 %125, label %127, label %136
126:
  store i64 15365, i64* %27
  br label %113
127:
  %128 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %121)
  store i64 %128, i64* %10
  %129 = load i64, i64* %i2
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %131 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %130, i64 72057594037927935)
  %132 = bitcast i8 addrspace(1)* %131 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %133 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %132, i64 0, i32 0
  %134 = load i64, i64 addrspace(1)* %133, align 8
  %135 = icmp ult i64 %129, %134
  br i1 %135, label %137, label %147
136:
  store i64 15363, i64* %27
  br label %113
137:
  %138 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %132, i64 0, i32 2
  %139 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %138, align 8
  %140 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %139, i64 0, i64 %129
  %141 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %140, align 8
  store i8 addrspace(1)* %141, i8 addrspace(1)** %11
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %143 = addrspacecast i8 addrspace(1)* %142 to i8*
  %144 = ptrtoint i8* %143 to i64
  %145 = and i64 %144, 2233785415175766016
  %146 = icmp eq i64 %145, 504403158265495552
  br i1 %146, label %148, label %154
147:
  store i64 15365, i64* %27
  br label %113
148:
  %149 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %142)
  store i64 %149, i64* %12
  %150 = load i64, i64* %10
  %151 = load i64, i64* %12
  %152 = icmp sle i64 %150, %151
  store i1 %152, i1* %8
  %153 = load i1, i1* %8
  br i1 %153, label %65, label %73
154:
  store i64 15363, i64* %27
  br label %113
155:
  %156 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 2
  %157 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %156, align 8
  %158 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 %66
  %159 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %158, align 8
  store i8 addrspace(1)* %159, i8 addrspace(1)** %13
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Barray__push(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %162 = load i64, i64* %i1
  %163 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %162, i64 1)
  %164 = extractvalue {i64, i1} %163, 1
  br i1 %164, label %169, label %166
165:
  store i64 15621, i64* %27
  br label %113
166:
  %167 = extractvalue {i64, i1} %163, 0
  store i64 %167, i64* %15
  %168 = load i64, i64* %15
  store i64 %168, i64* %i1
  br label %81
169:
  store i64 15873, i64* %27
  br label %113
170:
  %171 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 2
  %172 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %171, align 8
  %173 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %172, i64 0, i64 %74
  %174 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %173, align 8
  store i8 addrspace(1)* %174, i8 addrspace(1)** %16
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  call void @_Barray__push(i8 addrspace(1)* %175, i8 addrspace(1)* %176)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %177 = load i64, i64* %i2
  %178 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %177, i64 1)
  %179 = extractvalue {i64, i1} %178, 1
  br i1 %179, label %184, label %181
180:
  store i64 16645, i64* %27
  br label %113
181:
  %182 = extractvalue {i64, i1} %178, 0
  store i64 %182, i64* %18
  %183 = load i64, i64* %18
  store i64 %183, i64* %i2
  br label %81
184:
  store i64 16897, i64* %27
  br label %113
185:
  %186 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 2
  %187 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %186, align 8
  %188 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %187, i64 0, i64 %91
  %189 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %188, align 8
  store i8 addrspace(1)* %189, i8 addrspace(1)** %19
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Barray__push(i8 addrspace(1)* %190, i8 addrspace(1)* %191)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %192 = load i64, i64* %i1
  %193 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %192, i64 1)
  %194 = extractvalue {i64, i1} %193, 1
  br i1 %194, label %199, label %196
195:
  store i64 18949, i64* %27
  br label %113
196:
  %197 = extractvalue {i64, i1} %193, 0
  store i64 %197, i64* %21
  %198 = load i64, i64* %21
  store i64 %198, i64* %i1
  br label %84
199:
  store i64 19201, i64* %27
  br label %113
200:
  %201 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 2
  %202 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %201, align 8
  %203 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %202, i64 0, i64 %106
  %204 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %203, align 8
  store i8 addrspace(1)* %204, i8 addrspace(1)** %23
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  call void @_Barray__push(i8 addrspace(1)* %205, i8 addrspace(1)* %206)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %207 = load i64, i64* %i2
  %208 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %207, i64 1)
  %209 = extractvalue {i64, i1} %208, 1
  br i1 %209, label %214, label %211
210:
  store i64 19973, i64* %27
  br label %113
211:
  %212 = extractvalue {i64, i1} %208, 0
  store i64 %212, i64* %25
  %213 = load i64, i64* %25
  store i64 %213, i64* %i2
  br label %98
214:
  store i64 20225, i64* %27
  br label %113
}
