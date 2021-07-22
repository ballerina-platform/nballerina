@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %21, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %9 = bitcast i8 addrspace(1)* %8 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %10 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %10
  %11 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %11
  %12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %12
  %13 = getelementptr i8, i8 addrspace(1)* %8, i64 1297036692682702848
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %v
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %17 = call i64 @_bal_list_set(i8 addrspace(1)* %15, i64 1, i8 addrspace(1)* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %24
19:
  %20 = load i64, i64* %3
  call void @_bal_panic(i64 %20)
  unreachable
21:
  call void @_bal_panic(i64 772)
  unreachable
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
24:
  %25 = or i64 %17, 1280
  store i64 %25, i64* %3
  br label %19
}
