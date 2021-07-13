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
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %15, label %10
10:
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 11)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %37, label %16
13:
  %14 = load i64, i64* %6
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 516)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %1
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %19 = bitcast i8 addrspace(1)* %18 to [3 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %21 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %20, i8 addrspace(1)* addrspace(1)* %21
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %23 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 1
  store i8 addrspace(1)* %22, i8 addrspace(1)* addrspace(1)* %23
  %24 = load i64, i64* %1
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24)
  %26 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 2
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %19 to [0 x i8 addrspace(1)*] addrspace(1)*
  %28 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %29 = bitcast i8 addrspace(1)* %28 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %27, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702848
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %34, i8 addrspace(1)** %v
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %48, label %38
37:
  store i64 769, i64* %6
  br label %13
38:
  %39 = extractvalue {i64, i1} %35, 0
  store i64 %39, i64* %3
  %40 = load i64, i64* %3
  store i64 %40, i64* %i
  %41 = load i64, i64* %i
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 72057594037927935)
  %44 = bitcast i8 addrspace(1)* %43 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 0
  %46 = load i64, i64 addrspace(1)* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %49, label %55
48:
  store i64 1025, i64* %6
  br label %13
49:
  %50 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 2
  %51 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50, align 8
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 %41
  %53 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %52, align 8
  store i8 addrspace(1)* %53, i8 addrspace(1)** %4
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
55:
  store i64 1285, i64* %6
  br label %13
}
