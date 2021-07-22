@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_printClosestSquareNum(i64 %0) {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
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
  br i1 %15, label %17, label %16
16:
  ret void
17:
  %18 = load i64, i64* %i
  %19 = call i1 @_B_isSquareNumber(i64 %18)
  store i1 %19, i1* %3
  %20 = load i1, i1* %3
  br i1 %20, label %21, label %24
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
  br i1 %27, label %34, label %31
28:
  %29 = load i64, i64* %6
  call void @_bal_panic(i64 %29)
  unreachable
30:
  call void @_bal_panic(i64 2564)
  unreachable
31:
  %32 = extractvalue {i64, i1} %26, 0
  store i64 %32, i64* %5
  %33 = load i64, i64* %5
  store i64 %33, i64* %i
  br label %12
34:
  store i64 4353, i64* %6
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
  %8 = alloca i64
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
  br i1 %17, label %19, label %18
18:
  ret i1 0
19:
  %20 = load i64, i64* %i
  %21 = load i64, i64* %i
  %22 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %20, i64 %21)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %45, label %39
24:
  ret i1 1
25:
  %26 = load i64, i64* %i
  %27 = load i64, i64* %i
  %28 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %26, i64 %27)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %52, label %46
30:
  ret i1 0
31:
  br label %32
32:
  %33 = load i64, i64* %i
  %34 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %33, i64 1)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %56, label %53
36:
  %37 = load i64, i64* %8
  call void @_bal_panic(i64 %37)
  unreachable
38:
  call void @_bal_panic(i64 5380)
  unreachable
39:
  %40 = extractvalue {i64, i1} %22, 0
  store i64 %40, i64* %4
  %41 = load i64, i64* %4
  %42 = load i64, i64* %x
  %43 = icmp eq i64 %41, %42
  store i1 %43, i1* %3
  %44 = load i1, i1* %3
  br i1 %44, label %24, label %25
45:
  store i64 6145, i64* %8
  br label %36
46:
  %47 = extractvalue {i64, i1} %28, 0
  store i64 %47, i64* %6
  %48 = load i64, i64* %6
  %49 = load i64, i64* %x
  %50 = icmp sgt i64 %48, %49
  store i1 %50, i1* %5
  %51 = load i1, i1* %5
  br i1 %51, label %30, label %31
52:
  store i64 6657, i64* %8
  br label %36
53:
  %54 = extractvalue {i64, i1} %34, 0
  store i64 %54, i64* %7
  %55 = load i64, i64* %7
  store i64 %55, i64* %i
  br label %13
56:
  store i64 7425, i64* %8
  br label %36
}
