@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  call void @_bal_panic(i64 772)
  unreachable
}
define void @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %33, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = call i1 @_bal_eq(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %clause.0, label %pattern.0
clause.0:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %14, i8 addrspace(1)** %x.1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %16 = call i1 @_bal_eq(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  store i1 %16, i1* %5
  %17 = load i1, i1* %5
  br i1 %17, label %29, label %31
pattern.0:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = zext i1 1 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  %22 = icmp eq i8 addrspace(1)* %18, %21
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %clause.0, label %pattern.1
pattern.1:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %34, label %37
pattern.2:
  br label %32
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %x.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476539896885094))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %31
31:
  br label %32
32:
  ret void
33:
  call void @_bal_panic(i64 1796)
  unreachable
34:
  %35 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  %36 = icmp eq i64 %35, 42
  store i1 %36, i1* %4
  br label %38
37:
  store i1 0, i1* %4
  br label %38
38:
  %39 = load i1, i1* %4
  br i1 %39, label %clause.0, label %pattern.2
}
