@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
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
  call void @_B_foo(i64 1, i64 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_foo(i64 2, i64 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_foo(i64 5, i64 4)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_foo(i64 12, i64 10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
9:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_foo(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %39, label %14
14:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %15 = load i64, i64* %x
  %16 = load i64, i64* %y
  %17 = icmp sgt i64 %15, %16
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %19, label %23
19:
  %20 = load i64, i64* %x
  %21 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %20, i64 1)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %44, label %40
23:
  %24 = load i64, i64* %x
  %25 = load i64, i64* %y
  %26 = icmp slt i64 %24, %25
  store i1 %26, i1* %6
  %27 = load i1, i1* %6
  br i1 %27, label %28, label %32
28:
  %29 = load i64, i64* %y
  %30 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %49, label %45
32:
  %33 = load i64, i64* %x
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %35
35:
  br label %36
36:
  ret void
37:
  %38 = load i64, i64* %10
  call void @_bal_panic(i64 %38)
  unreachable
39:
  call void @_bal_panic(i64 2564)
  unreachable
40:
  %41 = extractvalue {i64, i1} %21, 0
  store i64 %41, i64* %4
  %42 = load i64, i64* %4
  %43 = load i64, i64* %y
  call void @_B_foo(i64 %42, i64 %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %36
44:
  store i64 3073, i64* %10
  br label %37
45:
  %46 = extractvalue {i64, i1} %30, 0
  store i64 %46, i64* %7
  %47 = load i64, i64* %x
  %48 = load i64, i64* %7
  call void @_B_foo(i64 %47, i64 %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %35
49:
  store i64 3585, i64* %10
  br label %37
}
