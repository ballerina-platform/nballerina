@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
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
  br i1 %38, label %40, label %43
39:
  call void @_bal_panic(i64 772)
  unreachable
40:
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %42 = icmp eq i64 %41, 1
  store i1 %42, i1* %2
  br label %44
43:
  store i1 0, i1* %2
  br label %44
44:
  %45 = load i1, i1* %2
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %50 = zext i1 1 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51
  %53 = icmp eq i8 addrspace(1)* %49, %52
  store i1 %53, i1* %4
  %54 = load i1, i1* %4
  %55 = zext i1 %54 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %59 = icmp eq i8 addrspace(1)* %58, null
  store i1 %59, i1* %6
  %60 = load i1, i1* %6
  %61 = zext i1 %60 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %64 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %65 = bitcast i8 addrspace(1)* %64 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %66 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %66
  %67 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %67
  %68 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %68
  %69 = getelementptr i8, i8 addrspace(1)* %64, i64 1297036692682702848
  store i8 addrspace(1)* %69, i8 addrspace(1)** %8
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %70, i8 addrspace(1)** %x
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %72 = addrspacecast i8 addrspace(1)* %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = and i64 %73, 2233785415175766016
  %75 = icmp eq i64 %74, 504403158265495552
  br i1 %75, label %76, label %79
76:
  %77 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %71)
  %78 = icmp ne i64 %77, 1
  store i1 %78, i1* %9
  br label %80
79:
  store i1 1, i1* %9
  br label %80
80:
  %81 = load i1, i1* %9
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %85 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %86 = bitcast i8 addrspace(1)* %85 to [3 x i8 addrspace(1)*] addrspace(1)*
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %88 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %86, i64 0, i64 0
  store i8 addrspace(1)* %87, i8 addrspace(1)* addrspace(1)* %88
  %89 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %90 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %86, i64 0, i64 1
  store i8 addrspace(1)* %89, i8 addrspace(1)* addrspace(1)* %90
  %91 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %92 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %86, i64 0, i64 2
  store i8 addrspace(1)* %91, i8 addrspace(1)* addrspace(1)* %92
  %93 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %86 to [0 x i8 addrspace(1)*] addrspace(1)*
  %94 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %95 = bitcast i8 addrspace(1)* %94 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %96 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %95, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %96
  %97 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %95, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %97
  %98 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %95, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %93, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %98
  %99 = getelementptr i8, i8 addrspace(1)* %94, i64 1297036692682702848
  store i8 addrspace(1)* %99, i8 addrspace(1)** %11
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %100, i8 addrspace(1)** %x
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %102 = zext i1 1 to i64
  %103 = or i64 %102, 72057594037927936
  %104 = getelementptr i8, i8 addrspace(1)* null, i64 %103
  %105 = icmp ne i8 addrspace(1)* %101, %104
  store i1 %105, i1* %12
  %106 = load i1, i1* %12
  %107 = zext i1 %106 to i64
  %108 = or i64 %107, 72057594037927936
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108
  call void @_Bio__println(i8 addrspace(1)* %109)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %111 = icmp ne i8 addrspace(1)* %110, null
  store i1 %111, i1* %14
  %112 = load i1, i1* %14
  %113 = zext i1 %112 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, i8 addrspace(1)* null, i64 %114
  call void @_Bio__println(i8 addrspace(1)* %115)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  ret void
}
