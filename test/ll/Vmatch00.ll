@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_foo(i64 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_foo(i64 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_foo(i64 2)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_foo(i64 17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
9:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_foo(i64 %0) {
  %v = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %30, label %12
12:
  store i64 %0, i64* %v
  %13 = load i64, i64* %v
  %14 = icmp eq i64 %13, 0
  store i1 %14, i1* %6
  %15 = load i1, i1* %6
  br i1 %15, label %16, label %21
16:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037670254))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %17
17:
  ret void
18:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620771439))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %17
19:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621429108))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %17
20:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541373210989))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %17
21:
  %22 = load i64, i64* %v
  %23 = icmp eq i64 %22, 1
  store i1 %23, i1* %7
  %24 = load i1, i1* %7
  br i1 %24, label %18, label %25
25:
  %26 = load i64, i64* %v
  %27 = icmp eq i64 %26, 2
  store i1 %27, i1* %8
  %28 = load i1, i1* %8
  br i1 %28, label %19, label %29
29:
  br label %20
30:
  call void @_bal_panic(i64 3588)
  unreachable
}
