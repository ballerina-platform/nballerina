@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %b = alloca i1
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %x = alloca i64
  %5 = alloca i1
  %x.1 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %x.3 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %x.4 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %47, label %14
14:
  store i1 1, i1* %b
  %15 = load i1, i1* %b
  br i1 %15, label %16, label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  br label %20
18:
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %20
20:
  store i1 0, i1* %b
  %21 = load i1, i1* %b
  br i1 %21, label %22, label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %26
24:
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %26
26:
  store i64 42, i64* %x
  %27 = load i64, i64* %x
  %28 = icmp eq i64 %27, 42
  store i1 %28, i1* %5
  %29 = load i1, i1* %5
  br i1 %29, label %30, label %33
30:
  %31 = load i64, i64* %x
  store i64 %31, i64* %x.1
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %36
33:
  %34 = load i64, i64* %x
  store i64 %34, i64* %x.2
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  br label %36
36:
  %37 = load i64, i64* %x
  %38 = icmp ne i64 42, %37
  store i1 %38, i1* %8
  %39 = load i1, i1* %8
  br i1 %39, label %40, label %43
40:
  %41 = load i64, i64* %x
  store i64 %41, i64* %x.3
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %46
43:
  %44 = load i64, i64* %x
  store i64 %44, i64* %x.4
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  br label %46
46:
  ret void
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
}
