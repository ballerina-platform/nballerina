@_bal_stack_guard = external global i8*
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"greeting\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  %18 = alloca i8
  %19 = load i8*, i8** @_bal_stack_guard
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %59, label %21
21:
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %23 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %22)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %26 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %25)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %28 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i8 addrspace(1)* %28, i8 addrspace(1)** %5
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %30 = zext i1 1 to i64
  %31 = or i64 %30, 72057594037927936
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31
  %33 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %32)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9)
  %36 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %9
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %38 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696))
  store i8 addrspace(1)* %38, i8 addrspace(1)** %11
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %40 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %41 = bitcast i8 addrspace(1)* %40 to [1 x i8 addrspace(1)*] addrspace(1)*
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %43 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 0
  store i8 addrspace(1)* %42, i8 addrspace(1)* addrspace(1)* %43
  %44 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %41 to [0 x i8 addrspace(1)*] addrspace(1)*
  %45 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %46 = bitcast i8 addrspace(1)* %45 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %47 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %47
  %48 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %48
  %49 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %44, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49
  %50 = getelementptr i8, i8 addrspace(1)* %45, i64 1297036692682702848
  store i8 addrspace(1)* %50, i8 addrspace(1)** %13
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %52 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %51)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %14
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %54 = zext i1 0 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55
  %57 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %56)
  store i8 addrspace(1)* %57, i8 addrspace(1)** %16
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  ret void
59:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %66, label %13
13:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 504403158265495552
  br i1 %18, label %67, label %70
19:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541205702010)
20:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703343)
21:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978)
22:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
23:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475935446889583)
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 504403158265495552
  br i1 %29, label %73, label %76
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 504403158265495552
  br i1 %35, label %79, label %82
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %38 = addrspacecast i8 addrspace(1)* %37 to i8*
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 %39, 2233785415175766016
  %41 = icmp eq i64 %40, 504403158265495552
  br i1 %41, label %85, label %88
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 504403158265495552
  br i1 %47, label %91, label %94
48:
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %50 = addrspacecast i8 addrspace(1)* %49 to i8*
  %51 = ptrtoint i8* %50 to i64
  %52 = and i64 %51, 2233785415175766016
  %53 = icmp eq i64 %52, 504403158265495552
  br i1 %53, label %97, label %100
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %56 = zext i1 1 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57
  %59 = icmp eq i8 addrspace(1)* %55, %58
  store i1 %59, i1* %8
  %60 = load i1, i1* %8
  br i1 %60, label %21, label %61
61:
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %63 = call i1 @_bal_eq(i8 addrspace(1)* %62, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i1 %63, i1* %9
  %64 = load i1, i1* %9
  br i1 %64, label %22, label %65
65:
  br label %23
66:
  call void @_bal_panic(i64 3844)
  unreachable
67:
  %68 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %14)
  %69 = icmp eq i64 %68, 0
  store i1 %69, i1* %2
  br label %71
70:
  store i1 0, i1* %2
  br label %71
71:
  %72 = load i1, i1* %2
  br i1 %72, label %19, label %24
73:
  %74 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  %75 = icmp eq i64 %74, 1
  store i1 %75, i1* %3
  br label %77
76:
  store i1 0, i1* %3
  br label %77
77:
  %78 = load i1, i1* %3
  br i1 %78, label %20, label %30
79:
  %80 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %31)
  %81 = icmp eq i64 %80, 3
  store i1 %81, i1* %4
  br label %83
82:
  store i1 0, i1* %4
  br label %83
83:
  %84 = load i1, i1* %4
  br i1 %84, label %20, label %36
85:
  %86 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %37)
  %87 = icmp eq i64 %86, 5
  store i1 %87, i1* %5
  br label %89
88:
  store i1 0, i1* %5
  br label %89
89:
  %90 = load i1, i1* %5
  br i1 %90, label %20, label %42
91:
  %92 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
  %93 = icmp eq i64 %92, 7
  store i1 %93, i1* %6
  br label %95
94:
  store i1 0, i1* %6
  br label %95
95:
  %96 = load i1, i1* %6
  br i1 %96, label %20, label %48
97:
  %98 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %49)
  %99 = icmp eq i64 %98, 9
  store i1 %99, i1* %7
  br label %101
100:
  store i1 0, i1* %7
  br label %101
101:
  %102 = load i1, i1* %7
  br i1 %102, label %20, label %54
}
