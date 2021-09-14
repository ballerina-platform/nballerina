@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %24, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702848
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %20 = call i64 @_bal_list_set(i8 addrspace(1)* %18, i64 0, i8 addrspace(1)* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %38
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702848
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %36 = call i64 @_bal_list_set(i8 addrspace(1)* %34, i64 1, i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %47
38:
  %39 = or i64 %20, 2048
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %5
  br label %22
41:
  %42 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098321995397294199), i64 10)
  store i8 addrspace(1)* %42, i8 addrspace(1)** %3
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %45 = call i64 @_bal_list_set(i8 addrspace(1)* %43, i64 2, i8 addrspace(1)* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %50, label %52
47:
  %48 = or i64 %36, 2304
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 %48)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %5
  br label %22
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
52:
  %53 = or i64 %45, 2560
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 %53)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %5
  br label %22
}
