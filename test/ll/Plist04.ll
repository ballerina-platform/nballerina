@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_Barray__length(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %14
  %15 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702848
  store i8 addrspace(1)* %15, i8 addrspace(1)** %1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %16, i8 addrspace(1)** %v
  %17 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %18 = extractvalue {i64, i1} %17, 1
  br i1 %18, label %30, label %22
19:
  %20 = load i64, i64* %5
  call void @_bal_panic(i64 %20)
  unreachable
21:
  call void @_bal_panic(i64 516)
  unreachable
22:
  %23 = extractvalue {i64, i1} %17, 0
  store i64 %23, i64* %2
  %24 = load i64, i64* %2
  store i64 %24, i64* %i
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = load i64, i64* %i
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %28 = call i64 @_bal_list_set(i8 addrspace(1)* %25, i64 %26, i8 addrspace(1)* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %36
30:
  store i64 1025, i64* %5
  br label %19
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %33 = call i64 @_Barray__length(i8 addrspace(1)* %32)
  store i64 %33, i64* %3
  %34 = load i64, i64* %3
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
36:
  %37 = or i64 %28, 1280
  store i64 %37, i64* %5
  br label %19
}
