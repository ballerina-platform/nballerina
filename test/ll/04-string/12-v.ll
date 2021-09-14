@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 5, [20 x i8] c"\E0\B9\80\E0\B8\88\E0\B8\A1\E0\B8\AA\E0\B9\8C\00\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B_main() {
  %name = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %name2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %name3 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %51, label %16
16:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %name
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %19 = call i64 @_Bstring__length(i8 addrspace(1)* %18)
  store i64 %19, i64* %2
  %20 = load i64, i64* %2
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %name2
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  %25 = call i1 @_bal_string_eq(i8 addrspace(1)* %23, i8 addrspace(1)* %24)
  store i1 %25, i1* %5
  %26 = load i1, i1* %5
  %27 = zext i1 %26 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  %32 = call i1 @_bal_string_eq(i8 addrspace(1)* %30, i8 addrspace(1)* %31)
  %33 = xor i1 %32, 1
  store i1 %33, i1* %7
  %34 = load i1, i1* %7
  %35 = zext i1 %34 to i64
  %36 = or i64 %35, 72057594037927936
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658), i8 addrspace(1)** %name3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %39 = call i1 @_bal_string_eq(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658))
  store i1 %39, i1* %9
  %40 = load i1, i1* %9
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %45 = call i1 @_bal_string_eq(i8 addrspace(1)* %44, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658))
  %46 = xor i1 %45, 1
  store i1 %46, i1* %11
  %47 = load i1, i1* %11
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %52)
  unreachable
}
