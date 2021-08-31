@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"negative\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i8 addrspace(1)* @_B_positive(i64 -1)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %result
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  call void @_B_display(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %12 = call i8 addrspace(1)* @_B_positive(i64 4)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %13, i8 addrspace(1)** %result
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  call void @_B_display(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal void @_B_display(i8 addrspace(1)* %0) {
  %result = alloca i8 addrspace(1)*
  %2 = alloca i1
  %result.1 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %result.2 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %31, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %result
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %17, label %24
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %19 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  store i64 %19, i64* %result.1
  %20 = load i64, i64* %result.1
  %21 = load i64, i64* %result.1
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %20, i64 %21)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %37, label %33
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  store i8 addrspace(1)* %25, i8 addrspace(1)** %result.2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %result.2
  store i8 addrspace(1)* %26, i8 addrspace(1)** %e
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %28
28:
  ret void
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = extractvalue {i64, i1} %22, 0
  store i64 %34, i64* %3
  %35 = load i64, i64* %3
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %28
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %6
  br label %29
}
define internal i8 addrspace(1)* @_B_positive(i64 %0) {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  store i64 %0, i64* %n
  %8 = load i64, i64* %n
  %9 = icmp sge i64 %8, 0
  store i1 %9, i1* %2
  %10 = load i1, i1* %2
  br i1 %10, label %11, label %14
11:
  %12 = load i64, i64* %n
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12)
  ret i8 addrspace(1)* %13
14:
  %15 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i64 25)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  ret i8 addrspace(1)* %16
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
