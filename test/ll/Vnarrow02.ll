@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %45, label %14
14:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %15, i8 addrspace(1)** %n
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 504403158265495552
  store i1 %20, i1* %3
  %21 = load i1, i1* %3
  br i1 %21, label %22, label %40
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %24 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %23)
  store i64 %24, i64* %4
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 504403158265495552
  store i1 %29, i1* %5
  %30 = load i1, i1* %5
  br i1 %30, label %31, label %38
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %33 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %32)
  store i64 %33, i64* %6
  %34 = load i64, i64* %4
  %35 = load i64, i64* %6
  %36 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %34, i64 %35)
  %37 = extractvalue {i64, i1} %36, 1
  br i1 %37, label %55, label %46
38:
  %39 = load i64, i64* %4
  ret i64 %39
40:
  %41 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %42 = extractvalue {i64, i1} %41, 1
  br i1 %42, label %63, label %60
43:
  %44 = load i64, i64* %10
  call void @_bal_panic(i64 %44)
  unreachable
45:
  call void @_bal_panic(i64 2308)
  unreachable
46:
  %47 = extractvalue {i64, i1} %36, 0
  store i64 %47, i64* %7
  %48 = load i64, i64* %7
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %n
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %51 = addrspacecast i8 addrspace(1)* %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = icmp eq i64 %53, 504403158265495552
  br i1 %54, label %56, label %59
55:
  store i64 3329, i64* %10
  br label %43
56:
  %57 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %50)
  store i64 %57, i64* %8
  %58 = load i64, i64* %8
  ret i64 %58
59:
  store i64 3587, i64* %10
  br label %43
60:
  %61 = extractvalue {i64, i1} %41, 0
  store i64 %61, i64* %9
  %62 = load i64, i64* %9
  ret i64 %62
63:
  store i64 4609, i64* %10
  br label %43
}
