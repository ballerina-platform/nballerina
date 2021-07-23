@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 4, [7 x i8] c"five\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  call void @_B_put(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i64 5)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %13 = call i64 @_B_get(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i64 %13, i64* %3
  %14 = load i64, i64* %3
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
16:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_put(i8 addrspace(1)* %0, i8 addrspace(1)* %1, i64 %2) {
  %m = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %v = alloca i64
  %4 = alloca i64
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
  br i1 %14, label %18, label %19
15:
  %16 = load i64, i64* %4
  call void @_bal_panic(i64 %16)
  unreachable
17:
  call void @_bal_panic(i64 2308)
  unreachable
18:
  ret void
19:
  %20 = or i64 %13, 2560
  store i64 %20, i64* %4
  br label %15
}
define internal i64 @_B_get(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %m = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %m
  store i8 addrspace(1)* %1, i8 addrspace(1)** %k
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %12 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %10, i8 addrspace(1)* %11)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 504403158265495552
  br i1 %17, label %21, label %24
18:
  %19 = load i64, i64* %5
  call void @_bal_panic(i64 %19)
  unreachable
20:
  call void @_bal_panic(i64 3588)
  unreachable
21:
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %13)
  store i64 %22, i64* %4
  %23 = load i64, i64* %4
  ret i64 %23
24:
  store i64 3843, i64* %5
  br label %18
}
