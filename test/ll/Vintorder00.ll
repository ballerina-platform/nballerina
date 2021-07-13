@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i64
  %y = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
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
  br i1 %22, label %36, label %23
23:
  store i64 1, i64* %x
  store i64 2, i64* %y
  %24 = load i64, i64* %x
  %25 = load i64, i64* %y
  %26 = icmp slt i64 %24, %25
  store i1 %26, i1* %1
  %27 = load i1, i1* %1
  call void @_B_printBoolean(i1 %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %28 = call i1 @_B_greaterThan(i64 1, i64 2)
  store i1 %28, i1* %3
  %29 = load i1, i1* %3
  call void @_B_printBoolean(i1 %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %30 = call i1 @_B_greaterThan(i64 2, i64 1)
  store i1 %30, i1* %5
  %31 = load i1, i1* %5
  call void @_B_printBoolean(i1 %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %32 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %50, label %37
34:
  %35 = load i64, i64* %19
  call void @_bal_panic(i64 %35)
  unreachable
36:
  call void @_bal_panic(i64 772)
  unreachable
37:
  %38 = extractvalue {i64, i1} %32, 0
  store i64 %38, i64* %7
  %39 = load i64, i64* %7
  %40 = call i1 @_B_greaterThan(i64 2, i64 %39)
  store i1 %40, i1* %8
  %41 = load i1, i1* %8
  call void @_B_printBoolean(i1 %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %42 = call i1 @_B_lessThan(i64 1, i64 2)
  store i1 %42, i1* %10
  %43 = load i1, i1* %10
  call void @_B_printBoolean(i1 %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %44 = call i1 @_B_lessThan(i64 0, i64 0)
  store i1 %44, i1* %12
  %45 = load i1, i1* %12
  call void @_B_printBoolean(i1 %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %46 = call i1 @_B_lessThan(i64 2, i64 1)
  store i1 %46, i1* %14
  %47 = load i1, i1* %14
  call void @_B_printBoolean(i1 %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %48 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %49 = extractvalue {i64, i1} %48, 1
  br i1 %49, label %56, label %51
50:
  store i64 2305, i64* %19
  br label %34
51:
  %52 = extractvalue {i64, i1} %48, 0
  store i64 %52, i64* %16
  %53 = load i64, i64* %16
  %54 = call i1 @_B_lessThan(i64 %53, i64 17)
  store i1 %54, i1* %17
  %55 = load i1, i1* %17
  call void @_B_printBoolean(i1 %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
56:
  store i64 3329, i64* %19
  br label %34
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
  call void @_bal_panic(i64 4100)
  unreachable
}
define internal i1 @_B_lessThan(i64 %0, i64 %1) {
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
  %10 = icmp slt i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 6404)
  unreachable
}
define internal i1 @_B_greaterThan(i64 %0, i64 %1) {
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
  %10 = icmp sgt i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 7428)
  unreachable
}
