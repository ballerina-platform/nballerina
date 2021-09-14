@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  call void @_B_printClosestSquareNum(i64 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printClosestSquareNum(i64 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_printClosestSquareNum(i64 5)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_printClosestSquareNum(i64 17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_printClosestSquareNum(i64 %0) {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %30, label %10
10:
  store i64 %0, i64* %x
  %11 = load i64, i64* %x
  store i64 %11, i64* %i
  br label %12
12:
  %13 = load i64, i64* %i
  %14 = icmp sge i64 %13, 0
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %16, label %20
16:
  %17 = load i64, i64* %i
  %18 = call i1 @_B_isSquareNumber(i64 %17)
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %21, label %24
20:
  ret void
21:
  %22 = load i64, i64* %i
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
24:
  %25 = load i64, i64* %i
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %35, label %32
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820)
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = extractvalue {i64, i1} %26, 0
  store i64 %33, i64* %5
  %34 = load i64, i64* %5
  store i64 %34, i64* %i
  br label %12
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %6
  br label %28
}
define internal i1 @_B_isSquareNumber(i64 %0) {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %38, label %12
12:
  store i64 %0, i64* %x
  store i64 0, i64* %i
  br label %13
13:
  %14 = load i64, i64* %i
  %15 = load i64, i64* %x
  %16 = icmp sle i64 %14, %15
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %18, label %23
18:
  %19 = load i64, i64* %i
  %20 = load i64, i64* %i
  %21 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %19, i64 %20)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %46, label %40
23:
  ret i1 0
24:
  ret i1 1
25:
  %26 = load i64, i64* %i
  %27 = load i64, i64* %i
  %28 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %26, i64 %27)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %54, label %48
30:
  ret i1 0
31:
  br label %32
32:
  %33 = load i64, i64* %i
  %34 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %33, i64 1)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %59, label %56
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 5636)
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = extractvalue {i64, i1} %21, 0
  store i64 %41, i64* %4
  %42 = load i64, i64* %4
  %43 = load i64, i64* %x
  %44 = icmp eq i64 %42, %43
  store i1 %44, i1* %3
  %45 = load i1, i1* %3
  br i1 %45, label %24, label %25
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %8
  br label %36
48:
  %49 = extractvalue {i64, i1} %28, 0
  store i64 %49, i64* %6
  %50 = load i64, i64* %6
  %51 = load i64, i64* %x
  %52 = icmp sgt i64 %50, %51
  store i1 %52, i1* %5
  %53 = load i1, i1* %5
  br i1 %53, label %30, label %31
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %8
  br label %36
56:
  %57 = extractvalue {i64, i1} %34, 0
  store i64 %57, i64* %7
  %58 = load i64, i64* %7
  store i64 %58, i64* %i
  br label %13
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 7681)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %8
  br label %36
}
