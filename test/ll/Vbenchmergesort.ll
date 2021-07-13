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
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
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
  br i1 %42, label %62, label %43
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
  %60 = load i64, i64* %i
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %i
  br label %38
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %64 = load i64, i64* %x
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %64)
  call void @_Barray__push(i8 addrspace(1)* %63, i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %66 = load i64, i64* %x
  %67 = load i64, i64* %a
  %68 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %66, i64 %67)
  %69 = extractvalue {i64, i1} %68, 1
  br i1 %69, label %114, label %109
70:
  %71 = load i64, i64* %i.1
  %72 = load i64, i64* %11
  %73 = icmp slt i64 %71, %72
  store i1 %73, i1* %12
  %74 = load i1, i1* %12
  br i1 %74, label %90, label %75
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
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %i.1
  br label %70
90:
  %91 = load i64, i64* %i.1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %92, i64 72057594037927935)
  %94 = bitcast i8 addrspace(1)* %93 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 0
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %125, label %135
98:
  %99 = zext i1 0 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  call void @_Bio__println(i8 addrspace(1)* %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  br label %102
102:
  br label %87
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
  %110 = extractvalue {i64, i1} %68, 0
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
  br label %59
125:
  %126 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 2
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 %91
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
  br i1 %168, label %98, label %102
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
  br i1 %18, label %24, label %19
19:
  %20 = load i64, i64* %c
  ret i64 %20
21:
  %22 = load i64, i64* %i
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %i
  br label %14
24:
  %25 = load i64, i64* %i
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %26, i64 72057594037927935)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  %30 = load i64, i64 addrspace(1)* %29, align 8
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %35, label %45
32:
  %33 = load i64, i64* %7
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 6660)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  %37 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36, align 8
  %38 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %37, i64 0, i64 %25
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
  br label %21
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
  br i1 %41, label %56, label %42
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
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %i
  br label %37
56:
  %57 = load i64, i64* %i
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 72057594037927935)
  %60 = bitcast i8 addrspace(1)* %59 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %61 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 0
  %62 = load i64, i64 addrspace(1)* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %108, label %118
64:
  %65 = load i64, i64* %i.1
  %66 = load i64, i64* %12
  %67 = icmp slt i64 %65, %66
  store i1 %67, i1* %13
  %68 = load i1, i1* %13
  br i1 %68, label %81, label %69
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
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %i.1
  br label %64
81:
  %82 = load i64, i64* %i.1
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %84 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %83, i64 72057594037927935)
  %85 = bitcast i8 addrspace(1)* %84 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %86 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %85, i64 0, i32 0
  %87 = load i64, i64 addrspace(1)* %86, align 8
  %88 = icmp ult i64 %82, %87
  br i1 %88, label %125, label %135
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
  %109 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 2
  %110 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %109, align 8
  %111 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %110, i64 0, i64 %57
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
  br label %53
124:
  store i64 10755, i64* %20
  br label %89
125:
  %126 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %85, i64 0, i32 2
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 %82
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
  br label %78
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
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i8
  %29 = load i8*, i8** @_bal_stack_guard
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %114, label %31
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
  %60 = bitcast i8 addrspace(1)* %59 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %61 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 0
  %62 = load i64, i64 addrspace(1)* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %115, label %125
64:
  %65 = load i64, i64* %i1
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %67 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %66, i64 72057594037927935)
  %68 = bitcast i8 addrspace(1)* %67 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %69 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 0
  %70 = load i64, i64 addrspace(1)* %69, align 8
  %71 = icmp ult i64 %65, %70
  br i1 %71, label %154, label %164
72:
  %73 = load i64, i64* %i2
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %75 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 72057594037927935)
  %76 = bitcast i8 addrspace(1)* %75 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %77 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %76, i64 0, i32 0
  %78 = load i64, i64 addrspace(1)* %77, align 8
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %169, label %179
80:
  br label %45
81:
  br label %82
82:
  br label %50
83:
  %84 = load i64, i64* %i1
  %85 = load i64, i64* %len1
  %86 = icmp slt i64 %84, %85
  store i1 %86, i1* %19
  %87 = load i1, i1* %19
  br i1 %87, label %89, label %88
88:
  br label %97
89:
  %90 = load i64, i64* %i1
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %92 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %91, i64 72057594037927935)
  %93 = bitcast i8 addrspace(1)* %92 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %94 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 0
  %95 = load i64, i64 addrspace(1)* %94, align 8
  %96 = icmp ult i64 %90, %95
  br i1 %96, label %184, label %194
97:
  %98 = load i64, i64* %i2
  %99 = load i64, i64* %len2
  %100 = icmp slt i64 %98, %99
  store i1 %100, i1* %23
  %101 = load i1, i1* %23
  br i1 %101, label %104, label %102
102:
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %103
104:
  %105 = load i64, i64* %i2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %107 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %106, i64 72057594037927935)
  %108 = bitcast i8 addrspace(1)* %107 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %109 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 0
  %110 = load i64, i64 addrspace(1)* %109, align 8
  %111 = icmp ult i64 %105, %110
  br i1 %111, label %199, label %209
