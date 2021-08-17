@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %23, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 12)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %16 = call i64 @_B_add(i64 3, i64 5, i64 -5, i64 9)
  store i64 %16, i64* %4
  %17 = load i64, i64* %4
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %20 = call i64 @_B_add(i64 3, i64 -5, i64 9, i64 -4)
  store i64 %20, i64* %7
  %21 = load i64, i64* %7
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
23:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1, i64 %2, i64 %3) {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %d = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %19, label %12
12:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  store i64 %2, i64* %c
  store i64 %3, i64* %d
  %13 = load i64, i64* %a
  %14 = load i64, i64* %b
  %15 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %13, i64 %14)
  %16 = extractvalue {i64, i1} %15, 1
  br i1 %16, label %26, label %20
17:
  %18 = load i64, i64* %8
  call void @_bal_panic(i64 %18)
  unreachable
19:
  call void @_bal_panic(i64 3076)
  unreachable
20:
  %21 = extractvalue {i64, i1} %15, 0
  store i64 %21, i64* %5
  %22 = load i64, i64* %5
  %23 = load i64, i64* %c
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %22, i64 %23)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %33, label %27
26:
  store i64 3329, i64* %8
  br label %17
27:
  %28 = extractvalue {i64, i1} %24, 0
  store i64 %28, i64* %6
  %29 = load i64, i64* %6
  %30 = load i64, i64* %d
  %31 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %29, i64 %30)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %37, label %34
33:
  store i64 3329, i64* %8
  br label %17
34:
  %35 = extractvalue {i64, i1} %31, 0
  store i64 %35, i64* %7
  %36 = load i64, i64* %7
  ret i64 %36
37:
  store i64 3329, i64* %8
  br label %17
}
