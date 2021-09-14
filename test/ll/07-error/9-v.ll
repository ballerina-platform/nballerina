@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %e1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %e2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %a1 = alloca i8 addrspace(1)*
  %a2 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %147, label %36
36:
  %37 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 5)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %38, i8 addrspace(1)** %e1
  %39 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 6)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %2
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %40, i8 addrspace(1)** %e2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %43 = icmp eq i8 addrspace(1)* %41, %42
  store i1 %43, i1* %3
  %44 = load i1, i1* %3
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %50 = icmp ne i8 addrspace(1)* %48, %49
  store i1 %50, i1* %5
  %51 = load i1, i1* %5
  %52 = zext i1 %51 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  %57 = icmp eq i8 addrspace(1)* %55, %56
  store i1 %57, i1* %7
  %58 = load i1, i1* %7
  %59 = zext i1 %58 to i64
  %60 = or i64 %59, 72057594037927936
  %61 = getelementptr i8, i8 addrspace(1)* null, i64 %60
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  %64 = icmp ne i8 addrspace(1)* %62, %63
  store i1 %64, i1* %9
  %65 = load i1, i1* %9
  %66 = zext i1 %65 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67
  call void @_Bio__println(i8 addrspace(1)* %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  store i8 addrspace(1)* %69, i8 addrspace(1)** %a1
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  store i8 addrspace(1)* %70, i8 addrspace(1)** %a2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %73 = call i1 @_bal_exact_eq(i8 addrspace(1)* %71, i8 addrspace(1)* %72)
  store i1 %73, i1* %11
  %74 = load i1, i1* %11
  %75 = zext i1 %74 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %80 = call i1 @_bal_exact_eq(i8 addrspace(1)* %78, i8 addrspace(1)* %79)
  %81 = xor i1 %80, 1
  store i1 %81, i1* %13
  %82 = load i1, i1* %13
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %88 = call i1 @_bal_exact_eq(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  store i1 %88, i1* %15
  %89 = load i1, i1* %15
  %90 = zext i1 %89 to i64
  %91 = or i64 %90, 72057594037927936
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91
  call void @_Bio__println(i8 addrspace(1)* %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %95 = call i1 @_bal_exact_eq(i8 addrspace(1)* %93, i8 addrspace(1)* %94)
  %96 = xor i1 %95, 1
  store i1 %96, i1* %17
  %97 = load i1, i1* %17
  %98 = zext i1 %97 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99
  call void @_Bio__println(i8 addrspace(1)* %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  store i8 addrspace(1)* %101, i8 addrspace(1)** %v1
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  store i8 addrspace(1)* %102, i8 addrspace(1)** %v2
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %105 = icmp eq i8 addrspace(1)* %103, %104
  store i1 %105, i1* %19
  %106 = load i1, i1* %19
  %107 = zext i1 %106 to i64
  %108 = or i64 %107, 72057594037927936
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108
  call void @_Bio__println(i8 addrspace(1)* %109)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %112 = icmp ne i8 addrspace(1)* %110, %111
  store i1 %112, i1* %21
  %113 = load i1, i1* %21
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %119 = icmp eq i8 addrspace(1)* %117, %118
  store i1 %119, i1* %23
  %120 = load i1, i1* %23
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, i8 addrspace(1)* null, i64 %122
  call void @_Bio__println(i8 addrspace(1)* %123)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %126 = icmp ne i8 addrspace(1)* %124, %125
  store i1 %126, i1* %25
  %127 = load i1, i1* %25
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, i8 addrspace(1)* null, i64 %129
  call void @_Bio__println(i8 addrspace(1)* %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  store i8 addrspace(1)* null, i8 addrspace(1)** %v2
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %133 = icmp eq i8 addrspace(1)* %131, %132
  store i1 %133, i1* %27
  %134 = load i1, i1* %27
  %135 = zext i1 %134 to i64
  %136 = or i64 %135, 72057594037927936
  %137 = getelementptr i8, i8 addrspace(1)* null, i64 %136
  call void @_Bio__println(i8 addrspace(1)* %137)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %138 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 25)
  store i8 addrspace(1)* %138, i8 addrspace(1)** %30
  %139 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 25)
  store i8 addrspace(1)* %139, i8 addrspace(1)** %31
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  %142 = icmp eq i8 addrspace(1)* %140, %141
  store i1 %142, i1* %29
  %143 = load i1, i1* %29
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, i8 addrspace(1)* null, i64 %145
  call void @_Bio__println(i8 addrspace(1)* %146)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  ret void
147:
  %148 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %148)
  unreachable
}
