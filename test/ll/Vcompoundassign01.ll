@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %29, label %13
13:
  store i64 100, i64* %x
  %14 = load i64, i64* %x
  %15 = and i64 63, 4
  %16 = ashr i64 %14, %15
  store i64 %16, i64* %1
  %17 = load i64, i64* %x
  %18 = load i64, i64* %1
  %19 = and i64 63, %18
  %20 = ashr i64 %17, %19
  store i64 %20, i64* %2
  %21 = load i64, i64* %2
  store i64 %21, i64* %x
  %22 = load i64, i64* %x
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %24 = load i64, i64* %x
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %24, i64 99)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %39, label %30
27:
  %28 = load i64, i64* %9
  call void @_bal_panic(i64 %28)
  unreachable
29:
  call void @_bal_panic(i64 772)
  unreachable
30:
  %31 = extractvalue {i64, i1} %25, 0
  store i64 %31, i64* %4
  %32 = load i64, i64* %4
  store i64 %32, i64* %x
  %33 = load i64, i64* %x
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %35 = load i64, i64* %x
  %36 = load i64, i64* %x
  %37 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %35, i64 %36)
  %38 = extractvalue {i64, i1} %37, 1
  br i1 %38, label %46, label %40
39:
  store i64 1793, i64* %9
  br label %27
40:
  %41 = extractvalue {i64, i1} %37, 0
  store i64 %41, i64* %6
  %42 = load i64, i64* %x
  %43 = load i64, i64* %6
  %44 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %42, i64 %43)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %52, label %47
46:
  store i64 2305, i64* %9
  br label %27
47:
  %48 = extractvalue {i64, i1} %44, 0
  store i64 %48, i64* %7
  %49 = load i64, i64* %7
  store i64 %49, i64* %x
  %50 = load i64, i64* %x
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50)
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
52:
  store i64 2305, i64* %9
  br label %27
}
