@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %21, label %12
12:
  %13 = call i8 addrspace(1)* @_B_foo(i64 1)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %15 = call i8 addrspace(1)* @_B_foo(i64 2)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %17 = call i8 addrspace(1)* @_B_foo(i64 3)
  store i8 addrspace(1)* %17, i8 addrspace(1)** %5
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %19 = call i8 addrspace(1)* @_B_foo(i64 4)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %7
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
21:
  call void @_bal_panic(i64 772)
  unreachable
}
define i8 addrspace(1)* @_B_foo(i64 %0) {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %33, label %12
12:
  store i64 %0, i64* %x
  %13 = load i64, i64* %x
  %14 = icmp eq i64 %13, 1
  store i1 %14, i1* %5
  %15 = load i1, i1* %5
  br i1 %15, label %clause.0, label %pattern.0.1
clause.0:
  %16 = load i64, i64* %x
  %17 = load i64, i64* %x
  %18 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %16, i64 %17)
  %19 = extractvalue {i64, i1} %18, 1
  br i1 %19, label %39, label %34
clause.0.1:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475655112368177)
clause.1:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475659407335474)
pattern.0:
  %20 = load i64, i64* %2
  %21 = icmp eq i64 %20, 4
  store i1 %21, i1* %4
  %22 = load i1, i1* %4
  br i1 %22, label %clause.1, label %pattern.1
pattern.1:
  br label %23
23:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901043)
pattern.0.1:
  %24 = load i64, i64* %x
  %25 = icmp eq i64 %24, 2
  store i1 %25, i1* %6
  %26 = load i1, i1* %6
  br i1 %26, label %clause.0, label %pattern.1.1
pattern.1.1:
  %27 = load i64, i64* %x
  %28 = icmp eq i64 %27, 3
  store i1 %28, i1* %7
  %29 = load i1, i1* %7
  br i1 %29, label %clause.0, label %pattern.2
pattern.2:
  br label %30
30:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541272877421)
31:
  %32 = load i64, i64* %8
  call void @_bal_panic(i64 %32)
  unreachable
33:
  call void @_bal_panic(i64 2564)
  unreachable
34:
  %35 = extractvalue {i64, i1} %18, 0
  store i64 %35, i64* %2
  %36 = load i64, i64* %2
  %37 = icmp eq i64 %36, 2
  store i1 %37, i1* %3
  %38 = load i1, i1* %3
  br i1 %38, label %clause.0.1, label %pattern.0
39:
  store i64 3329, i64* %8
  br label %31
}
