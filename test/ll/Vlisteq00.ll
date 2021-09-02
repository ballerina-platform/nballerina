@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %138, label %22
22:
  %23 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %24 = bitcast i8 addrspace(1)* %23 to [3 x i8 addrspace(1)*] addrspace(1)*
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %26 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %24, i64 0, i64 0
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %28 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %24, i64 0, i64 1
  store i8 addrspace(1)* %27, i8 addrspace(1)* addrspace(1)* %28
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %30 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %24, i64 0, i64 2
  store i8 addrspace(1)* %29, i8 addrspace(1)* addrspace(1)* %30
  %31 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %24 to [0 x i8 addrspace(1)*] addrspace(1)*
  %32 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %35
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %31, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36
  %37 = getelementptr i8, i8 addrspace(1)* %32, i64 1297036692682702848
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %38, i8 addrspace(1)** %v1
  %39 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %40 = bitcast i8 addrspace(1)* %39 to [3 x i8 addrspace(1)*] addrspace(1)*
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %42 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %40, i64 0, i64 0
  store i8 addrspace(1)* %41, i8 addrspace(1)* addrspace(1)* %42
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %44 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %40, i64 0, i64 1
  store i8 addrspace(1)* %43, i8 addrspace(1)* addrspace(1)* %44
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %46 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %40, i64 0, i64 2
  store i8 addrspace(1)* %45, i8 addrspace(1)* addrspace(1)* %46
  %47 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %40 to [0 x i8 addrspace(1)*] addrspace(1)*
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %49 = bitcast i8 addrspace(1)* %48 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %50 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %50
  %51 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %51
  %52 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %47, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %52
  %53 = getelementptr i8, i8 addrspace(1)* %48, i64 1297036692682702848
  store i8 addrspace(1)* %53, i8 addrspace(1)** %2
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %54, i8 addrspace(1)** %v2
  %55 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %56 = bitcast i8 addrspace(1)* %55 to [3 x i8 addrspace(1)*] addrspace(1)*
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %58 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %56, i64 0, i64 0
  store i8 addrspace(1)* %57, i8 addrspace(1)* addrspace(1)* %58
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %60 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %56, i64 0, i64 1
  store i8 addrspace(1)* %59, i8 addrspace(1)* addrspace(1)* %60
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %62 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %56, i64 0, i64 2
  store i8 addrspace(1)* %61, i8 addrspace(1)* addrspace(1)* %62
  %63 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %56 to [0 x i8 addrspace(1)*] addrspace(1)*
  %64 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %65 = bitcast i8 addrspace(1)* %64 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %66 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %66
  %67 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %67
  %68 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %63, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %68
  %69 = getelementptr i8, i8 addrspace(1)* %64, i64 1297036692682702848
  store i8 addrspace(1)* %69, i8 addrspace(1)** %3
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %70, i8 addrspace(1)** %v3
  %71 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %72 = bitcast i8 addrspace(1)* %71 to [4 x i8 addrspace(1)*] addrspace(1)*
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %74 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 0
  store i8 addrspace(1)* %73, i8 addrspace(1)* addrspace(1)* %74
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %76 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 1
  store i8 addrspace(1)* %75, i8 addrspace(1)* addrspace(1)* %76
  %77 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %78 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 2
  store i8 addrspace(1)* %77, i8 addrspace(1)* addrspace(1)* %78
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %80 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 3
  store i8 addrspace(1)* %79, i8 addrspace(1)* addrspace(1)* %80
  %81 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %72 to [0 x i8 addrspace(1)*] addrspace(1)*
  %82 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %83 = bitcast i8 addrspace(1)* %82 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %84 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 0
  store i64 4, i64 addrspace(1)* %84
  %85 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %85
  %86 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %81, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %86
  %87 = getelementptr i8, i8 addrspace(1)* %82, i64 1297036692682702848
  store i8 addrspace(1)* %87, i8 addrspace(1)** %4
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %88, i8 addrspace(1)** %v4
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %91 = call i1 @_bal_eq(i8 addrspace(1)* %89, i8 addrspace(1)* %90)
  store i1 %91, i1* %5
  %92 = load i1, i1* %5
  %93 = zext i1 %92 to i64
  %94 = or i64 %93, 72057594037927936
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %98 = call i1 @_bal_eq(i8 addrspace(1)* %96, i8 addrspace(1)* %97)
  store i1 %98, i1* %7
  %99 = load i1, i1* %7
  %100 = zext i1 %99 to i64
  %101 = or i64 %100, 72057594037927936
  %102 = getelementptr i8, i8 addrspace(1)* null, i64 %101
  call void @_Bio__println(i8 addrspace(1)* %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %105 = call i1 @_bal_eq(i8 addrspace(1)* %103, i8 addrspace(1)* %104)
  store i1 %105, i1* %9
  %106 = load i1, i1* %9
  %107 = zext i1 %106 to i64
  %108 = or i64 %107, 72057594037927936
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108
  call void @_Bio__println(i8 addrspace(1)* %109)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %112 = call i1 @_bal_eq(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  store i1 %112, i1* %11
  %113 = load i1, i1* %11
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %119 = call i1 @_bal_eq(i8 addrspace(1)* %117, i8 addrspace(1)* %118)
  store i1 %119, i1* %13
  %120 = load i1, i1* %13
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, i8 addrspace(1)* null, i64 %122
  call void @_Bio__println(i8 addrspace(1)* %123)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %126 = icmp eq i8 addrspace(1)* %124, %125
  store i1 %126, i1* %15
  %127 = load i1, i1* %15
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, i8 addrspace(1)* null, i64 %129
  call void @_Bio__println(i8 addrspace(1)* %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %133 = icmp eq i8 addrspace(1)* %131, %132
  store i1 %133, i1* %17
  %134 = load i1, i1* %17
  %135 = zext i1 %134 to i64
  %136 = or i64 %135, 72057594037927936
  %137 = getelementptr i8, i8 addrspace(1)* null, i64 %136
  call void @_Bio__println(i8 addrspace(1)* %137)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
138:
  %139 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %139)
  unreachable
}
