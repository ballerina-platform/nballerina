@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [28 x i8]} {i16 21, i16 21, [28 x i8] c"this is a long string\00\00\00\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %list = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %mapping = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %26, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_p(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %18 = zext i1 0 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, i8 addrspace(1)* null, i64 %19
  call void @_B_p(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [28 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_B_p(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %22 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775807)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %49, label %27
24:
  %25 = load i64, i64* %12
  call void @_bal_panic(i64 %25)
  unreachable
26:
  call void @_bal_panic(i64 772)
  unreachable
27:
  %28 = extractvalue {i64, i1} %22, 0
  store i64 %28, i64* %6
  %29 = load i64, i64* %6
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %29)
  call void @_B_p(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %31 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %32 = bitcast i8 addrspace(1)* %31 to [2 x i8 addrspace(1)*] addrspace(1)*
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %34 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %32, i64 0, i64 0
  store i8 addrspace(1)* %33, i8 addrspace(1)* addrspace(1)* %34
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %36 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %32, i64 0, i64 1
  store i8 addrspace(1)* %35, i8 addrspace(1)* addrspace(1)* %36
  %37 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %32 to [0 x i8 addrspace(1)*] addrspace(1)*
  %38 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %39 = bitcast i8 addrspace(1)* %38 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %40 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %40
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %41
  %42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %37, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42
  %43 = getelementptr i8, i8 addrspace(1)* %38, i64 1297036692682702848
  store i8 addrspace(1)* %43, i8 addrspace(1)** %8
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %44, i8 addrspace(1)** %list
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %list
  call void @_B_p(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %46 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %10
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %47, i8 addrspace(1)** %mapping
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %mapping
  call void @_B_p(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
49:
  store i64 2305, i64* %12
  br label %24
}
define internal void @_B_p(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %70, label %20
20:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 72057594037927936
  store i1 %25, i1* %2
  %26 = load i1, i1* %2
  br i1 %26, label %27, label %32
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = addrspacecast i8 addrspace(1)* %28 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = trunc i64 %30 to i1
  store i1 %31, i1* %3
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %32
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 504403158265495552
  store i1 %37, i1* %5
  %38 = load i1, i1* %5
  br i1 %38, label %39, label %42
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %41, i64* %6
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  br label %42
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 720575940379279360
  store i1 %47, i1* %8
  %48 = load i1, i1* %8
  br i1 %48, label %49, label %51
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %50, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  br label %51
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %53 = addrspacecast i8 addrspace(1)* %52 to i8*
  %54 = ptrtoint i8* %53 to i64
  %55 = and i64 %54, 1080863910568919040
  %56 = icmp eq i64 %55, 144115188075855872
  store i1 %56, i1* %11
  %57 = load i1, i1* %11
  br i1 %57, label %58, label %60
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %59, i8 addrspace(1)** %12
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475965445206625))
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %60
60:
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %62 = addrspacecast i8 addrspace(1)* %61 to i8*
  %63 = ptrtoint i8* %62 to i64
  %64 = and i64 %63, 1080863910568919040
  %65 = icmp eq i64 %64, 216172782113783808
  store i1 %65, i1* %14
  %66 = load i1, i1* %14
  br i1 %66, label %67, label %69
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %68, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621489005))
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  br label %69
69:
  ret void
70:
  call void @_bal_panic(i64 4100)
  unreachable
}
