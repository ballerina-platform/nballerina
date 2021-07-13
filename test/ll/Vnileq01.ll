@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %14 = alloca i1
  %b = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %51, label %19
19:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %21 = icmp eq i8 addrspace(1)* %20, null
  store i1 %21, i1* %1
  %22 = load i1, i1* %1
  br i1 %22, label %23, label %25
23:
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %25
25:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %27 = icmp eq i8 addrspace(1)* null, %26
  store i1 %27, i1* %4
  %28 = load i1, i1* %4
  br i1 %28, label %29, label %31
29:
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %31
31:
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %34 = icmp ne i8 addrspace(1)* %33, null
  store i1 %34, i1* %8
  %35 = load i1, i1* %8
  br i1 %35, label %36, label %38
36:
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  br label %38
38:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %40 = icmp ne i8 addrspace(1)* null, %39
  store i1 %40, i1* %11
  %41 = load i1, i1* %11
  br i1 %41, label %42, label %44
42:
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %44
44:
  %45 = icmp ne i8 addrspace(1)* null, null
  store i1 %45, i1* %14
  %46 = load i1, i1* %14
  store i1 %46, i1* %b
  %47 = load i1, i1* %b
  br i1 %47, label %48, label %50
48:
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  br label %50
50:
  ret void
51:
  call void @_bal_panic(i64 772)
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
  call void @_bal_panic(i64 6404)
  unreachable
}
