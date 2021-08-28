@_bal_stack_guard = external global i8*
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"greeting\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %60)
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
  %v.1 = alloca i64
  %v.2 = alloca i64
  %v.3 = alloca i1
  %v.4 = alloca i8 addrspace(1)*
  %v.5 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %63, label %13
13:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 504403158265495552
  br i1 %18, label %65, label %68
clause.0:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %v.1
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541205702010)
clause.1:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  store i64 %22, i64* %v.2
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703343)
clause.2:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i1
  store i1 %26, i1* %v.3
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978)
clause.3:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %27, i8 addrspace(1)** %v.4
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
clause.4:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v.5
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475935446889583)
pattern.0:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = addrspacecast i8 addrspace(1)* %29 to i8*
  %31 = ptrtoint i8* %30 to i64
  %32 = and i64 %31, 2233785415175766016
  %33 = icmp eq i64 %32, 504403158265495552
  br i1 %33, label %71, label %74
pattern.1:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %35 = addrspacecast i8 addrspace(1)* %34 to i8*
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = icmp eq i64 %37, 504403158265495552
  br i1 %38, label %77, label %80
pattern.2:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 504403158265495552
  br i1 %43, label %83, label %86
pattern.3:
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %45 = addrspacecast i8 addrspace(1)* %44 to i8*
  %46 = ptrtoint i8* %45 to i64
  %47 = and i64 %46, 2233785415175766016
  %48 = icmp eq i64 %47, 504403158265495552
  br i1 %48, label %89, label %92
pattern.4:
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %50 = addrspacecast i8 addrspace(1)* %49 to i8*
  %51 = ptrtoint i8* %50 to i64
  %52 = and i64 %51, 2233785415175766016
  %53 = icmp eq i64 %52, 504403158265495552
  br i1 %53, label %95, label %98
pattern.5:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %55 = zext i1 1 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  %58 = icmp eq i8 addrspace(1)* %54, %57
  store i1 %58, i1* %8
  %59 = load i1, i1* %8
  br i1 %59, label %clause.2, label %pattern.6
pattern.6:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %61 = call i1 @_bal_eq(i8 addrspace(1)* %60, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i1 %61, i1* %9
  %62 = load i1, i1* %9
  br i1 %62, label %clause.3, label %pattern.7
pattern.7:
  br label %clause.4
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %64)
  unreachable
65:
  %66 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %14)
  %67 = icmp eq i64 %66, 0
  store i1 %67, i1* %2
  br label %69
68:
  store i1 0, i1* %2
  br label %69
69:
  %70 = load i1, i1* %2
  br i1 %70, label %clause.0, label %pattern.0
71:
  %72 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %29)
  %73 = icmp eq i64 %72, 1
  store i1 %73, i1* %3
  br label %75
74:
  store i1 0, i1* %3
  br label %75
75:
  %76 = load i1, i1* %3
  br i1 %76, label %clause.1, label %pattern.1
77:
  %78 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %79 = icmp eq i64 %78, 3
  store i1 %79, i1* %4
  br label %81
80:
  store i1 0, i1* %4
  br label %81
81:
  %82 = load i1, i1* %4
  br i1 %82, label %clause.1, label %pattern.2
83:
  %84 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  %85 = icmp eq i64 %84, 5
  store i1 %85, i1* %5
  br label %87
86:
  store i1 0, i1* %5
  br label %87
87:
  %88 = load i1, i1* %5
  br i1 %88, label %clause.1, label %pattern.3
89:
  %90 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %44)
  %91 = icmp eq i64 %90, 7
  store i1 %91, i1* %6
  br label %93
92:
  store i1 0, i1* %6
  br label %93
93:
  %94 = load i1, i1* %6
  br i1 %94, label %clause.1, label %pattern.4
95:
  %96 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %49)
  %97 = icmp eq i64 %96, 9
  store i1 %97, i1* %7
  br label %99
98:
  store i1 0, i1* %7
  br label %99
99:
  %100 = load i1, i1* %7
  br i1 %100, label %clause.1, label %pattern.5
}
