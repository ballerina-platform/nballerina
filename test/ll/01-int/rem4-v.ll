@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i64
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i64
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i64
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i64
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i64
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i64
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i64
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i64
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i64
  %58 = alloca i8 addrspace(1)*
  %59 = alloca i64
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i8
  %62 = load i8*, i8** @_bal_stack_guard
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %155, label %64
64:
  %65 = call i64 @_B_rem(i64 9223372036854775806, i64 9223372036854775806)
  store i64 %65, i64* %1
  %66 = load i64, i64* %1
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %68 = call i64 @_B_rem(i64 1, i64 9223372036854775806)
  store i64 %68, i64* %3
  %69 = load i64, i64* %3
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69)
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %71 = call i64 @_B_rem(i64 0, i64 9223372036854775806)
  store i64 %71, i64* %5
  %72 = load i64, i64* %5
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %72)
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %74 = call i64 @_B_rem(i64 -1, i64 9223372036854775806)
  store i64 %74, i64* %7
  %75 = load i64, i64* %7
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %75)
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %77 = call i64 @_B_rem(i64 -9223372036854775806, i64 9223372036854775806)
  store i64 %77, i64* %9
  %78 = load i64, i64* %9
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78)
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %80 = call i64 @_B_rem(i64 9223372036854775806, i64 10)
  store i64 %80, i64* %11
  %81 = load i64, i64* %11
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81)
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %83 = call i64 @_B_rem(i64 1, i64 10)
  store i64 %83, i64* %13
  %84 = load i64, i64* %13
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %84)
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %86 = call i64 @_B_rem(i64 0, i64 10)
  store i64 %86, i64* %15
  %87 = load i64, i64* %15
  %88 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %87)
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %89 = call i64 @_B_rem(i64 -1, i64 10)
  store i64 %89, i64* %17
  %90 = load i64, i64* %17
  %91 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %90)
  call void @_Bio__println(i8 addrspace(1)* %91)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %92 = call i64 @_B_rem(i64 -9223372036854775806, i64 10)
  store i64 %92, i64* %19
  %93 = load i64, i64* %19
  %94 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %93)
  call void @_Bio__println(i8 addrspace(1)* %94)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %95 = call i64 @_B_rem(i64 9223372036854775806, i64 1)
  store i64 %95, i64* %21
  %96 = load i64, i64* %21
  %97 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %96)
  call void @_Bio__println(i8 addrspace(1)* %97)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %98 = call i64 @_B_rem(i64 1, i64 1)
  store i64 %98, i64* %23
  %99 = load i64, i64* %23
  %100 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %99)
  call void @_Bio__println(i8 addrspace(1)* %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %101 = call i64 @_B_rem(i64 0, i64 1)
  store i64 %101, i64* %25
  %102 = load i64, i64* %25
  %103 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %102)
  call void @_Bio__println(i8 addrspace(1)* %103)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %104 = call i64 @_B_rem(i64 -1, i64 1)
  store i64 %104, i64* %27
  %105 = load i64, i64* %27
  %106 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %105)
  call void @_Bio__println(i8 addrspace(1)* %106)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %107 = call i64 @_B_rem(i64 -9223372036854775806, i64 1)
  store i64 %107, i64* %29
  %108 = load i64, i64* %29
  %109 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %108)
  call void @_Bio__println(i8 addrspace(1)* %109)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %110 = call i64 @_B_rem(i64 9223372036854775806, i64 -1)
  store i64 %110, i64* %31
  %111 = load i64, i64* %31
  %112 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %111)
  call void @_Bio__println(i8 addrspace(1)* %112)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %113 = call i64 @_B_rem(i64 1, i64 -1)
  store i64 %113, i64* %33
  %114 = load i64, i64* %33
  %115 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %114)
  call void @_Bio__println(i8 addrspace(1)* %115)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %116 = call i64 @_B_rem(i64 0, i64 -1)
  store i64 %116, i64* %35
  %117 = load i64, i64* %35
  %118 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %117)
  call void @_Bio__println(i8 addrspace(1)* %118)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %119 = call i64 @_B_rem(i64 -1, i64 -1)
  store i64 %119, i64* %37
  %120 = load i64, i64* %37
  %121 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %120)
  call void @_Bio__println(i8 addrspace(1)* %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %122 = call i64 @_B_rem(i64 -9223372036854775806, i64 -1)
  store i64 %122, i64* %39
  %123 = load i64, i64* %39
  %124 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %123)
  call void @_Bio__println(i8 addrspace(1)* %124)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %125 = call i64 @_B_rem(i64 9223372036854775806, i64 -10)
  store i64 %125, i64* %41
  %126 = load i64, i64* %41
  %127 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %126)
  call void @_Bio__println(i8 addrspace(1)* %127)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %128 = call i64 @_B_rem(i64 1, i64 -10)
  store i64 %128, i64* %43
  %129 = load i64, i64* %43
  %130 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %129)
  call void @_Bio__println(i8 addrspace(1)* %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %131 = call i64 @_B_rem(i64 0, i64 -10)
  store i64 %131, i64* %45
  %132 = load i64, i64* %45
  %133 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %132)
  call void @_Bio__println(i8 addrspace(1)* %133)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %134 = call i64 @_B_rem(i64 -1, i64 -10)
  store i64 %134, i64* %47
  %135 = load i64, i64* %47
  %136 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %135)
  call void @_Bio__println(i8 addrspace(1)* %136)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %137 = call i64 @_B_rem(i64 -9223372036854775806, i64 -10)
  store i64 %137, i64* %49
  %138 = load i64, i64* %49
  %139 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %138)
  call void @_Bio__println(i8 addrspace(1)* %139)
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  %140 = call i64 @_B_rem(i64 9223372036854775806, i64 -9223372036854775806)
  store i64 %140, i64* %51
  %141 = load i64, i64* %51
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141)
  call void @_Bio__println(i8 addrspace(1)* %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %52
  %143 = call i64 @_B_rem(i64 1, i64 -9223372036854775806)
  store i64 %143, i64* %53
  %144 = load i64, i64* %53
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %144)
  call void @_Bio__println(i8 addrspace(1)* %145)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %146 = call i64 @_B_rem(i64 0, i64 -9223372036854775806)
  store i64 %146, i64* %55
  %147 = load i64, i64* %55
  %148 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %147)
  call void @_Bio__println(i8 addrspace(1)* %148)
  store i8 addrspace(1)* null, i8 addrspace(1)** %56
  %149 = call i64 @_B_rem(i64 -1, i64 -9223372036854775806)
  store i64 %149, i64* %57
  %150 = load i64, i64* %57
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150)
  call void @_Bio__println(i8 addrspace(1)* %151)
  store i8 addrspace(1)* null, i8 addrspace(1)** %58
  %152 = call i64 @_B_rem(i64 -9223372036854775806, i64 -9223372036854775806)
  store i64 %152, i64* %59
  %153 = load i64, i64* %59
  %154 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %153)
  call void @_Bio__println(i8 addrspace(1)* %154)
  store i8 addrspace(1)* null, i8 addrspace(1)** %60
  ret void
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %156)
  unreachable
}
define internal i64 @_B_rem(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 10756)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 11010)
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %24, label %22
22:
  %23 = srem i64 %9, %10
  store i64 %23, i64* %3
  br label %25
24:
  store i64 0, i64* %3
  br label %25
25:
  %26 = load i64, i64* %3
  ret i64 %26
}
