@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %27, label %15
15:
  store i64 7, i64* %i
  store i64 1, i64* %j
  %16 = load i64, i64* %i
  %17 = load i64, i64* %j
  %18 = and i64 63, %17
  %19 = ashr i64 %16, %18
  store i64 %19, i64* %1
  %20 = load i64, i64* %1
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %22 = load i64, i64* %j
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %22, i64 1)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %44, label %28
25:
  %26 = load i64, i64* %11
  call void @_bal_panic(i64 %26)
  unreachable
27:
  call void @_bal_panic(i64 516)
  unreachable
28:
  %29 = extractvalue {i64, i1} %23, 0
  store i64 %29, i64* %3
  %30 = load i64, i64* %i
  %31 = load i64, i64* %3
  %32 = and i64 63, %31
  %33 = ashr i64 %30, %32
  store i64 %33, i64* %4
  %34 = load i64, i64* %4
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  store i64 65, i64* %j
  %36 = load i64, i64* %i
  %37 = load i64, i64* %j
  %38 = and i64 63, %37
  %39 = ashr i64 %36, %38
  store i64 %39, i64* %6
  %40 = load i64, i64* %6
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40)
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %42 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %52, label %45
44:
  store i64 1537, i64* %11
  br label %25
45:
  %46 = extractvalue {i64, i1} %42, 0
  store i64 %46, i64* %8
  %47 = load i64, i64* %8
  %48 = and i64 63, 1
  %49 = ashr i64 %47, %48
  store i64 %49, i64* %9
  %50 = load i64, i64* %9
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50)
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  ret void
52:
  store i64 3585, i64* %11
  br label %25
}
