@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"string[]\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %iv = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %iv.1 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %25, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %12 = bitcast i8 addrspace(1)* %11 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16
  %17 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702848
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %iv
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475845085916769))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %iv
  %20 = call i1 @_bal_list_has_type(i8 addrspace(1)* %19, i64 1024)
  store i1 %20, i1* %3
  %21 = load i1, i1* %3
  br i1 %21, label %22, label %24
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %iv
  store i8 addrspace(1)* %23, i8 addrspace(1)** %iv.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %24
24:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098297715142192745))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543618405193))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
