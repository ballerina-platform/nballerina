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
  %14 = alloca i64
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8
  %19 = load i8*, i8** @_bal_stack_guard
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %30, label %21
21:
  %22 = call i1 @_B_eq(i64 1, i64 2)
  store i1 %22, i1* %1
  %23 = load i1, i1* %1
  call void @_B_printBoolean(i1 %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %24 = call i1 @_B_ne(i64 2, i64 1)
  store i1 %24, i1* %3
  %25 = load i1, i1* %3
  call void @_B_printBoolean(i1 %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %44, label %31
28:
  %29 = load i64, i64* %17
  call void @_bal_panic(i64 %29)
  unreachable
30:
  call void @_bal_panic(i64 772)
  unreachable
31:
  %32 = extractvalue {i64, i1} %26, 0
  store i64 %32, i64* %5
  %33 = load i64, i64* %5
  %34 = call i1 @_B_eq(i64 2, i64 %33)
  store i1 %34, i1* %6
  %35 = load i1, i1* %6
  call void @_B_printBoolean(i1 %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %36 = call i1 @_B_ne(i64 1, i64 2)
  store i1 %36, i1* %8
  %37 = load i1, i1* %8
  call void @_B_printBoolean(i1 %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %38 = call i1 @_B_eq(i64 0, i64 0)
  store i1 %38, i1* %10
  %39 = load i1, i1* %10
  call void @_B_printBoolean(i1 %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %40 = call i1 @_B_ne(i64 2, i64 1)
  store i1 %40, i1* %12
  %41 = load i1, i1* %12
  call void @_B_printBoolean(i1 %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %42 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %50, label %45
44:
  store i64 1537, i64* %17
  br label %28
45:
  %46 = extractvalue {i64, i1} %42, 0
  store i64 %46, i64* %14
  %47 = load i64, i64* %14
  %48 = call i1 @_B_eq(i64 %47, i64 17)
  store i1 %48, i1* %15
  %49 = load i1, i1* %15
  call void @_B_printBoolean(i1 %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
50:
  store i64 2561, i64* %17
  br label %28
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
  call void @_bal_panic(i64 3332)
  unreachable
}
define internal i1 @_B_eq(i64 %0, i64 %1) {
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
  %10 = icmp eq i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 5636)
  unreachable
}
define internal i1 @_B_ne(i64 %0, i64 %1) {
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
  %10 = icmp ne i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 6660)
  unreachable
}
