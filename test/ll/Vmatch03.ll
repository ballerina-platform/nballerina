@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %n = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 1, i64* %n
  %8 = load i64, i64* %n
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %14
11:
  %12 = load i64, i64* %3
  call void @_bal_panic(i64 %12)
  unreachable
13:
  call void @_bal_panic(i64 772)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_B_foo(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
18:
  store i64 1281, i64* %3
  br label %11
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %v.1 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %v.2 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %25, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  br i1 %14, label %26, label %29
clause.0:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %v.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541272877421))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %24
clause.1:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %v.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621753192))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %24
pattern.0:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = addrspacecast i8 addrspace(1)* %19 to i8*
  %21 = ptrtoint i8* %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = icmp eq i64 %22, 504403158265495552
  br i1 %23, label %32, label %35
pattern.1:
  br label %24
24:
  ret void
25:
  call void @_bal_panic(i64 2052)
  unreachable
26:
  %27 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %10)
  %28 = icmp eq i64 %27, 1
  store i1 %28, i1* %2
  br label %30
29:
  store i1 0, i1* %2
  br label %30
30:
  %31 = load i1, i1* %2
  br i1 %31, label %clause.0, label %pattern.0
32:
  %33 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  %34 = icmp eq i64 %33, -1
  store i1 %34, i1* %3
  br label %36
35:
  store i1 0, i1* %3
  br label %36
36:
  %37 = load i1, i1* %3
  br i1 %37, label %clause.1, label %pattern.1
}
