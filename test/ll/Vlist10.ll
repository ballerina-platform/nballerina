@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %22, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %10 = bitcast i8 addrspace(1)* %9 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %11 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %11
  %12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %13
  %14 = getelementptr i8, i8 addrspace(1)* %9, i64 1297036692682702848
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %v
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %18 = call i64 @_bal_list_set(i8 addrspace(1)* %16, i64 0, i8 addrspace(1)* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %30
20:
  %21 = load i64, i64* %4
  call void @_bal_panic(i64 %21)
  unreachable
22:
  call void @_bal_panic(i64 772)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 72057594037927935)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  %28 = load i64, i64 addrspace(1)* %27, align 8
  %29 = icmp ult i64 0, %28
  br i1 %29, label %32, label %38
30:
  %31 = or i64 %18, 1280
  store i64 %31, i64* %4
  br label %20
32:
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  %34 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33, align 8
  %35 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %34, i64 0, i64 0
  %36 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %35, align 8
  store i8 addrspace(1)* %36, i8 addrspace(1)** %2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
38:
  store i64 1541, i64* %4
  br label %20
}
