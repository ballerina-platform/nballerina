@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %10 = call i8 addrspace(1)* @_B_double(i8 addrspace(1)* %9)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_B_print(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %12 = call i8 addrspace(1)* @_B_double(i8 addrspace(1)* null)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_B_print(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define internal void @_B_print(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %20, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = icmp eq i8 addrspace(1)* %9, null
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %14
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541154981230))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %19
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %x.2
  %17 = load i64, i64* %x.2
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %19
19:
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define internal i8 addrspace(1)* @_B_double(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %23, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = icmp eq i8 addrspace(1)* %9, null
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %14
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x.1
  ret i8 addrspace(1)* null
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %x.2
  %17 = load i64, i64* %x.2
  %18 = load i64, i64* %x.2
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %17, i64 %18)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %29, label %25
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356)
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = extractvalue {i64, i1} %19, 0
  store i64 %26, i64* %3
  %27 = load i64, i64* %3
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  ret i8 addrspace(1)* %28
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633)
  store i8 addrspace(1)* %30, i8 addrspace(1)** %4
  br label %21
}
