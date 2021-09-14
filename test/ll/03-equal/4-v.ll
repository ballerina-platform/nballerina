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
  br i1 %18, label %40, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %21 = bitcast i8 addrspace(1)* %20 to [1 x i8 addrspace(1)*] addrspace(1)*
  %22 = zext i1 1 to i64
  %23 = or i64 %22, 72057594037927936
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23
  %25 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %21, i64 0, i64 0
  store i8 addrspace(1)* %24, i8 addrspace(1)* addrspace(1)* %25
  %26 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %21 to [0 x i8 addrspace(1)*] addrspace(1)*
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %26, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702848
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %34, i8 addrspace(1)** %x
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %36 = addrspacecast i8 addrspace(1)* %35 to i8*
  %37 = ptrtoint i8* %36 to i64
  %38 = and i64 %37, 2233785415175766016
  %39 = icmp eq i64 %38, 504403158265495552
  br i1 %39, label %42, label %45
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  %44 = icmp eq i64 %43, 1
  store i1 %44, i1* %2
  br label %46
45:
  store i1 0, i1* %2
  br label %46
46:
  %47 = load i1, i1* %2
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %52 = zext i1 1 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53
  %55 = icmp eq i8 addrspace(1)* %51, %54
  store i1 %55, i1* %4
  %56 = load i1, i1* %4
  %57 = zext i1 %56 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %61 = icmp eq i8 addrspace(1)* %60, null
  store i1 %61, i1* %6
  %62 = load i1, i1* %6
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %66 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %67 = bitcast i8 addrspace(1)* %66 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %68 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %68
  %69 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %69
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %70
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %71
  %72 = getelementptr i8, i8 addrspace(1)* %66, i64 1297036692682702848
  store i8 addrspace(1)* %72, i8 addrspace(1)** %8
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %73, i8 addrspace(1)** %x
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %75 = addrspacecast i8 addrspace(1)* %74 to i8*
  %76 = ptrtoint i8* %75 to i64
  %77 = and i64 %76, 2233785415175766016
  %78 = icmp eq i64 %77, 504403158265495552
  br i1 %78, label %79, label %82
79:
  %80 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %74)
  %81 = icmp ne i64 %80, 1
  store i1 %81, i1* %9
  br label %83
82:
  store i1 1, i1* %9
  br label %83
83:
  %84 = load i1, i1* %9
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %88 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %89 = bitcast i8 addrspace(1)* %88 to [3 x i8 addrspace(1)*] addrspace(1)*
  %90 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %91 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %89, i64 0, i64 0
  store i8 addrspace(1)* %90, i8 addrspace(1)* addrspace(1)* %91
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %93 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %89, i64 0, i64 1
  store i8 addrspace(1)* %92, i8 addrspace(1)* addrspace(1)* %93
  %94 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %95 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %89, i64 0, i64 2
  store i8 addrspace(1)* %94, i8 addrspace(1)* addrspace(1)* %95
  %96 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %89 to [0 x i8 addrspace(1)*] addrspace(1)*
  %97 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %98 = bitcast i8 addrspace(1)* %97 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %99 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %99
  %100 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %100
  %101 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %101
  %102 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %96, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %102
  %103 = getelementptr i8, i8 addrspace(1)* %97, i64 1297036692682702848
  store i8 addrspace(1)* %103, i8 addrspace(1)** %11
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %104, i8 addrspace(1)** %x
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %106 = zext i1 1 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107
  %109 = icmp ne i8 addrspace(1)* %105, %108
  store i1 %109, i1* %12
  %110 = load i1, i1* %12
  %111 = zext i1 %110 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  call void @_Bio__println(i8 addrspace(1)* %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %115 = icmp ne i8 addrspace(1)* %114, null
  store i1 %115, i1* %14
  %116 = load i1, i1* %14
  %117 = zext i1 %116 to i64
  %118 = or i64 %117, 72057594037927936
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118
  call void @_Bio__println(i8 addrspace(1)* %119)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  ret void
}
