@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_foo(i64 %0) {
  %v = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %v.1 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %v.2 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %v.3 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %v.4 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %27, label %12
12:
  store i64 %0, i64* %v
  %13 = load i64, i64* %v
  %14 = icmp eq i64 %13, 0
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %clause.0, label %pattern.0
clause.0:
  %16 = load i64, i64* %v
  store i64 %16, i64* %v.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037670254))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %26
clause.1:
  %17 = load i64, i64* %v
  store i64 %17, i64* %v.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620771439))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %26
clause.2:
  %18 = load i64, i64* %v
  store i64 %18, i64* %v.3
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621429108))
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  br label %26
clause.3:
  %19 = load i64, i64* %v
  store i64 %19, i64* %v.4
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541373210989))
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %26
pattern.0:
  %20 = load i64, i64* %v
  %21 = icmp eq i64 %20, 1
  store i1 %21, i1* %3
  %22 = load i1, i1* %3
  br i1 %22, label %clause.1, label %pattern.1
pattern.1:
  %23 = load i64, i64* %v
  %24 = icmp eq i64 %23, 2
  store i1 %24, i1* %4
  %25 = load i1, i1* %4
  br i1 %25, label %clause.2, label %pattern.2
pattern.2:
  br label %clause.3
26:
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
}
