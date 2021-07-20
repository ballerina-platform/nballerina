@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"foo\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"bar\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"baz\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_alloc(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %53, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct(i64 2)
  %14 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %15 = addrspacecast i8* %14 to i8 addrspace(1)*
  %16 = getelementptr i8, i8 addrspace(1)* %15, i64 720575940379279360
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* %16, i8 addrspace(1)* %17)
  %18 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %19 = addrspacecast i8* %18 to i8 addrspace(1)*
  %20 = getelementptr i8, i8 addrspace(1)* %19, i64 720575940379279360
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* %20, i8 addrspace(1)* %21)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %22, i8 addrspace(1)** %m
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %24 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %25 = addrspacecast i8* %24 to i8 addrspace(1)*
  %26 = getelementptr i8, i8 addrspace(1)* %25, i64 720575940379279360
  %27 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %23, i8 addrspace(1)* %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %2
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %31 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %32 = addrspacecast i8* %31 to i8 addrspace(1)*
  %33 = getelementptr i8, i8 addrspace(1)* %32, i64 720575940379279360
  %34 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %30, i8 addrspace(1)* %33)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %4
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %37 = bitcast {i8, [7 x i8]}* @.str2 to i8*
  %38 = addrspacecast i8* %37 to i8 addrspace(1)*
  %39 = getelementptr i8, i8 addrspace(1)* %38, i64 720575940379279360
  %40 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %36, i8 addrspace(1)* %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  %41 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %42 = bitcast i8 addrspace(1)* %41 to [1 x i8 addrspace(1)*] addrspace(1)*
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %44 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 0
  store i8 addrspace(1)* %43, i8 addrspace(1)* addrspace(1)* %44
  %45 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %42 to [0 x i8 addrspace(1)*] addrspace(1)*
  %46 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %47 = bitcast i8 addrspace(1)* %46 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %48
  %49 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %49
  %50 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %45, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50
  %51 = getelementptr i8, i8 addrspace(1)* %46, i64 1297036692682702848
  store i8 addrspace(1)* %51, i8 addrspace(1)** %7
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
53:
  call void @_bal_panic(i64 772)
  unreachable
}
