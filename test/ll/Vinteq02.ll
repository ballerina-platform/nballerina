@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %x = alloca i64
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %49, label %16
16:
  %17 = icmp eq i64 17, 17
  store i1 %17, i1* %1
  %18 = load i1, i1* %1
  store i1 %18, i1* %b
  %19 = load i1, i1* %b
  br i1 %19, label %20, label %22
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %24
24:
  %25 = icmp ne i64 21, 21
  store i1 %25, i1* %4
  %26 = load i1, i1* %4
  store i1 %26, i1* %b
  %27 = load i1, i1* %b
  br i1 %27, label %28, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %32
30:
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %32
32:
  store i64 42, i64* %x
  %33 = load i64, i64* %x
  %34 = icmp eq i64 %33, 42
  store i1 %34, i1* %7
  %35 = load i1, i1* %7
  br i1 %35, label %36, label %38
36:
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %40
38:
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %40
40:
  %41 = load i64, i64* %x
  %42 = icmp ne i64 42, %41
  store i1 %42, i1* %10
  %43 = load i1, i1* %10
  br i1 %43, label %44, label %46
44:
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %48
46:
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  br label %48
48:
  ret void
49:
  call void @_bal_panic(i64 772)
  unreachable
}
