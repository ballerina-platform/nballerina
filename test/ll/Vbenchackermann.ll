@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  call void @_bal_panic(i64 516)
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
  %12 = alloca i64
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
  br i1 %24, label %46, label %43
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
  br i1 %34, label %52, label %47
35:
  %36 = load i64, i64* %n
  store i64 %36, i64* %n.2
  %37 = load i64, i64* %m.2
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %37, i64 1)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %58, label %53
40:
  %41 = load i64, i64* %12
  call void @_bal_panic(i64 %41)
  unreachable
42:
  call void @_bal_panic(i64 1284)
  unreachable
43:
  %44 = extractvalue {i64, i1} %23, 0
  store i64 %44, i64* %4
  %45 = load i64, i64* %4
  ret i64 %45
46:
  store i64 1793, i64* %12
  br label %40
47:
  %48 = extractvalue {i64, i1} %33, 0
  store i64 %48, i64* %6
  %49 = load i64, i64* %6
  %50 = call i64 @_B_a(i64 %49, i64 1)
  store i64 %50, i64* %7
  %51 = load i64, i64* %7
  ret i64 %51
52:
  store i64 2561, i64* %12
  br label %40
53:
  %54 = extractvalue {i64, i1} %38, 0
  store i64 %54, i64* %8
  %55 = load i64, i64* %n.2
  %56 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %55, i64 1)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %68, label %59
58:
  store i64 3329, i64* %12
  br label %40
59:
  %60 = extractvalue {i64, i1} %56, 0
  store i64 %60, i64* %9
  %61 = load i64, i64* %m.2
  %62 = load i64, i64* %9
  %63 = call i64 @_B_a(i64 %61, i64 %62)
  store i64 %63, i64* %10
  %64 = load i64, i64* %8
  %65 = load i64, i64* %10
  %66 = call i64 @_B_a(i64 %64, i64 %65)
  store i64 %66, i64* %11
  %67 = load i64, i64* %11
  ret i64 %67
68:
  store i64 3329, i64* %12
  br label %40
}
