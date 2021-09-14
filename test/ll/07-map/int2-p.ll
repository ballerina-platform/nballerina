@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %mi = alloca i8 addrspace(1)*
  %ma = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.1 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %29, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %mi
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %mi
  store i8 addrspace(1)* %13, i8 addrspace(1)** %ma
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %ma
  %15 = zext i1 1 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16
  %18 = call i64 @_bal_mapping_set(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %38
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  store i64 %22, i64* %x.1
  %23 = load i64, i64* %x.1
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %23, i64 1)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %45, label %41
26:
  ret void
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %mi
  %33 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %32, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %34, i8 addrspace(1)** %x
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %36 = icmp ne i8 addrspace(1)* %35, null
  store i1 %36, i1* %3
  %37 = load i1, i1* %3
  br i1 %37, label %20, label %26
38:
  %39 = or i64 %18, 1536
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  br label %27
41:
  %42 = extractvalue {i64, i1} %24, 0
  store i64 %42, i64* %4
  %43 = load i64, i64* %4
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43)
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %26
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %27
}
