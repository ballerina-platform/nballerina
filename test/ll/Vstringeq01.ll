@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"x\00\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"y\00\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i8, [7 x i8]} {i8 2, [7 x i8] c"xy\00\00\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i8, [7 x i8]} {i8 7, [7 x i8] c"1234567"}, align 8
@.str4 = internal unnamed_addr constant {i8, [15 x i8]} {i8 8, [15 x i8] c"1234567\00\00\00\00\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i8, [7 x i8]} {i8 6, [7 x i8] c"123456\00"}, align 8
@.str6 = internal unnamed_addr constant {i8, [7 x i8]} {i8 7, [7 x i8] c"123456\00"}, align 8
@.str7 = internal unnamed_addr constant {i8, [7 x i8]} {i8 0, [7 x i8] c"\00\00\00\00\00\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"\00\00\00\00\00\00\00"}, align 8
@.str9 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"\00\00\00\00\00\00\00"}, align 8
@.str10 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"\7F\00\00\00\00\00\00"}, align 8
@.str11 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 2, i16 1, [4 x i8] c"\C2\80\00\00"}, align 8
@.str12 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 2, i16 1, [4 x i8] c"\C2\81\00\00"}, align 8
@.str13 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 6, i16 5, [12 x i8] c"1234\C2\80\00\00\00\00\00\00"}, align 8
@.str14 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 6, i16 5, [12 x i8] c"1234\C2\81\00\00\00\00\00\00"}, align 8
@.str15 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 4, i16 1, [4 x i8] c"\F0\9F\98\80"}, align 8
@.str16 = internal unnamed_addr constant {i8, [7 x i8]} {i8 2, [7 x i8] c"lt\00\00\00\00\00"}, align 8
@.str17 = internal unnamed_addr constant {i8, [7 x i8]} {i8 2, [7 x i8] c"gt\00\00\00\00\00"}, align 8
@.str18 = internal unnamed_addr constant {i8, [7 x i8]} {i8 2, [7 x i8] c"eq\00\00\00\00\00"}, align 8
@.str19 = internal unnamed_addr constant {i8, [7 x i8]} {i8 4, [7 x i8] c"fail\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_string_cmp(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
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
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %18, label %17
17:
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [15 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str6 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str7 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str9 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str10 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str11 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str11 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str12 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str13 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str14 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str15 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  ret void
18:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_cmp(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i1
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i1
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8
  %43 = load i8*, i8** @_bal_stack_guard
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %142, label %45
45:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %s2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %48 = call i64 @_bal_string_cmp(i8 addrspace(1)* %46, i8 addrspace(1)* %47)
  %49 = icmp slt i64 %48, 0
  store i1 %49, i1* %3
  %50 = load i1, i1* %3
  br i1 %50, label %51, label %54
51:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str16 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  call void @_B_checkLessThan(i8 addrspace(1)* %52, i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %141
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %57 = call i64 @_bal_string_cmp(i8 addrspace(1)* %55, i8 addrspace(1)* %56)
  %58 = icmp sgt i64 %57, 0
  store i1 %58, i1* %6
  %59 = load i1, i1* %6
  br i1 %59, label %60, label %63
60:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str17 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  call void @_B_checkLessThan(i8 addrspace(1)* %61, i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %140
63:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str18 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %66 = call i1 @_bal_eq(i8 addrspace(1)* %64, i8 addrspace(1)* %65)
  store i1 %66, i1* %10
  %67 = load i1, i1* %10
  call void @_B_assert(i1 %67, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %70 = call i1 @_bal_eq(i8 addrspace(1)* %68, i8 addrspace(1)* %69)
  %71 = xor i1 %70, 1
  store i1 %71, i1* %12
  %72 = load i1, i1* %12
  call void @_B_assert(i1 %72, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %75 = call i1 @_bal_eq(i8 addrspace(1)* %73, i8 addrspace(1)* %74)
  store i1 %75, i1* %14
  %76 = load i1, i1* %14
  call void @_B_assert(i1 %76, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %79 = call i1 @_bal_eq(i8 addrspace(1)* %77, i8 addrspace(1)* %78)
  %80 = xor i1 %79, 1
  store i1 %80, i1* %16
  %81 = load i1, i1* %16
  call void @_B_assert(i1 %81, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %84 = call i1 @_bal_eq(i8 addrspace(1)* %82, i8 addrspace(1)* %83)
  store i1 %84, i1* %18
  %85 = load i1, i1* %18
  call void @_B_assert(i1 %85, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %88 = call i1 @_bal_eq(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  %89 = xor i1 %88, 1
  store i1 %89, i1* %20
  %90 = load i1, i1* %20
  call void @_B_assert(i1 %90, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %93 = call i1 @_bal_eq(i8 addrspace(1)* %91, i8 addrspace(1)* %92)
  store i1 %93, i1* %22
  %94 = load i1, i1* %22
  call void @_B_assert(i1 %94, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %97 = call i1 @_bal_eq(i8 addrspace(1)* %95, i8 addrspace(1)* %96)
  %98 = xor i1 %97, 1
  store i1 %98, i1* %24
  %99 = load i1, i1* %24
  call void @_B_assert(i1 %99, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %102 = call i64 @_bal_string_cmp(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  %103 = icmp slt i64 %102, 0
  store i1 %103, i1* %26
  %104 = load i1, i1* %26
  call void @_B_assert(i1 %104, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %107 = call i64 @_bal_string_cmp(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp slt i64 %107, 0
  store i1 %108, i1* %28
  %109 = load i1, i1* %28
  call void @_B_assert(i1 %109, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %112 = call i64 @_bal_string_cmp(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = icmp sgt i64 %112, 0
  store i1 %113, i1* %30
  %114 = load i1, i1* %30
  call void @_B_assert(i1 %114, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %117 = call i64 @_bal_string_cmp(i8 addrspace(1)* %115, i8 addrspace(1)* %116)
  %118 = icmp sgt i64 %117, 0
  store i1 %118, i1* %32
  %119 = load i1, i1* %32
  call void @_B_assert(i1 %119, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %122 = call i64 @_bal_string_cmp(i8 addrspace(1)* %120, i8 addrspace(1)* %121)
  %123 = icmp sle i64 %122, 0
  store i1 %123, i1* %34
  %124 = load i1, i1* %34
  call void @_B_assert(i1 %124, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %127 = call i64 @_bal_string_cmp(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  %128 = icmp sle i64 %127, 0
  store i1 %128, i1* %36
  %129 = load i1, i1* %36
  call void @_B_assert(i1 %129, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %132 = call i64 @_bal_string_cmp(i8 addrspace(1)* %130, i8 addrspace(1)* %131)
  %133 = icmp sge i64 %132, 0
  store i1 %133, i1* %38
  %134 = load i1, i1* %38
  call void @_B_assert(i1 %134, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %137 = call i64 @_bal_string_cmp(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  %138 = icmp sge i64 %137, 0
  store i1 %138, i1* %40
  %139 = load i1, i1* %40
  call void @_B_assert(i1 %139, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  br label %140
140:
  br label %141
141:
  ret void
142:
  call void @_bal_panic(i64 4868)
  unreachable
}
define internal void @_B_checkLessThan(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8
  %36 = load i8*, i8** @_bal_stack_guard
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %115, label %38
38:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %s2
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %41 = call i1 @_bal_eq(i8 addrspace(1)* %39, i8 addrspace(1)* %40)
  store i1 %41, i1* %3
  %42 = load i1, i1* %3
  call void @_B_assert(i1 %42, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %45 = call i1 @_bal_eq(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
  store i1 %45, i1* %5
  %46 = load i1, i1* %5
  call void @_B_assert(i1 %46, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %49 = call i1 @_bal_eq(i8 addrspace(1)* %47, i8 addrspace(1)* %48)
  %50 = xor i1 %49, 1
  store i1 %50, i1* %7
  %51 = load i1, i1* %7
  call void @_B_assert(i1 %51, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %54 = call i1 @_bal_eq(i8 addrspace(1)* %52, i8 addrspace(1)* %53)
  %55 = xor i1 %54, 1
  store i1 %55, i1* %9
  %56 = load i1, i1* %9
  call void @_B_assert(i1 %56, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %59 = call i1 @_bal_eq(i8 addrspace(1)* %57, i8 addrspace(1)* %58)
  store i1 %59, i1* %11
  %60 = load i1, i1* %11
  call void @_B_assert(i1 %60, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %63 = call i1 @_bal_eq(i8 addrspace(1)* %61, i8 addrspace(1)* %62)
  store i1 %63, i1* %13
  %64 = load i1, i1* %13
  call void @_B_assert(i1 %64, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %67 = call i1 @_bal_eq(i8 addrspace(1)* %65, i8 addrspace(1)* %66)
  %68 = xor i1 %67, 1
  store i1 %68, i1* %15
  %69 = load i1, i1* %15
  call void @_B_assert(i1 %69, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %72 = call i1 @_bal_eq(i8 addrspace(1)* %70, i8 addrspace(1)* %71)
  %73 = xor i1 %72, 1
  store i1 %73, i1* %17
  %74 = load i1, i1* %17
  call void @_B_assert(i1 %74, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %77 = call i64 @_bal_string_cmp(i8 addrspace(1)* %75, i8 addrspace(1)* %76)
  %78 = icmp sle i64 %77, 0
  store i1 %78, i1* %19
  %79 = load i1, i1* %19
  call void @_B_assert(i1 %79, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %82 = call i64 @_bal_string_cmp(i8 addrspace(1)* %80, i8 addrspace(1)* %81)
  %83 = icmp sge i64 %82, 0
  store i1 %83, i1* %21
  %84 = load i1, i1* %21
  call void @_B_assert(i1 %84, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %87 = call i64 @_bal_string_cmp(i8 addrspace(1)* %85, i8 addrspace(1)* %86)
  %88 = icmp sgt i64 %87, 0
  store i1 %88, i1* %23
  %89 = load i1, i1* %23
  call void @_B_assert(i1 %89, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %92 = call i64 @_bal_string_cmp(i8 addrspace(1)* %90, i8 addrspace(1)* %91)
  %93 = icmp sgt i64 %92, 0
  store i1 %93, i1* %25
  %94 = load i1, i1* %25
  call void @_B_assert(i1 %94, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %97 = call i64 @_bal_string_cmp(i8 addrspace(1)* %95, i8 addrspace(1)* %96)
  %98 = icmp sge i64 %97, 0
  store i1 %98, i1* %27
  %99 = load i1, i1* %27
  call void @_B_assert(i1 %99, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %102 = call i64 @_bal_string_cmp(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  %103 = icmp sle i64 %102, 0
  store i1 %103, i1* %29
  %104 = load i1, i1* %29
  call void @_B_assert(i1 %104, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %107 = call i64 @_bal_string_cmp(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp slt i64 %107, 0
  store i1 %108, i1* %31
  %109 = load i1, i1* %31
  call void @_B_assert(i1 %109, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %112 = call i64 @_bal_string_cmp(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = icmp sgt i64 %112, 0
  store i1 %113, i1* %33
  %114 = load i1, i1* %33
  call void @_B_assert(i1 %114, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  ret void
115:
  call void @_bal_panic(i64 12548)
  unreachable
}
define internal void @_B_assert(i1 %0, i1 %1) {
  %expect = alloca i1
  %actual = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i1 %0, i1* %expect
  store i1 %1, i1* %actual
  %9 = load i1, i1* %expect
  %10 = load i1, i1* %actual
  %11 = icmp ne i1 %9, %10
  store i1 %11, i1* %3
  %12 = load i1, i1* %3
  br i1 %12, label %13, label %14
13:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str19 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %14
14:
  ret void
15:
  call void @_bal_panic(i64 17412)
  unreachable
}
