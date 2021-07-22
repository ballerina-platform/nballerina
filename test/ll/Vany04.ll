@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i64
  %1 = alloca i64
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %24, label %18
18:
  store i64 1, i64* %x
  %19 = load i64, i64* %x
  %20 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %19, i64 3)
  %21 = extractvalue {i64, i1} %20, 1
  br i1 %21, label %62, label %25
22:
  %23 = load i64, i64* %14
  call void @_bal_panic(i64 %23)
  unreachable
24:
  call void @_bal_panic(i64 516)
  unreachable
25:
  %26 = extractvalue {i64, i1} %20, 0
  store i64 %26, i64* %1
  %27 = load i64, i64* %1
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %30 = load i64, i64* %x
  %31 = icmp eq i64 %30, 1
  store i1 %31, i1* %3
  %32 = load i1, i1* %3
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  store i8 addrspace(1)* %35, i8 addrspace(1)** %v
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %37 = load i64, i64* %x
  %38 = icmp sgt i64 %37, 2
  store i1 %38, i1* %5
  %39 = load i1, i1* %5
  %40 = zext i1 %39 to i64
  %41 = or i64 %40, 72057594037927936
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41
  store i8 addrspace(1)* %42, i8 addrspace(1)** %v
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %44 = load i64, i64* %x
  %45 = icmp sgt i64 %44, 2
  store i1 %45, i1* %7
  %46 = load i1, i1* %7
  %47 = xor i1 1, %46
  store i1 %47, i1* %8
  %48 = load i1, i1* %8
  %49 = zext i1 %48 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50
  store i8 addrspace(1)* %51, i8 addrspace(1)** %v
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %53 = load i64, i64* %x
  %54 = icmp sge i64 %53, 1
  store i1 %54, i1* %10
  %55 = load i1, i1* %10
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %59 = load i64, i64* %x
  %60 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %59, i64 2)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %67, label %63
62:
  store i64 1025, i64* %14
  br label %22
63:
  %64 = extractvalue {i64, i1} %60, 0
  store i64 %64, i64* %12
  %65 = load i64, i64* %12
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  ret void
67:
  store i64 3329, i64* %14
  br label %22
}
