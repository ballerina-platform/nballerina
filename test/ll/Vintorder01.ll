@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8
  %21 = load i8*, i8** @_bal_stack_guard
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %32, label %23
23:
  %24 = call i1 @_B_gte(i64 1, i64 2)
  store i1 %24, i1* %1
  %25 = load i1, i1* %1
  call void @_B_printBoolean(i1 %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %26 = call i1 @_B_gte(i64 2, i64 1)
  store i1 %26, i1* %3
  %27 = load i1, i1* %3
  call void @_B_printBoolean(i1 %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %28 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %48, label %33
30:
  %31 = load i64, i64* %19
  call void @_bal_panic(i64 %31)
  unreachable
32:
  call void @_bal_panic(i64 772)
  unreachable
33:
  %34 = extractvalue {i64, i1} %28, 0
  store i64 %34, i64* %5
  %35 = load i64, i64* %5
  %36 = call i1 @_B_gte(i64 2, i64 %35)
  store i1 %36, i1* %6
  %37 = load i1, i1* %6
  call void @_B_printBoolean(i1 %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %38 = call i1 @_B_gte(i64 42, i64 42)
  store i1 %38, i1* %8
  %39 = load i1, i1* %8
  call void @_B_printBoolean(i1 %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %40 = call i1 @_B_lte(i64 1, i64 2)
  store i1 %40, i1* %10
  %41 = load i1, i1* %10
  call void @_B_printBoolean(i1 %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %42 = call i1 @_B_lte(i64 0, i64 0)
  store i1 %42, i1* %12
  %43 = load i1, i1* %12
  call void @_B_printBoolean(i1 %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %44 = call i1 @_B_lte(i64 2, i64 1)
  store i1 %44, i1* %14
  %45 = load i1, i1* %14
  call void @_B_printBoolean(i1 %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %46 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %54, label %49
48:
  store i64 1537, i64* %19
  br label %30
49:
  %50 = extractvalue {i64, i1} %46, 0
  store i64 %50, i64* %16
  %51 = load i64, i64* %16
  %52 = call i1 @_B_lte(i64 %51, i64 17)
  store i1 %52, i1* %17
  %53 = load i1, i1* %17
  call void @_B_printBoolean(i1 %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
54:
  store i64 2817, i64* %19
  br label %30
}
define internal void @_B_printBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  call void @_bal_panic(i64 3588)
  unreachable
}
define internal i1 @_B_lte(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %8 = load i64, i64* %x
  %9 = load i64, i64* %y
  %10 = icmp sle i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 5892)
  unreachable
}
define internal i1 @_B_gte(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %8 = load i64, i64* %x
  %9 = load i64, i64* %y
  %10 = icmp sge i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 6916)
  unreachable
}
