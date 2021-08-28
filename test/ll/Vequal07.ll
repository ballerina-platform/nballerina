@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %39, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %21 = bitcast i8 addrspace(1)* %20 to [1 x i8 addrspace(1)*] addrspace(1)*
  %22 = zext i1 1 to i64
  %23 = or i64 %22, 72057594037927936
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23
  %25 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %21, i64 0, i64 0
  store i8 addrspace(1)* %24, i8 addrspace(1)* addrspace(1)* %25
  %26 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %21 to [0 x i8 addrspace(1)*] addrspace(1)*
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %26, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %31
  %32 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702848
  store i8 addrspace(1)* %32, i8 addrspace(1)** %1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %33, i8 addrspace(1)** %x
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %35 = addrspacecast i8 addrspace(1)* %34 to i8*
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = icmp eq i64 %37, 504403158265495552
  br i1 %38, label %41, label %44
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
41:
  %42 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %43 = icmp eq i64 %42, 1
  store i1 %43, i1* %2
  br label %45
44:
  store i1 0, i1* %2
  br label %45
45:
  %46 = load i1, i1* %2
  %47 = zext i1 %46 to i64
  %48 = or i64 %47, 72057594037927936
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %51 = zext i1 1 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  %54 = icmp eq i8 addrspace(1)* %50, %53
  store i1 %54, i1* %4
  %55 = load i1, i1* %4
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %60 = icmp eq i8 addrspace(1)* %59, null
  store i1 %60, i1* %6
  %61 = load i1, i1* %6
  %62 = zext i1 %61 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %65 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %66 = bitcast i8 addrspace(1)* %65 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %67 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %67
  %68 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %68
  %69 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %69
  %70 = getelementptr i8, i8 addrspace(1)* %65, i64 1297036692682702848
  store i8 addrspace(1)* %70, i8 addrspace(1)** %8
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %71, i8 addrspace(1)** %x
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %73 = addrspacecast i8 addrspace(1)* %72 to i8*
  %74 = ptrtoint i8* %73 to i64
  %75 = and i64 %74, 2233785415175766016
  %76 = icmp eq i64 %75, 504403158265495552
  br i1 %76, label %77, label %80
77:
  %78 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %72)
  %79 = icmp ne i64 %78, 1
  store i1 %79, i1* %9
  br label %81
80:
  store i1 1, i1* %9
  br label %81
81:
  %82 = load i1, i1* %9
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %86 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %87 = bitcast i8 addrspace(1)* %86 to [3 x i8 addrspace(1)*] addrspace(1)*
  %88 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %89 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %87, i64 0, i64 0
  store i8 addrspace(1)* %88, i8 addrspace(1)* addrspace(1)* %89
  %90 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %91 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %87, i64 0, i64 1
  store i8 addrspace(1)* %90, i8 addrspace(1)* addrspace(1)* %91
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %93 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %87, i64 0, i64 2
  store i8 addrspace(1)* %92, i8 addrspace(1)* addrspace(1)* %93
  %94 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %87 to [0 x i8 addrspace(1)*] addrspace(1)*
  %95 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %96 = bitcast i8 addrspace(1)* %95 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %97 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %97
  %98 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %98
  %99 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %94, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %99
  %100 = getelementptr i8, i8 addrspace(1)* %95, i64 1297036692682702848
  store i8 addrspace(1)* %100, i8 addrspace(1)** %11
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %101, i8 addrspace(1)** %x
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %103 = zext i1 1 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  %106 = icmp ne i8 addrspace(1)* %102, %105
  store i1 %106, i1* %12
  %107 = load i1, i1* %12
  %108 = zext i1 %107 to i64
  %109 = or i64 %108, 72057594037927936
  %110 = getelementptr i8, i8 addrspace(1)* null, i64 %109
  call void @_Bio__println(i8 addrspace(1)* %110)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %112 = icmp ne i8 addrspace(1)* %111, null
  store i1 %112, i1* %14
  %113 = load i1, i1* %14
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  ret void
}
