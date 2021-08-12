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
  br i1 %12, label %53, label %13
13:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 504403158265495552
  br i1 %18, label %54, label %57
clause.0:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541205702010)
clause.1:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703343)
clause.2:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978)
clause.3:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
clause.4:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475935446889583)
pattern.0:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = addrspacecast i8 addrspace(1)* %19 to i8*
  %21 = ptrtoint i8* %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = icmp eq i64 %22, 504403158265495552
  br i1 %23, label %60, label %63
pattern.1:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %66, label %69
pattern.2:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = addrspacecast i8 addrspace(1)* %29 to i8*
  %31 = ptrtoint i8* %30 to i64
  %32 = and i64 %31, 2233785415175766016
  %33 = icmp eq i64 %32, 504403158265495552
  br i1 %33, label %72, label %75
pattern.3:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %35 = addrspacecast i8 addrspace(1)* %34 to i8*
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = icmp eq i64 %37, 504403158265495552
  br i1 %38, label %78, label %81
pattern.4:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 504403158265495552
  br i1 %43, label %84, label %87
pattern.5:
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %45 = zext i1 1 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  %48 = icmp eq i8 addrspace(1)* %44, %47
  store i1 %48, i1* %8
  %49 = load i1, i1* %8
  br i1 %49, label %clause.2, label %pattern.6
pattern.6:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %51 = call i1 @_bal_eq(i8 addrspace(1)* %50, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i1 %51, i1* %9
  %52 = load i1, i1* %9
  br i1 %52, label %clause.3, label %pattern.7
pattern.7:
  br label %clause.4
53:
  call void @_bal_panic(i64 3844)
  unreachable
54:
  %55 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %14)
  %56 = icmp eq i64 %55, 0
  store i1 %56, i1* %2
  br label %58
57:
  store i1 0, i1* %2
  br label %58
58:
  %59 = load i1, i1* %2
  br i1 %59, label %clause.0, label %pattern.0
60:
  %61 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  %62 = icmp eq i64 %61, 1
  store i1 %62, i1* %3
  br label %64
63:
  store i1 0, i1* %3
  br label %64
64:
  %65 = load i1, i1* %3
  br i1 %65, label %clause.1, label %pattern.1
66:
  %67 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  %68 = icmp eq i64 %67, 3
  store i1 %68, i1* %4
  br label %70
69:
  store i1 0, i1* %4
  br label %70
70:
  %71 = load i1, i1* %4
  br i1 %71, label %clause.1, label %pattern.2
72:
  %73 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %29)
  %74 = icmp eq i64 %73, 5
  store i1 %74, i1* %5
  br label %76
75:
  store i1 0, i1* %5
  br label %76
76:
  %77 = load i1, i1* %5
  br i1 %77, label %clause.1, label %pattern.3
78:
  %79 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %80 = icmp eq i64 %79, 7
  store i1 %80, i1* %6
  br label %82
81:
  store i1 0, i1* %6
  br label %82
82:
  %83 = load i1, i1* %6
  br i1 %83, label %clause.1, label %pattern.4
84:
  %85 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  %86 = icmp eq i64 %85, 9
  store i1 %86, i1* %7
  br label %88
87:
  store i1 0, i1* %7
  br label %88
88:
  %89 = load i1, i1* %7
  br i1 %89, label %clause.1, label %pattern.5
}
