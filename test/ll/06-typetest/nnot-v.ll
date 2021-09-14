@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %z = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %40, label %11
11:
  %12 = call i8 addrspace(1)* @_B_foo()
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x
  store i64 4, i64* %z
  %14 = zext i1 0 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %17 = zext i1 1 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 504403158265495552
  %25 = xor i1 1, %24
  store i1 %25, i1* %4
  %26 = load i1, i1* %4
  %27 = zext i1 %26 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %31 = addrspacecast i8 addrspace(1)* %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 720575940379279360
  %35 = xor i1 1, %34
  store i1 %35, i1* %6
  %36 = load i1, i1* %6
  %37 = zext i1 %36 to i64
  %38 = or i64 %37, 72057594037927936
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
}
define i8 addrspace(1)* @_B_foo() {
  %a = alloca i64
  %b = alloca i64
  %1 = alloca i64
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  store i64 1, i64* %a
  store i64 2, i64* %b
  %7 = load i64, i64* %a
  %8 = load i64, i64* %b
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %7, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %20, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %1
  %17 = load i64, i64* %1
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %y
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  ret i8 addrspace(1)* %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %2
  br label %11
}
