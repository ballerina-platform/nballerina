@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %28, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %10 = bitcast i8 addrspace(1)* %9 to [1 x i8 addrspace(1)*] addrspace(1)*
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %12 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 0
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12
  %13 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %10 to [0 x i8 addrspace(1)*] addrspace(1)*
  %14 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %15 = bitcast i8 addrspace(1)* %14 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %16 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %16
  %17 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %17
  %18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %13, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %18
  %19 = getelementptr i8, i8 addrspace(1)* %14, i64 1297036692682702848
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %v
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %n
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %24 = call i64 @_bal_list_set(i8 addrspace(1)* %22, i64 0, i8 addrspace(1)* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %37
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 72057594037927935)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 0
  %35 = load i64, i64 addrspace(1)* %34, align 8
  %36 = icmp ult i64 0, %35
  br i1 %36, label %40, label %46
37:
  %38 = or i64 %24, 1536
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 %38)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %4
  br label %26
40:
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 2
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 0
  %44 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %43, align 8
  store i8 addrspace(1)* %44, i8 addrspace(1)** %2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %4
  br label %26
}
