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
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  br i1 %14, label %22, label %25
clause.0:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541272877421))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %15
15:
  ret void
clause.1:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621753192))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %15
pattern.0:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 504403158265495552
  br i1 %20, label %28, label %31
pattern.1:
  br label %15
21:
  call void @_bal_panic(i64 2052)
  unreachable
22:
  %23 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %10)
  %24 = icmp eq i64 %23, 1
  store i1 %24, i1* %4
  br label %26
25:
  store i1 0, i1* %4
  br label %26
26:
  %27 = load i1, i1* %4
  br i1 %27, label %clause.0, label %pattern.0
28:
  %29 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %16)
  %30 = icmp eq i64 %29, -1
  store i1 %30, i1* %5
  br label %32
31:
  store i1 0, i1* %5
  br label %32
32:
  %33 = load i1, i1* %5
  br i1 %33, label %clause.1, label %pattern.1
}
