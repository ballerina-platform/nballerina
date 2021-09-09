@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %93, label %22
22:
  %23 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 3)
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %24)
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %25)
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %26)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %27, i8 addrspace(1)** %v1
  %28 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 3)
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %29)
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %30)
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %31)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %32, i8 addrspace(1)** %v2
  %33 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 3)
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %34)
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %35)
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %36)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %37, i8 addrspace(1)** %v3
  %38 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 4)
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %39)
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %40)
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %41)
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901111), i8 addrspace(1)* %42)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %4
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %43, i8 addrspace(1)** %v4
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %46 = call i1 @_bal_eq(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  store i1 %46, i1* %5
  %47 = load i1, i1* %5
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %53 = call i1 @_bal_eq(i8 addrspace(1)* %51, i8 addrspace(1)* %52)
  store i1 %53, i1* %7
  %54 = load i1, i1* %7
  %55 = zext i1 %54 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %60 = call i1 @_bal_eq(i8 addrspace(1)* %58, i8 addrspace(1)* %59)
  store i1 %60, i1* %9
  %61 = load i1, i1* %9
  %62 = zext i1 %61 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %67 = call i1 @_bal_eq(i8 addrspace(1)* %65, i8 addrspace(1)* %66)
  store i1 %67, i1* %11
  %68 = load i1, i1* %11
  %69 = zext i1 %68 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %74 = call i1 @_bal_eq(i8 addrspace(1)* %72, i8 addrspace(1)* %73)
  store i1 %74, i1* %13
  %75 = load i1, i1* %13
  %76 = zext i1 %75 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %81 = icmp eq i8 addrspace(1)* %79, %80
  store i1 %81, i1* %15
  %82 = load i1, i1* %15
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %88 = icmp eq i8 addrspace(1)* %86, %87
  store i1 %88, i1* %17
  %89 = load i1, i1* %17
  %90 = zext i1 %89 to i64
  %91 = or i64 %90, 72057594037927936
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91
  call void @_Bio__println(i8 addrspace(1)* %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %94)
  unreachable
}
