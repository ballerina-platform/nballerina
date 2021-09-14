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
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %b.1 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %b.2 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %b.3 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %b.4 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %55, label %16
16:
  store i1 1, i1* %b
  %17 = load i1, i1* %b
  br i1 %17, label %18, label %20
18:
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  br label %22
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %22
22:
  store i1 1, i1* %b
  %23 = load i1, i1* %b
  br i1 %23, label %24, label %26
24:
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %28
26:
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7)
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %28
28:
  store i1 0, i1* %b
  %29 = load i1, i1* %b
  br i1 %29, label %30, label %32
30:
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %34
32:
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9)
  call void @_Bio__println(i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %34
34:
  store i1 1, i1* %b
  %35 = load i1, i1* %b
  %36 = icmp eq i1 %35, 1
  store i1 %36, i1* %7
  %37 = load i1, i1* %7
  br i1 %37, label %38, label %41
38:
  %39 = load i1, i1* %b
  store i1 %39, i1* %b.1
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %44
41:
  %42 = load i1, i1* %b
  store i1 %42, i1* %b.2
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 11)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %44
44:
  store i1 0, i1* %b
  %45 = load i1, i1* %b
  %46 = icmp eq i1 1, %45
  store i1 %46, i1* %10
  %47 = load i1, i1* %10
  br i1 %47, label %48, label %51
48:
  %49 = load i1, i1* %b
  store i1 %49, i1* %b.3
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 12)
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %54
51:
  %52 = load i1, i1* %b
  store i1 %52, i1* %b.4
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 13)
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  br label %54
54:
  ret void
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %56)
  unreachable
}
