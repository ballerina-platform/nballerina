@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
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
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %108, label %17
17:
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %19 = bitcast i8 addrspace(1)* %18 to [1 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %21 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %20, i8 addrspace(1)* addrspace(1)* %21
  %22 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %19 to [0 x i8 addrspace(1)*] addrspace(1)*
  %23 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %24 = bitcast i8 addrspace(1)* %23 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %22, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %27
  %28 = getelementptr i8, i8 addrspace(1)* %23, i64 1297036692682702848
  store i8 addrspace(1)* %28, i8 addrspace(1)** %1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %29, i8 addrspace(1)** %x
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %30, i8 addrspace(1)** %y
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  call void @_B_printEq(i8 addrspace(1)* %31, i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %34 = bitcast i8 addrspace(1)* %33 to [1 x i8 addrspace(1)*] addrspace(1)*
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %36 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %34, i64 0, i64 0
  store i8 addrspace(1)* %35, i8 addrspace(1)* addrspace(1)* %36
  %37 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %34 to [0 x i8 addrspace(1)*] addrspace(1)*
  %38 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %39 = bitcast i8 addrspace(1)* %38 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %40 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %40
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %41
  %42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %37, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42
  %43 = getelementptr i8, i8 addrspace(1)* %38, i64 1297036692682702848
  store i8 addrspace(1)* %43, i8 addrspace(1)** %3
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_printEq(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %46 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %47 = bitcast i8 addrspace(1)* %46 to [1 x i8 addrspace(1)*] addrspace(1)*
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %49 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %47, i64 0, i64 0
  store i8 addrspace(1)* %48, i8 addrspace(1)* addrspace(1)* %49
  %50 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %47 to [0 x i8 addrspace(1)*] addrspace(1)*
  %51 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %52 = bitcast i8 addrspace(1)* %51 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %53 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %53
  %54 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %54
  %55 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %50, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %55
  %56 = getelementptr i8, i8 addrspace(1)* %51, i64 1297036692682702848
  store i8 addrspace(1)* %56, i8 addrspace(1)** %5
  %57 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %58 = bitcast i8 addrspace(1)* %57 to [1 x i8 addrspace(1)*] addrspace(1)*
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
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
  store i8 addrspace(1)* %67, i8 addrspace(1)** %6
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_B_printEq(i8 addrspace(1)* %68, i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %70 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %71 = bitcast i8 addrspace(1)* %70 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %72 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %72
  %73 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %73
  %74 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %74
  %75 = getelementptr i8, i8 addrspace(1)* %70, i64 1297036692682702848
  store i8 addrspace(1)* %75, i8 addrspace(1)** %8
  %76 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %77 = bitcast i8 addrspace(1)* %76 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %78 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %78
  %79 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %79
  %80 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80
  %81 = getelementptr i8, i8 addrspace(1)* %76, i64 1297036692682702848
  store i8 addrspace(1)* %81, i8 addrspace(1)** %9
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_B_printEq(i8 addrspace(1)* %82, i8 addrspace(1)* %83)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %84 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %85 = bitcast i8 addrspace(1)* %84 to [1 x i8 addrspace(1)*] addrspace(1)*
  %86 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %87 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %85, i64 0, i64 0
  store i8 addrspace(1)* %86, i8 addrspace(1)* addrspace(1)* %87
  %88 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %85 to [0 x i8 addrspace(1)*] addrspace(1)*
  %89 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %90 = bitcast i8 addrspace(1)* %89 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %91 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %91
  %92 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %92
  %93 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %88, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %93
  %94 = getelementptr i8, i8 addrspace(1)* %89, i64 1297036692682702848
  store i8 addrspace(1)* %94, i8 addrspace(1)** %11
  %95 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %96 = bitcast i8 addrspace(1)* %95 to [1 x i8 addrspace(1)*] addrspace(1)*
  %97 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %98 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %96, i64 0, i64 0
  store i8 addrspace(1)* %97, i8 addrspace(1)* addrspace(1)* %98
  %99 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %96 to [0 x i8 addrspace(1)*] addrspace(1)*
  %100 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %101 = bitcast i8 addrspace(1)* %100 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %102 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %101, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %102
  %103 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %101, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %103
  %104 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %101, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %99, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %104
  %105 = getelementptr i8, i8 addrspace(1)* %100, i64 1297036692682702848
  store i8 addrspace(1)* %105, i8 addrspace(1)** %12
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_B_printEq(i8 addrspace(1)* %106, i8 addrspace(1)* %107)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  ret void
108:
  call void @_bal_panic(i64 516)
  unreachable
}
define internal void @_B_printEq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %26, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %13 = call i1 @_bal_exact_eq(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i1 %13, i1* %3
  %14 = load i1, i1* %3
  %15 = zext i1 %14 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %20 = call i1 @_bal_exact_eq(i8 addrspace(1)* %18, i8 addrspace(1)* %19)
  %21 = xor i1 %20, 1
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  %23 = zext i1 %22 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
26:
  call void @_bal_panic(i64 5636)
  unreachable
}
