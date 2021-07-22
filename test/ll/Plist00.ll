@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %14, label %9
9:
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 11)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %41, label %15
12:
  %13 = load i64, i64* %5
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 516)
  unreachable
15:
  %16 = extractvalue {i64, i1} %10, 0
  store i64 %16, i64* %1
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %18 = bitcast i8 addrspace(1)* %17 to [3 x i8 addrspace(1)*] addrspace(1)*
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %20 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 0
  store i8 addrspace(1)* %19, i8 addrspace(1)* addrspace(1)* %20
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %22 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 1
  store i8 addrspace(1)* %21, i8 addrspace(1)* addrspace(1)* %22
  %23 = load i64, i64* %1
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23)
  %25 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 2
  store i8 addrspace(1)* %24, i8 addrspace(1)* addrspace(1)* %25
  %26 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %18 to [0 x i8 addrspace(1)*] addrspace(1)*
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %26, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %31
  %32 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702848
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %33, i8 addrspace(1)** %v
  store i64 3, i64* %i
  %34 = load i64, i64* %i
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %35, i64 72057594037927935)
  %37 = bitcast i8 addrspace(1)* %36 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %38 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %37, i64 0, i32 0
  %39 = load i64, i64 addrspace(1)* %38, align 8
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %42, label %48
41:
  store i64 769, i64* %5
  br label %12
42:
  %43 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %37, i64 0, i32 2
  %44 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %43, align 8
  %45 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %44, i64 0, i64 %34
  %46 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %45, align 8
  store i8 addrspace(1)* %46, i8 addrspace(1)** %3
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
48:
  store i64 1285, i64* %5
  br label %12
}
