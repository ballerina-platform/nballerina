@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %30, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_mapping_construct(i64 1)
  %21 = zext i1 1 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  call void @_bal_mapping_init_member(i8 addrspace(1)* %20, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %23)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %x
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 504403158265495552
  br i1 %29, label %31, label %34
30:
  call void @_bal_panic(i64 772)
  unreachable
31:
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  %33 = icmp eq i64 %32, 1
  store i1 %33, i1* %2
  br label %35
34:
  store i1 0, i1* %2
  br label %35
35:
  %36 = load i1, i1* %2
  %37 = zext i1 %36 to i64
  %38 = or i64 %37, 72057594037927936
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %41 = zext i1 1 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  %44 = icmp eq i8 addrspace(1)* %40, %43
  store i1 %44, i1* %4
  %45 = load i1, i1* %4
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %50 = icmp eq i8 addrspace(1)* %49, null
  store i1 %50, i1* %6
  %51 = load i1, i1* %6
  %52 = zext i1 %51 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %55 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %8
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %56, i8 addrspace(1)** %x
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %58 = addrspacecast i8 addrspace(1)* %57 to i8*
  %59 = ptrtoint i8* %58 to i64
  %60 = and i64 %59, 2233785415175766016
  %61 = icmp eq i64 %60, 504403158265495552
  br i1 %61, label %62, label %65
62:
  %63 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %57)
  %64 = icmp ne i64 %63, 1
  store i1 %64, i1* %9
  br label %66
65:
  store i1 1, i1* %9
  br label %66
66:
  %67 = load i1, i1* %9
  %68 = zext i1 %67 to i64
  %69 = or i64 %68, 72057594037927936
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %71 = call i8 addrspace(1)* @_bal_mapping_construct(i64 3)
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %71, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %72)
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %71, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %73)
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %71, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %74)
  store i8 addrspace(1)* %71, i8 addrspace(1)** %11
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %75, i8 addrspace(1)** %x
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %77 = zext i1 1 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78
  %80 = icmp ne i8 addrspace(1)* %76, %79
  store i1 %80, i1* %12
  %81 = load i1, i1* %12
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %86 = icmp ne i8 addrspace(1)* %85, null
  store i1 %86, i1* %14
  %87 = load i1, i1* %14
  %88 = zext i1 %87 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89
  call void @_Bio__println(i8 addrspace(1)* %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  ret void
}
