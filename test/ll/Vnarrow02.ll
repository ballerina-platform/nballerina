@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %29, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %13 = call i64 @_B_add(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i64 %13, i64* %1
  %14 = load i64, i64* %1
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %17 = zext i1 0 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  %20 = call i64 @_B_add(i8 addrspace(1)* %16, i8 addrspace(1)* %19)
  store i64 %20, i64* %3
  %21 = load i64, i64* %3
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %23 = zext i1 0 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  %26 = call i64 @_B_add(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)* %25)
  store i64 %26, i64* %5
  %27 = load i64, i64* %5
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
29:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_add(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %3 = alloca i1
  %n.1 = alloca i64
  %4 = alloca i1
  %y.1 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %41, label %12
12:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %13, i8 addrspace(1)** %n
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 504403158265495552
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %20, label %38
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  store i64 %22, i64* %n.1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 504403158265495552
  store i1 %27, i1* %4
  %28 = load i1, i1* %4
  br i1 %28, label %29, label %36
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %31 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %30)
  store i64 %31, i64* %y.1
  %32 = load i64, i64* %n.1
  %33 = load i64, i64* %y.1
  %34 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %32, i64 %33)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %51, label %42
36:
  %37 = load i64, i64* %n.1
  ret i64 %37
38:
  ret i64 -1
39:
  %40 = load i64, i64* %8
  call void @_bal_panic(i64 %40)
  unreachable
41:
  call void @_bal_panic(i64 2308)
  unreachable
42:
  %43 = extractvalue {i64, i1} %34, 0
  store i64 %43, i64* %5
  %44 = load i64, i64* %5
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %n
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %47 = addrspacecast i8 addrspace(1)* %46 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 576460752303423488
  br i1 %50, label %58, label %62
51:
  store i64 3329, i64* %8
  br label %39
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %54 = addrspacecast i8 addrspace(1)* %53 to i8*
  %55 = ptrtoint i8* %54 to i64
  %56 = and i64 %55, 2233785415175766016
  %57 = icmp eq i64 %56, 504403158265495552
  br i1 %57, label %67, label %70
58:
  %59 = call double @_bal_tagged_to_float(i8 addrspace(1)* %46)
  %60 = call {i64, i1} @_bal_float_to_int(double %59)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %66, label %63
62:
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %52
63:
  %64 = extractvalue {i64, i1} %60, 0
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %64)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %6
  br label %52
66:
  store i64 3587, i64* %8
  br label %39
67:
  %68 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %53)
  store i64 %68, i64* %7
  %69 = load i64, i64* %7
  ret i64 %69
70:
  store i64 3587, i64* %8
  br label %39
}
