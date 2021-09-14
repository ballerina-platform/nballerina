@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %b = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %48, label %18
18:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %20 = icmp eq i8 addrspace(1)* %19, null
  store i1 %20, i1* %1
  %21 = load i1, i1* %1
  br i1 %21, label %22, label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %24
24:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %26 = icmp eq i8 addrspace(1)* null, %25
  store i1 %26, i1* %4
  %27 = load i1, i1* %4
  br i1 %27, label %28, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %30
30:
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %33 = icmp ne i8 addrspace(1)* %32, null
  store i1 %33, i1* %8
  %34 = load i1, i1* %8
  br i1 %34, label %35, label %37
35:
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  br label %37
37:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %39 = icmp ne i8 addrspace(1)* null, %38
  store i1 %39, i1* %11
  %40 = load i1, i1* %11
  br i1 %40, label %41, label %43
41:
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %43
43:
  store i1 0, i1* %b
  %44 = load i1, i1* %b
  br i1 %44, label %45, label %47
45:
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  br label %47
47:
  ret void
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %49)
  unreachable
}
define internal void @_B_makeNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660)
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
