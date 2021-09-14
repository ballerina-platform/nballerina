@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i1
  %x.1 = alloca i64
  %5 = alloca i1
  %y.1 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %43, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 2)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %14)
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %15)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %16, i8 addrspace(1)** %m
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %18 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %21 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %20, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  store i8 addrspace(1)* %21, i8 addrspace(1)** %3
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %22, i8 addrspace(1)** %y
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = icmp ne i8 addrspace(1)* %23, null
  store i1 %24, i1* %4
  %25 = load i1, i1* %4
  br i1 %25, label %26, label %40
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %28 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %27)
  store i64 %28, i64* %x.1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %30 = icmp ne i8 addrspace(1)* %29, null
  store i1 %30, i1* %5
  %31 = load i1, i1* %5
  br i1 %31, label %32, label %39
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %34 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %33)
  store i64 %34, i64* %y.1
  %35 = load i64, i64* %x.1
  %36 = load i64, i64* %y.1
  %37 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %35, i64 %36)
  %38 = extractvalue {i64, i1} %37, 1
  br i1 %38, label %49, label %45
39:
  br label %40
40:
  ret void
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %42)
  unreachable
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
45:
  %46 = extractvalue {i64, i1} %37, 0
  store i64 %46, i64* %6
  %47 = load i64, i64* %6
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %47)
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  br label %39
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561)
  store i8 addrspace(1)* %50, i8 addrspace(1)** %8
  br label %41
}
