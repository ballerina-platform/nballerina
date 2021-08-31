@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %183, label %24
24:
  %25 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %29
  %30 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702848
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %32 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %33 = bitcast i8 addrspace(1)* %32 to [1 x i8 addrspace(1)*] addrspace(1)*
  %34 = zext i1 1 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35
  %37 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %33, i64 0, i64 0
  store i8 addrspace(1)* %36, i8 addrspace(1)* addrspace(1)* %37
  %38 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %33 to [0 x i8 addrspace(1)*] addrspace(1)*
  %39 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %40 = bitcast i8 addrspace(1)* %39 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %41
  %42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %42
  %43 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %38, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %43
  %44 = getelementptr i8, i8 addrspace(1)* %39, i64 1297036692682702848
  store i8 addrspace(1)* %44, i8 addrspace(1)** %3
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %46 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %47 = bitcast i8 addrspace(1)* %46 to [1 x i8 addrspace(1)*] addrspace(1)*
  %48 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %47, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %48
  %49 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %47 to [0 x i8 addrspace(1)*] addrspace(1)*
  %50 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %51 = bitcast i8 addrspace(1)* %50 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %52
  %53 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %53
  %54 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %49, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %54
  %55 = getelementptr i8, i8 addrspace(1)* %50, i64 1297036692682702848
  store i8 addrspace(1)* %55, i8 addrspace(1)** %5
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %57 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %58 = bitcast i8 addrspace(1)* %57 to [1 x i8 addrspace(1)*] addrspace(1)*
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -17)
  %60 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 0
  store i8 addrspace(1)* %59, i8 addrspace(1)* addrspace(1)* %60
  %61 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %58 to [0 x i8 addrspace(1)*] addrspace(1)*
  %62 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %63 = bitcast i8 addrspace(1)* %62 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %64 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %64
  %65 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %65
  %66 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %61, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %66
  %67 = getelementptr i8, i8 addrspace(1)* %62, i64 1297036692682702848
  store i8 addrspace(1)* %67, i8 addrspace(1)** %7
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %69 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %70 = bitcast i8 addrspace(1)* %69 to [3 x i8 addrspace(1)*] addrspace(1)*
  %71 = zext i1 0 to i64
  %72 = or i64 %71, 72057594037927936
  %73 = getelementptr i8, i8 addrspace(1)* null, i64 %72
  %74 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %70, i64 0, i64 0
  store i8 addrspace(1)* %73, i8 addrspace(1)* addrspace(1)* %74
  %75 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %70, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %75
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 43)
  %77 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %70, i64 0, i64 2
  store i8 addrspace(1)* %76, i8 addrspace(1)* addrspace(1)* %77
  %78 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %70 to [0 x i8 addrspace(1)*] addrspace(1)*
  %79 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %80 = bitcast i8 addrspace(1)* %79 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %81 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %81
  %82 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %82
  %83 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %78, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %83
  %84 = getelementptr i8, i8 addrspace(1)* %79, i64 1297036692682702848
  store i8 addrspace(1)* %84, i8 addrspace(1)** %9
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %86 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %87 = bitcast i8 addrspace(1)* %86 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %88 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %88
  %89 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %89
  %90 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %90
  %91 = getelementptr i8, i8 addrspace(1)* %86, i64 1297036692682702848
  store i8 addrspace(1)* %91, i8 addrspace(1)** %11
  %92 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %93 = bitcast i8 addrspace(1)* %92 to [1 x i8 addrspace(1)*] addrspace(1)*
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %95 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %93, i64 0, i64 0
  store i8 addrspace(1)* %94, i8 addrspace(1)* addrspace(1)* %95
  %96 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %93 to [0 x i8 addrspace(1)*] addrspace(1)*
  %97 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %98 = bitcast i8 addrspace(1)* %97 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %99 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %99
  %100 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %100
  %101 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %96, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %101
  %102 = getelementptr i8, i8 addrspace(1)* %97, i64 1297036692682702848
  store i8 addrspace(1)* %102, i8 addrspace(1)** %12
  %103 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %104 = bitcast i8 addrspace(1)* %103 to [1 x i8 addrspace(1)*] addrspace(1)*
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %106 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %104, i64 0, i64 0
  store i8 addrspace(1)* %105, i8 addrspace(1)* addrspace(1)* %106
  %107 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %104 to [0 x i8 addrspace(1)*] addrspace(1)*
  %108 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %109 = bitcast i8 addrspace(1)* %108 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %110 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %110
  %111 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %111
  %112 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %107, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %112
  %113 = getelementptr i8, i8 addrspace(1)* %108, i64 1297036692682702848
  store i8 addrspace(1)* %113, i8 addrspace(1)** %13
  %114 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %115 = bitcast i8 addrspace(1)* %114 to [1 x i8 addrspace(1)*] addrspace(1)*
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %117 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %115, i64 0, i64 0
  store i8 addrspace(1)* %116, i8 addrspace(1)* addrspace(1)* %117
  %118 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %115 to [0 x i8 addrspace(1)*] addrspace(1)*
  %119 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %120 = bitcast i8 addrspace(1)* %119 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %121 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %121
  %122 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %122
  %123 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %118, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %123
  %124 = getelementptr i8, i8 addrspace(1)* %119, i64 1297036692682702848
  store i8 addrspace(1)* %124, i8 addrspace(1)** %14
  %125 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %126 = bitcast i8 addrspace(1)* %125 to [1 x i8 addrspace(1)*] addrspace(1)*
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %128 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %126, i64 0, i64 0
  store i8 addrspace(1)* %127, i8 addrspace(1)* addrspace(1)* %128
  %129 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %126 to [0 x i8 addrspace(1)*] addrspace(1)*
  %130 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %131 = bitcast i8 addrspace(1)* %130 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %132 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %131, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %132
  %133 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %131, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %133
  %134 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %131, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %129, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %134
  %135 = getelementptr i8, i8 addrspace(1)* %130, i64 1297036692682702848
  store i8 addrspace(1)* %135, i8 addrspace(1)** %15
  %136 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %137 = bitcast i8 addrspace(1)* %136 to [1 x i8 addrspace(1)*] addrspace(1)*
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %139 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %137, i64 0, i64 0
  store i8 addrspace(1)* %138, i8 addrspace(1)* addrspace(1)* %139
  %140 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %137 to [0 x i8 addrspace(1)*] addrspace(1)*
  %141 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %142 = bitcast i8 addrspace(1)* %141 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %143 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %142, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %143
  %144 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %142, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %144
  %145 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %142, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %140, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %145
  %146 = getelementptr i8, i8 addrspace(1)* %141, i64 1297036692682702848
  store i8 addrspace(1)* %146, i8 addrspace(1)** %16
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  call void @_Bio__println(i8 addrspace(1)* %147)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %148 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %149 = bitcast i8 addrspace(1)* %148 to [3 x i8 addrspace(1)*] addrspace(1)*
  %150 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %151 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %149, i64 0, i64 0
  store i8 addrspace(1)* %150, i8 addrspace(1)* addrspace(1)* %151
  %152 = zext i1 1 to i64
  %153 = or i64 %152, 72057594037927936
  %154 = getelementptr i8, i8 addrspace(1)* null, i64 %153
  %155 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %149, i64 0, i64 1
  store i8 addrspace(1)* %154, i8 addrspace(1)* addrspace(1)* %155
  %156 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  %157 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %149, i64 0, i64 2
  store i8 addrspace(1)* %156, i8 addrspace(1)* addrspace(1)* %157
  %158 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %149 to [0 x i8 addrspace(1)*] addrspace(1)*
  %159 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %160 = bitcast i8 addrspace(1)* %159 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %161 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %160, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %161
  %162 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %160, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %162
  %163 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %160, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %158, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %163
  %164 = getelementptr i8, i8 addrspace(1)* %159, i64 1297036692682702848
  store i8 addrspace(1)* %164, i8 addrspace(1)** %18
  %165 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %166 = bitcast i8 addrspace(1)* %165 to [3 x i8 addrspace(1)*] addrspace(1)*
  %167 = zext i1 0 to i64
  %168 = or i64 %167, 72057594037927936
  %169 = getelementptr i8, i8 addrspace(1)* null, i64 %168
  %170 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %166, i64 0, i64 0
  store i8 addrspace(1)* %169, i8 addrspace(1)* addrspace(1)* %170
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %172 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %166, i64 0, i64 1
  store i8 addrspace(1)* %171, i8 addrspace(1)* addrspace(1)* %172
  %173 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %174 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %166, i64 0, i64 2
  store i8 addrspace(1)* %173, i8 addrspace(1)* addrspace(1)* %174
  %175 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %166 to [0 x i8 addrspace(1)*] addrspace(1)*
  %176 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %177 = bitcast i8 addrspace(1)* %176 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %178 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %177, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %178
  %179 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %177, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %179
  %180 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %177, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %175, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %180
  %181 = getelementptr i8, i8 addrspace(1)* %176, i64 1297036692682702848
  store i8 addrspace(1)* %181, i8 addrspace(1)** %19
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %182)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  ret void
183:
  %184 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %184)
  unreachable
}
