@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %34, label %14
14:
  %15 = call i64 @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %19 = call i64 @_B_foo(i8 addrspace(1)* %18)
  store i64 %19, i64* %3
  %20 = load i64, i64* %3
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %23 = call i64 @_B_foo(i8 addrspace(1)* %22)
  store i64 %23, i64* %5
  %24 = load i64, i64* %5
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %27 = call i64 @_B_foo(i8 addrspace(1)* %26)
  store i64 %27, i64* %7
  %28 = load i64, i64* %7
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -4)
  %31 = call i64 @_B_foo(i8 addrspace(1)* %30)
  store i64 %31, i64* %9
  %32 = load i64, i64* %9
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %32)
  call void @_Bio__println(i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  ret void
34:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca i64
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %37, label %11
11:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %18, label %34
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %v.1
  %21 = load i64, i64* %v.1
  %22 = icmp eq i64 %21, 1
  store i1 %22, i1* %4
  %23 = load i1, i1* %4
  br i1 %23, label %clause.0, label %pattern.0
clause.0:
  %24 = load i64, i64* %v.1
  ret i64 %24
clause.1:
  %25 = load i64, i64* %v.1
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %25)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %41, label %38
pattern.0:
  %28 = load i64, i64* %v.1
  %29 = icmp eq i64 %28, 2
  store i1 %29, i1* %5
  %30 = load i1, i1* %5
  br i1 %30, label %clause.0, label %pattern.1
pattern.1:
  %31 = load i64, i64* %v.1
  %32 = icmp eq i64 %31, 3
  store i1 %32, i1* %6
  %33 = load i1, i1* %6
  br i1 %33, label %clause.0, label %pattern.2
pattern.2:
  br label %clause.1
34:
  ret i64 0
35:
  %36 = load i64, i64* %7
  call void @_bal_panic(i64 %36)
  unreachable
37:
  call void @_bal_panic(i64 2820)
  unreachable
38:
  %39 = extractvalue {i64, i1} %26, 0
  store i64 %39, i64* %3
  %40 = load i64, i64* %3
  ret i64 %40
41:
  store i64 4609, i64* %7
  br label %35
}
