@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 5, [20 x i8] c"\E0\B9\80\E0\B8\88\E0\B8\A1\E0\B8\AA\E0\B9\8C\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 5, [7 x i8] c"James\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
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
  br i1 %15, label %66, label %16
16:
  %17 = bitcast {i16, i16, [20 x i8]}* @.str0 to i8*
  %18 = addrspacecast i8* %17 to i8 addrspace(1)*
  %19 = getelementptr i8, i8 addrspace(1)* %18, i64 720575940379279361
  store i8 addrspace(1)* %19, i8 addrspace(1)** %name
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %22 = call i64 @_Bstring__length(i8 addrspace(1)* %21)
  store i64 %22, i64* %2
  %23 = load i64, i64* %2
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23)
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %25 = bitcast {i16, i16, [20 x i8]}* @.str0 to i8*
  %26 = addrspacecast i8* %25 to i8 addrspace(1)*
  %27 = getelementptr i8, i8 addrspace(1)* %26, i64 720575940379279361
  store i8 addrspace(1)* %27, i8 addrspace(1)** %name2
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  %31 = call i1 @_bal_eq(i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  store i1 %31, i1* %5
  %32 = load i1, i1* %5
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  %38 = call i1 @_bal_eq(i8 addrspace(1)* %36, i8 addrspace(1)* %37)
  %39 = xor i1 %38, 1
  store i1 %39, i1* %7
  %40 = load i1, i1* %7
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %44 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %45 = addrspacecast i8* %44 to i8 addrspace(1)*
  %46 = getelementptr i8, i8 addrspace(1)* %45, i64 720575940379279360
  store i8 addrspace(1)* %46, i8 addrspace(1)** %name3
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %48 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %49 = addrspacecast i8* %48 to i8 addrspace(1)*
  %50 = getelementptr i8, i8 addrspace(1)* %49, i64 720575940379279360
  %51 = call i1 @_bal_eq(i8 addrspace(1)* %47, i8 addrspace(1)* %50)
  store i1 %51, i1* %9
  %52 = load i1, i1* %9
  %53 = zext i1 %52 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %57 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %58 = addrspacecast i8* %57 to i8 addrspace(1)*
  %59 = getelementptr i8, i8 addrspace(1)* %58, i64 720575940379279360
  %60 = call i1 @_bal_eq(i8 addrspace(1)* %56, i8 addrspace(1)* %59)
  %61 = xor i1 %60, 1
  store i1 %61, i1* %11
  %62 = load i1, i1* %11
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
66:
  call void @_bal_panic(i64 772)
  unreachable
}
