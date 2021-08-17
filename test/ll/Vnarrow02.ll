@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %40, label %11
11:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %12, i8 addrspace(1)** %n
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 504403158265495552
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %19, label %37
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %21 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %20)
  store i64 %21, i64* %n.1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 504403158265495552
  store i1 %26, i1* %4
  %27 = load i1, i1* %4
  br i1 %27, label %28, label %35
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %30 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %29)
  store i64 %30, i64* %y.1
  %31 = load i64, i64* %n.1
  %32 = load i64, i64* %y.1
  %33 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %31, i64 %32)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %50, label %41
35:
  %36 = load i64, i64* %n.1
  ret i64 %36
37:
  ret i64 -1
38:
  %39 = load i64, i64* %7
  call void @_bal_panic(i64 %39)
  unreachable
40:
  call void @_bal_panic(i64 2308)
  unreachable
41:
  %42 = extractvalue {i64, i1} %33, 0
  store i64 %42, i64* %5
  %43 = load i64, i64* %5
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %n
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %46 = addrspacecast i8 addrspace(1)* %45 to i8*
  %47 = ptrtoint i8* %46 to i64
  %48 = and i64 %47, 2233785415175766016
  %49 = icmp eq i64 %48, 504403158265495552
  br i1 %49, label %51, label %54
50:
  store i64 3329, i64* %7
  br label %38
51:
  %52 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %45)
  store i64 %52, i64* %6
  %53 = load i64, i64* %6
  ret i64 %53
54:
  store i64 3587, i64* %7
  br label %38
}
