@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [28 x i8]} {i16 21, i16 21, [28 x i8] c"this is a long string\00\00\00\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %list = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %mapping = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %39, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_p(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %16 = zext i1 0 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17
  call void @_B_p(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [28 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_B_p(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775807)
  call void @_B_p(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %21 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %22 = bitcast i8 addrspace(1)* %21 to [2 x i8 addrspace(1)*] addrspace(1)*
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %24 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 0
  store i8 addrspace(1)* %23, i8 addrspace(1)* addrspace(1)* %24
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %26 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 1
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %22 to [0 x i8 addrspace(1)*] addrspace(1)*
  %28 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %29 = bitcast i8 addrspace(1)* %28 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %27, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702848
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %34, i8 addrspace(1)** %list
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %list
  call void @_B_p(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %36 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %9
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  store i8 addrspace(1)* %37, i8 addrspace(1)** %mapping
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %mapping
  call void @_B_p(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  ret void
39:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_p(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %v.2 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %v.3 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %v.4 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %v.5 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %65, label %15
15:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 72057594037927936
  store i1 %20, i1* %2
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %27
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i1
  store i1 %26, i1* %v.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %27
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = addrspacecast i8 addrspace(1)* %28 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = icmp eq i64 %31, 504403158265495552
  store i1 %32, i1* %4
  %33 = load i1, i1* %4
  br i1 %33, label %34, label %37
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  store i64 %36, i64* %v.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %37
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %39 = addrspacecast i8 addrspace(1)* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = and i64 %40, 2233785415175766016
  %42 = icmp eq i64 %41, 720575940379279360
  store i1 %42, i1* %6
  %43 = load i1, i1* %6
  br i1 %43, label %44, label %46
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %45, i8 addrspace(1)** %v.3
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  br label %46
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %48 = addrspacecast i8 addrspace(1)* %47 to i8*
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 1080863910568919040
  %51 = icmp eq i64 %50, 144115188075855872
  store i1 %51, i1* %8
  %52 = load i1, i1* %8
  br i1 %52, label %53, label %55
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %54, i8 addrspace(1)** %v.4
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475965445206625))
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %55
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %57 = addrspacecast i8 addrspace(1)* %56 to i8*
  %58 = ptrtoint i8* %57 to i64
  %59 = and i64 %58, 1080863910568919040
  %60 = icmp eq i64 %59, 216172782113783808
  store i1 %60, i1* %10
  %61 = load i1, i1* %10
  br i1 %61, label %62, label %64
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %63, i8 addrspace(1)** %v.5
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621489005))
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %64
64:
  ret void
65:
  call void @_bal_panic(i64 4100)
  unreachable
}
