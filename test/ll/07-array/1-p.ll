@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_alloc(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %15, label %6
6:
  %7 = call i8 addrspace(1)* @_B_foo()
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %8, i8 addrspace(1)** %v
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %11 = call i64 @_bal_list_set(i8 addrspace(1)* %9, i64 1, i8 addrspace(1)* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %18
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  ret void
18:
  %19 = or i64 %11, 1024
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 %19)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %2
  br label %13
}
define internal i8 addrspace(1)* @_B_foo() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %14, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %7 = bitcast i8 addrspace(1)* %6 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %8 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 0
  store i64 1152, i64 addrspace(1)* %8
  %9 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %9
  %10 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %10
  %11 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %11
  %12 = getelementptr i8, i8 addrspace(1)* %6, i64 1297036692682702848
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  ret i8 addrspace(1)* %13
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
