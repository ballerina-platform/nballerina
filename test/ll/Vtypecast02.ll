@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %x = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %b = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8
  %19 = load i8*, i8** @_bal_stack_guard
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %34, label %21
21:
  %22 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 17, i1 0)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %24 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 32, i1 1)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %26 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 32, i1 1)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %5
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %28 = addrspacecast i8 addrspace(1)* %27 to i8*
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 2233785415175766016
  %31 = icmp eq i64 %30, 504403158265495552
  br i1 %31, label %35, label %45
32:
  %33 = load i64, i64* %17
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 772)
  unreachable
35:
  %36 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %27)
  store i64 %36, i64* %6
  %37 = load i64, i64* %6
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37)
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %39 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 42, i1 0)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %8
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %41 = addrspacecast i8 addrspace(1)* %40 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = and i64 %42, 2233785415175766016
  %44 = icmp eq i64 %43, 504403158265495552
  br i1 %44, label %46, label %57
45:
  store i64 1539, i64* %17
  br label %32
46:
  %47 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %47, i64* %9
  %48 = load i64, i64* %9
  store i64 %48, i64* %x
  %49 = load i64, i64* %x
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %49)
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %51 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 1)
  store i8 addrspace(1)* %51, i8 addrspace(1)** %11
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %53 = addrspacecast i8 addrspace(1)* %52 to i8*
  %54 = ptrtoint i8* %53 to i64
  %55 = and i64 %54, 2233785415175766016
  %56 = icmp eq i64 %55, 72057594037927936
  br i1 %56, label %58, label %72
57:
  store i64 1795, i64* %17
  br label %32
58:
  %59 = addrspacecast i8 addrspace(1)* %52 to i8*
  %60 = ptrtoint i8* %59 to i64
  %61 = trunc i64 %60 to i1
  store i1 %61, i1* %12
  %62 = load i1, i1* %12
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %66 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 0)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %14
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 72057594037927936
  br i1 %71, label %73, label %82
72:
  store i64 2307, i64* %17
  br label %32
73:
  %74 = addrspacecast i8 addrspace(1)* %67 to i8*
  %75 = ptrtoint i8* %74 to i64
  %76 = trunc i64 %75 to i1
  store i1 %76, i1* %15
  %77 = load i1, i1* %15
  store i1 %77, i1* %b
  %78 = load i1, i1* %b
  %79 = zext i1 %78 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
82:
  store i64 2563, i64* %17
  br label %32
}
define internal i8 addrspace(1)* @_B_ifElse(i1 %0, i64 %1, i1 %2) {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  store i1 %0, i1* %t
  store i64 %1, i64* %n
  store i1 %2, i1* %b
  %8 = load i1, i1* %t
  br i1 %8, label %9, label %12
9:
  %10 = load i64, i64* %n
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10)
  ret i8 addrspace(1)* %11
12:
  %13 = load i1, i1* %b
  %14 = zext i1 %13 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  ret i8 addrspace(1)* %16
17:
  call void @_bal_panic(i64 3588)
  unreachable
}