112:
  %113 = load i64, i64* %27
  call void @_bal_panic(i64 %113)
  unreachable
114:
  call void @_bal_panic(i64 13060)
  unreachable
115:
  %116 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 2
  %117 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %116, align 8
  %118 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 %57
  %119 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %118, align 8
  store i8 addrspace(1)* %119, i8 addrspace(1)** %9
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %121 = addrspacecast i8 addrspace(1)* %120 to i8*
  %122 = ptrtoint i8* %121 to i64
  %123 = and i64 %122, 2233785415175766016
  %124 = icmp eq i64 %123, 504403158265495552
  br i1 %124, label %126, label %135
125:
  store i64 15365, i64* %27
  br label %112
126:
  %127 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %120)
  store i64 %127, i64* %10
  %128 = load i64, i64* %i2
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %130 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %129, i64 72057594037927935)
  %131 = bitcast i8 addrspace(1)* %130 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %132 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %131, i64 0, i32 0
  %133 = load i64, i64 addrspace(1)* %132, align 8
  %134 = icmp ult i64 %128, %133
  br i1 %134, label %136, label %146
135:
  store i64 15363, i64* %27
  br label %112
136:
  %137 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %131, i64 0, i32 2
  %138 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %137, align 8
  %139 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %138, i64 0, i64 %128
  %140 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %139, align 8
  store i8 addrspace(1)* %140, i8 addrspace(1)** %11
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %142 = addrspacecast i8 addrspace(1)* %141 to i8*
  %143 = ptrtoint i8* %142 to i64
  %144 = and i64 %143, 2233785415175766016
  %145 = icmp eq i64 %144, 504403158265495552
  br i1 %145, label %147, label %153
146:
  store i64 15365, i64* %27
  br label %112
147:
  %148 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %141)
  store i64 %148, i64* %12
  %149 = load i64, i64* %10
  %150 = load i64, i64* %12
  %151 = icmp sle i64 %149, %150
  store i1 %151, i1* %8
  %152 = load i1, i1* %8
  br i1 %152, label %64, label %72
153:
  store i64 15363, i64* %27
  br label %112
154:
  %155 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 2
  %156 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %155, align 8
  %157 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %156, i64 0, i64 %65
  %158 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %157, align 8
  store i8 addrspace(1)* %158, i8 addrspace(1)** %13
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Barray__push(i8 addrspace(1)* %159, i8 addrspace(1)* %160)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %161 = load i64, i64* %i1
  %162 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %161, i64 1)
  %163 = extractvalue {i64, i1} %162, 1
  br i1 %163, label %168, label %165
164:
  store i64 15621, i64* %27
  br label %112
165:
  %166 = extractvalue {i64, i1} %162, 0
  store i64 %166, i64* %15
  %167 = load i64, i64* %15
  store i64 %167, i64* %i1
  br label %80
168:
  store i64 15873, i64* %27
  br label %112
169:
  %170 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %76, i64 0, i32 2
  %171 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %170, align 8
  %172 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %171, i64 0, i64 %73
  %173 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %172, align 8
  store i8 addrspace(1)* %173, i8 addrspace(1)** %16
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  call void @_Barray__push(i8 addrspace(1)* %174, i8 addrspace(1)* %175)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %176 = load i64, i64* %i2
  %177 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %176, i64 1)
  %178 = extractvalue {i64, i1} %177, 1
  br i1 %178, label %183, label %180
179:
  store i64 16645, i64* %27
  br label %112
180:
  %181 = extractvalue {i64, i1} %177, 0
  store i64 %181, i64* %18
  %182 = load i64, i64* %18
  store i64 %182, i64* %i2
  br label %80
183:
  store i64 16897, i64* %27
  br label %112
184:
  %185 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 2
  %186 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %185, align 8
  %187 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %186, i64 0, i64 %90
  %188 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %187, align 8
  store i8 addrspace(1)* %188, i8 addrspace(1)** %20
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  call void @_Barray__push(i8 addrspace(1)* %189, i8 addrspace(1)* %190)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %191 = load i64, i64* %i1
  %192 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %191, i64 1)
  %193 = extractvalue {i64, i1} %192, 1
  br i1 %193, label %198, label %195
194:
  store i64 18949, i64* %27
  br label %112
195:
  %196 = extractvalue {i64, i1} %192, 0
  store i64 %196, i64* %22
  %197 = load i64, i64* %22
  store i64 %197, i64* %i1
  br label %83
198:
  store i64 19201, i64* %27
  br label %112
199:
  %200 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 2
  %201 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %200, align 8
  %202 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %201, i64 0, i64 %105
  %203 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %202, align 8
  store i8 addrspace(1)* %203, i8 addrspace(1)** %24
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %24
  call void @_Barray__push(i8 addrspace(1)* %204, i8 addrspace(1)* %205)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %206 = load i64, i64* %i2
  %207 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %206, i64 1)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %213, label %210
209:
  store i64 19973, i64* %27
  br label %112
210:
  %211 = extractvalue {i64, i1} %207, 0
  store i64 %211, i64* %26
  %212 = load i64, i64* %26
  store i64 %212, i64* %i2
  br label %97
213:
  store i64 20225, i64* %27
  br label %112
}
