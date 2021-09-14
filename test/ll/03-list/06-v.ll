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
  br i1 %23, label %196, label %24
24:
  %25 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %30
  %31 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702848
  store i8 addrspace(1)* %31, i8 addrspace(1)** %1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %34 = bitcast i8 addrspace(1)* %33 to [1 x i8 addrspace(1)*] addrspace(1)*
  %35 = zext i1 1 to i64
  %36 = or i64 %35, 72057594037927936
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36
  %38 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %34, i64 0, i64 0
  store i8 addrspace(1)* %37, i8 addrspace(1)* addrspace(1)* %38
  %39 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %34 to [0 x i8 addrspace(1)*] addrspace(1)*
  %40 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %41 = bitcast i8 addrspace(1)* %40 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %42
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %44
  %45 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %39, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %45
  %46 = getelementptr i8, i8 addrspace(1)* %40, i64 1297036692682702848
  store i8 addrspace(1)* %46, i8 addrspace(1)** %3
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %49 = bitcast i8 addrspace(1)* %48 to [1 x i8 addrspace(1)*] addrspace(1)*
  %50 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %50
  %51 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %49 to [0 x i8 addrspace(1)*] addrspace(1)*
  %52 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %53 = bitcast i8 addrspace(1)* %52 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %54 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %54
  %55 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %55
  %56 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %56
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %53, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %51, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %57
  %58 = getelementptr i8, i8 addrspace(1)* %52, i64 1297036692682702848
  store i8 addrspace(1)* %58, i8 addrspace(1)** %5
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %60 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %61 = bitcast i8 addrspace(1)* %60 to [1 x i8 addrspace(1)*] addrspace(1)*
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -17)
  %63 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %61, i64 0, i64 0
  store i8 addrspace(1)* %62, i8 addrspace(1)* addrspace(1)* %63
  %64 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %61 to [0 x i8 addrspace(1)*] addrspace(1)*
  %65 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %66 = bitcast i8 addrspace(1)* %65 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %67 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %67
  %68 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %68
  %69 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %69
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %64, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %70
  %71 = getelementptr i8, i8 addrspace(1)* %65, i64 1297036692682702848
  store i8 addrspace(1)* %71, i8 addrspace(1)** %7
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %73 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %74 = bitcast i8 addrspace(1)* %73 to [3 x i8 addrspace(1)*] addrspace(1)*
  %75 = zext i1 0 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  %78 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %74, i64 0, i64 0
  store i8 addrspace(1)* %77, i8 addrspace(1)* addrspace(1)* %78
  %79 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %74, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %79
  %80 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 43)
  %81 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %74, i64 0, i64 2
  store i8 addrspace(1)* %80, i8 addrspace(1)* addrspace(1)* %81
  %82 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %74 to [0 x i8 addrspace(1)*] addrspace(1)*
  %83 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %84 = bitcast i8 addrspace(1)* %83 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %85 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %85
  %86 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %86
  %87 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %87
  %88 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %82, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %88
  %89 = getelementptr i8, i8 addrspace(1)* %83, i64 1297036692682702848
  store i8 addrspace(1)* %89, i8 addrspace(1)** %9
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %91 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %92 = bitcast i8 addrspace(1)* %91 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %93 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %93
  %94 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %94
  %95 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %95
  %96 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %92, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %96
  %97 = getelementptr i8, i8 addrspace(1)* %91, i64 1297036692682702848
  store i8 addrspace(1)* %97, i8 addrspace(1)** %11
  %98 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %99 = bitcast i8 addrspace(1)* %98 to [1 x i8 addrspace(1)*] addrspace(1)*
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %101 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %99, i64 0, i64 0
  store i8 addrspace(1)* %100, i8 addrspace(1)* addrspace(1)* %101
  %102 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %99 to [0 x i8 addrspace(1)*] addrspace(1)*
  %103 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %104 = bitcast i8 addrspace(1)* %103 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %105 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %105
  %106 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %106
  %107 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %107
  %108 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %102, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %108
  %109 = getelementptr i8, i8 addrspace(1)* %103, i64 1297036692682702848
  store i8 addrspace(1)* %109, i8 addrspace(1)** %12
  %110 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %111 = bitcast i8 addrspace(1)* %110 to [1 x i8 addrspace(1)*] addrspace(1)*
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %113 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %111, i64 0, i64 0
  store i8 addrspace(1)* %112, i8 addrspace(1)* addrspace(1)* %113
  %114 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %111 to [0 x i8 addrspace(1)*] addrspace(1)*
  %115 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %116 = bitcast i8 addrspace(1)* %115 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %117 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %116, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %117
  %118 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %116, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %118
  %119 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %116, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %119
  %120 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %116, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %114, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %120
  %121 = getelementptr i8, i8 addrspace(1)* %115, i64 1297036692682702848
  store i8 addrspace(1)* %121, i8 addrspace(1)** %13
  %122 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %123 = bitcast i8 addrspace(1)* %122 to [1 x i8 addrspace(1)*] addrspace(1)*
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %125 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %123, i64 0, i64 0
  store i8 addrspace(1)* %124, i8 addrspace(1)* addrspace(1)* %125
  %126 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %123 to [0 x i8 addrspace(1)*] addrspace(1)*
  %127 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %128 = bitcast i8 addrspace(1)* %127 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %129 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %128, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %129
  %130 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %128, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %130
  %131 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %128, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %131
  %132 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %128, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %126, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %132
  %133 = getelementptr i8, i8 addrspace(1)* %127, i64 1297036692682702848
  store i8 addrspace(1)* %133, i8 addrspace(1)** %14
  %134 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %135 = bitcast i8 addrspace(1)* %134 to [1 x i8 addrspace(1)*] addrspace(1)*
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %137 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %135, i64 0, i64 0
  store i8 addrspace(1)* %136, i8 addrspace(1)* addrspace(1)* %137
  %138 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %135 to [0 x i8 addrspace(1)*] addrspace(1)*
  %139 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %140 = bitcast i8 addrspace(1)* %139 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %141 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %141
  %142 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %142
  %143 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %143
  %144 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %138, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %144
  %145 = getelementptr i8, i8 addrspace(1)* %139, i64 1297036692682702848
  store i8 addrspace(1)* %145, i8 addrspace(1)** %15
  %146 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %147 = bitcast i8 addrspace(1)* %146 to [1 x i8 addrspace(1)*] addrspace(1)*
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %149 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 0
  store i8 addrspace(1)* %148, i8 addrspace(1)* addrspace(1)* %149
  %150 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %147 to [0 x i8 addrspace(1)*] addrspace(1)*
  %151 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %152 = bitcast i8 addrspace(1)* %151 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %153 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %153
  %154 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %154
  %155 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %155
  %156 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %150, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %156
  %157 = getelementptr i8, i8 addrspace(1)* %151, i64 1297036692682702848
  store i8 addrspace(1)* %157, i8 addrspace(1)** %16
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  call void @_Bio__println(i8 addrspace(1)* %158)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %159 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %160 = bitcast i8 addrspace(1)* %159 to [3 x i8 addrspace(1)*] addrspace(1)*
  %161 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %162 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %160, i64 0, i64 0
  store i8 addrspace(1)* %161, i8 addrspace(1)* addrspace(1)* %162
  %163 = zext i1 1 to i64
  %164 = or i64 %163, 72057594037927936
  %165 = getelementptr i8, i8 addrspace(1)* null, i64 %164
  %166 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %160, i64 0, i64 1
  store i8 addrspace(1)* %165, i8 addrspace(1)* addrspace(1)* %166
  %167 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  %168 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %160, i64 0, i64 2
  store i8 addrspace(1)* %167, i8 addrspace(1)* addrspace(1)* %168
  %169 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %160 to [0 x i8 addrspace(1)*] addrspace(1)*
  %170 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %171 = bitcast i8 addrspace(1)* %170 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %172 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %171, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %172
  %173 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %171, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %173
  %174 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %171, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %174
  %175 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %171, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %169, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %175
  %176 = getelementptr i8, i8 addrspace(1)* %170, i64 1297036692682702848
  store i8 addrspace(1)* %176, i8 addrspace(1)** %18
  %177 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %178 = bitcast i8 addrspace(1)* %177 to [3 x i8 addrspace(1)*] addrspace(1)*
  %179 = zext i1 0 to i64
  %180 = or i64 %179, 72057594037927936
  %181 = getelementptr i8, i8 addrspace(1)* null, i64 %180
  %182 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %178, i64 0, i64 0
  store i8 addrspace(1)* %181, i8 addrspace(1)* addrspace(1)* %182
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %184 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %178, i64 0, i64 1
  store i8 addrspace(1)* %183, i8 addrspace(1)* addrspace(1)* %184
  %185 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %186 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %178, i64 0, i64 2
  store i8 addrspace(1)* %185, i8 addrspace(1)* addrspace(1)* %186
  %187 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %178 to [0 x i8 addrspace(1)*] addrspace(1)*
  %188 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %189 = bitcast i8 addrspace(1)* %188 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %190 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %190
  %191 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %191
  %192 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %192
  %193 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %187, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %193
  %194 = getelementptr i8, i8 addrspace(1)* %188, i64 1297036692682702848
  store i8 addrspace(1)* %194, i8 addrspace(1)** %19
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %195)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  ret void
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %197)
  unreachable
}
