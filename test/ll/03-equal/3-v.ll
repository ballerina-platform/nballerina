@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  br i1 %16, label %116, label %17
17:
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %19 = bitcast i8 addrspace(1)* %18 to [1 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %21 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %20, i8 addrspace(1)* addrspace(1)* %21
  %22 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %19 to [0 x i8 addrspace(1)*] addrspace(1)*
  %23 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %24 = bitcast i8 addrspace(1)* %23 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %22, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %28
  %29 = getelementptr i8, i8 addrspace(1)* %23, i64 1297036692682702848
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %x
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %y
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  call void @_B_printEq(i8 addrspace(1)* %32, i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %34 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %35 = bitcast i8 addrspace(1)* %34 to [1 x i8 addrspace(1)*] addrspace(1)*
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %37 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %35, i64 0, i64 0
  store i8 addrspace(1)* %36, i8 addrspace(1)* addrspace(1)* %37
  %38 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %35 to [0 x i8 addrspace(1)*] addrspace(1)*
  %39 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %40 = bitcast i8 addrspace(1)* %39 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %41 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %41
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %42
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %38, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %44
  %45 = getelementptr i8, i8 addrspace(1)* %39, i64 1297036692682702848
  store i8 addrspace(1)* %45, i8 addrspace(1)** %3
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_printEq(i8 addrspace(1)* %46, i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %49 = bitcast i8 addrspace(1)* %48 to [1 x i8 addrspace(1)*] addrspace(1)*
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %51 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %50, i8 addrspace(1)* addrspace(1)* %51
  %52 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %49 to [0 x i8 addrspace(1)*] addrspace(1)*
  %53 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %54 = bitcast i8 addrspace(1)* %53 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %55 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %54, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %55
  %56 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %54, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %56
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %54, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %57
  %58 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %54, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %52, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %58
  %59 = getelementptr i8, i8 addrspace(1)* %53, i64 1297036692682702848
  store i8 addrspace(1)* %59, i8 addrspace(1)** %5
  %60 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %61 = bitcast i8 addrspace(1)* %60 to [1 x i8 addrspace(1)*] addrspace(1)*
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
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
  store i8 addrspace(1)* %71, i8 addrspace(1)** %6
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_B_printEq(i8 addrspace(1)* %72, i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %74 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %75 = bitcast i8 addrspace(1)* %74 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %76 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %76
  %77 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %77
  %78 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %78
  %79 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %75, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %79
  %80 = getelementptr i8, i8 addrspace(1)* %74, i64 1297036692682702848
  store i8 addrspace(1)* %80, i8 addrspace(1)** %8
  %81 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %82 = bitcast i8 addrspace(1)* %81 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %83 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %83
  %84 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %84
  %85 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %85
  %86 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %86
  %87 = getelementptr i8, i8 addrspace(1)* %81, i64 1297036692682702848
  store i8 addrspace(1)* %87, i8 addrspace(1)** %9
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_B_printEq(i8 addrspace(1)* %88, i8 addrspace(1)* %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %90 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %91 = bitcast i8 addrspace(1)* %90 to [1 x i8 addrspace(1)*] addrspace(1)*
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %93 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %91, i64 0, i64 0
  store i8 addrspace(1)* %92, i8 addrspace(1)* addrspace(1)* %93
  %94 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %91 to [0 x i8 addrspace(1)*] addrspace(1)*
  %95 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %96 = bitcast i8 addrspace(1)* %95 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %97 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %97
  %98 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %98
  %99 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %99
  %100 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %94, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %100
  %101 = getelementptr i8, i8 addrspace(1)* %95, i64 1297036692682702848
  store i8 addrspace(1)* %101, i8 addrspace(1)** %11
  %102 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %103 = bitcast i8 addrspace(1)* %102 to [1 x i8 addrspace(1)*] addrspace(1)*
  %104 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %105 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %103, i64 0, i64 0
  store i8 addrspace(1)* %104, i8 addrspace(1)* addrspace(1)* %105
  %106 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %103 to [0 x i8 addrspace(1)*] addrspace(1)*
  %107 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %108 = bitcast i8 addrspace(1)* %107 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %109 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %109
  %110 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %110
  %111 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %111
  %112 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %108, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %106, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %112
  %113 = getelementptr i8, i8 addrspace(1)* %107, i64 1297036692682702848
  store i8 addrspace(1)* %113, i8 addrspace(1)** %12
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_B_printEq(i8 addrspace(1)* %114, i8 addrspace(1)* %115)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  ret void
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %117)
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
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892)
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
