@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %16, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  call void @_B_put(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038192998), i64 5)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %13 = call i64 @_B_get(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038192998))
  store i64 %13, i64* %3
  %14 = load i64, i64* %3
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
define internal void @_B_put(i8 addrspace(1)* %0, i8 addrspace(1)* %1, i64 %2) {
  %m = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %v = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i8 addrspace(1)* %1, i8 addrspace(1)** %k
  store i64 %2, i64* %v
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %11 = load i64, i64* %v
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11)
  %13 = call i64 @_bal_mapping_set(i8 addrspace(1)* %9, i8 addrspace(1)* %10, i8 addrspace(1)* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %20
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  ret void
20:
  %21 = or i64 %13, 2560
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 %21)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  br label %15
}
define internal i64 @_B_get(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %m = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %21, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i8 addrspace(1)* %1, i8 addrspace(1)** %k
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %13 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 576460752303423488
  br i1 %18, label %29, label %33
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588)
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %39, label %42
29:
  %30 = call double @_bal_tagged_to_float(i8 addrspace(1)* %14)
  %31 = call {i64, i1} @_bal_float_to_int(double %30)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %37, label %34
33:
  store i8 addrspace(1)* %14, i8 addrspace(1)** %4
  br label %23
34:
  %35 = extractvalue {i64, i1} %31, 0
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %4
  br label %23
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %6
  br label %19
39:
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  store i64 %40, i64* %5
  %41 = load i64, i64* %5
  ret i64 %41
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %6
  br label %19
}
