@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 0, [7 x i8] c"\00\00\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"a\00\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"b\00\00\00\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i8, [7 x i8]} {i8 2, [7 x i8] c"ab\00\00\00\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i8, [7 x i8]} {i8 5, [7 x i8] c"smile\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 4, i16 1, [4 x i8] c"\F0\9F\99\82"}, align 8
@.str6 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 6, [12 x i8] c"smile\F0\9F\99\82\00\00\00"}, align 8
@.str7 = internal unnamed_addr constant {i8, [7 x i8]} {i8 5, [7 x i8] c"frown\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 6, [12 x i8] c"\F0\9F\99\82frown\00\00\00"}, align 8
@.str9 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 4, i16 1, [4 x i8] c"\F0\9F\99\81"}, align 8
@.str10 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 2, [12 x i8] c"\F0\9F\99\81\F0\9F\99\82\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %10, label %9
9:
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str6 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str7 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str9 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str10 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
10:
  call void @_bal_panic(i64 516)
  unreachable
}
define internal void @_B_concatTest(i8 addrspace(1)* %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
  %expected = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %30, label %13
13:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %s2
  store i8 addrspace(1)* %2, i8 addrspace(1)** %expected
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %16 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %14, i8 addrspace(1)* %15)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %4
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %17, i8 addrspace(1)** %s
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %20 = call i64 @_Bstring__length(i8 addrspace(1)* %19)
  store i64 %20, i64* %6
  %21 = load i64, i64* %6
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %expected
  %25 = call i1 @_bal_eq(i8 addrspace(1)* %23, i8 addrspace(1)* %24)
  store i1 %25, i1* %8
  %26 = load i1, i1* %8
  %27 = zext i1 %26 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
30:
  call void @_bal_panic(i64 6148)
  unreachable
}
