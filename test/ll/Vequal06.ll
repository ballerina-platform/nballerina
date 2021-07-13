@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
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
  br i1 %9, label %14, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %13 = icmp eq i8 addrspace(1)* %11, %12
  br i1 %13, label %15, label %16
14:
  call void @_bal_panic(i64 5636)
  unreachable
15:
  store i1 1, i1* %3
  br label %26
16:
  %17 = addrspacecast i8 addrspace(1)* %11 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 504403158265495552
  %21 = addrspacecast i8 addrspace(1)* %12 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 504403158265495552
  %25 = and i1 %20, %24
  br i1 %25, label %34, label %38
26:
  %27 = load i1, i1* %3
  %28 = zext i1 %27 to i64
  %29 = or i64 %28, 72057594037927936
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %33 = icmp eq i8 addrspace(1)* %31, %32
  br i1 %33, label %39, label %40
34:
  %35 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %11)
  %36 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %12)
  %37 = icmp eq i64 %35, %36
  store i1 %37, i1* %3
  br label %26
38:
  store i1 0, i1* %3
  br label %26
39:
  store i1 0, i1* %5
  br label %50
40:
  %41 = addrspacecast i8 addrspace(1)* %31 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = and i64 %42, 2233785415175766016
  %44 = icmp eq i64 %43, 504403158265495552
  %45 = addrspacecast i8 addrspace(1)* %32 to i8*
  %46 = ptrtoint i8* %45 to i64
  %47 = and i64 %46, 2233785415175766016
  %48 = icmp eq i64 %47, 504403158265495552
  %49 = and i1 %44, %48
  br i1 %49, label %55, label %59
50:
  %51 = load i1, i1* %5
  %52 = zext i1 %51 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
55:
  %56 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %31)
  %57 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %32)
  %58 = icmp ne i64 %56, %57
  store i1 %58, i1* %5
  br label %50
59:
  store i1 1, i1* %5
  br label %50
}
