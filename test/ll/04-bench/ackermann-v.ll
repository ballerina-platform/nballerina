@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_a(i64 3, i64 9)
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal i64 @_B_a(i64 %0, i64 %1) {
  %m = alloca i64
  %n = alloca i64
  %3 = alloca i1
  %m.1 = alloca i64
  %4 = alloca i64
  %m.2 = alloca i64
  %5 = alloca i1
  %n.1 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %n.2 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %42, label %16
16:
  store i64 %0, i64* %m
  store i64 %1, i64* %n
  %17 = load i64, i64* %m
  %18 = icmp eq i64 %17, 0
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %20, label %25
20:
  %21 = load i64, i64* %m
  store i64 %21, i64* %m.1
  %22 = load i64, i64* %n
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %22, i64 1)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %47, label %44
25:
  %26 = load i64, i64* %m
  store i64 %26, i64* %m.2
  %27 = load i64, i64* %n
  %28 = icmp eq i64 %27, 0
  store i1 %28, i1* %5
  %29 = load i1, i1* %5
  br i1 %29, label %30, label %35
30:
  %31 = load i64, i64* %n
  store i64 %31, i64* %n.1
  %32 = load i64, i64* %m.2
  %33 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %32, i64 1)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %54, label %49
35:
  %36 = load i64, i64* %n
  store i64 %36, i64* %n.2
  %37 = load i64, i64* %m.2
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %37, i64 1)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %61, label %56
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284)
  call void @_bal_panic(i8 addrspace(1)* %43)
  unreachable
44:
  %45 = extractvalue {i64, i1} %23, 0
  store i64 %45, i64* %4
  %46 = load i64, i64* %4
  ret i64 %46
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %12
  br label %40
49:
  %50 = extractvalue {i64, i1} %33, 0
  store i64 %50, i64* %6
  %51 = load i64, i64* %6
  %52 = call i64 @_B_a(i64 %51, i64 1)
  store i64 %52, i64* %7
  %53 = load i64, i64* %7
  ret i64 %53
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %12
  br label %40
56:
  %57 = extractvalue {i64, i1} %38, 0
  store i64 %57, i64* %8
  %58 = load i64, i64* %n.2
  %59 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %58, i64 1)
  %60 = extractvalue {i64, i1} %59, 1
  br i1 %60, label %72, label %63
61:
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329)
  store i8 addrspace(1)* %62, i8 addrspace(1)** %12
  br label %40
63:
  %64 = extractvalue {i64, i1} %59, 0
  store i64 %64, i64* %9
  %65 = load i64, i64* %m.2
  %66 = load i64, i64* %9
  %67 = call i64 @_B_a(i64 %65, i64 %66)
  store i64 %67, i64* %10
  %68 = load i64, i64* %8
  %69 = load i64, i64* %10
  %70 = call i64 @_B_a(i64 %68, i64 %69)
  store i64 %70, i64* %11
  %71 = load i64, i64* %11
  ret i64 %71
72:
  %73 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329)
  store i8 addrspace(1)* %73, i8 addrspace(1)** %12
  br label %40
}
