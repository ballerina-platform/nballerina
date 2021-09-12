@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_string_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
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
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %25, label %20
20:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)** %a
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %22 = icmp eq i8 addrspace(1)* %21, null
  %23 = icmp eq i8 addrspace(1)* null, null
  %24 = or i1 %22, %23
  br i1 %24, label %27, label %29
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = and i1 %22, %23
  store i1 %28, i1* %1
  br label %32
29:
  %30 = call i64 @_bal_string_cmp(i8 addrspace(1)* %21, i8 addrspace(1)* null)
  %31 = icmp sle i64 %30, 0
  store i1 %31, i1* %1
  br label %32
32:
  %33 = load i1, i1* %1
  %34 = zext i1 %33 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %38 = icmp eq i8 addrspace(1)* %37, null
  %39 = icmp eq i8 addrspace(1)* null, null
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %43
41:
  %42 = and i1 %38, %39
  store i1 0, i1* %3
  br label %46
43:
  %44 = call i64 @_bal_string_cmp(i8 addrspace(1)* %37, i8 addrspace(1)* null)
  %45 = icmp slt i64 %44, 0
  store i1 %45, i1* %3
  br label %46
46:
  %47 = load i1, i1* %3
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %52 = icmp eq i8 addrspace(1)* %51, null
  %53 = icmp eq i8 addrspace(1)* null, null
  %54 = or i1 %52, %53
  br i1 %54, label %55, label %57
55:
  %56 = and i1 %52, %53
  store i1 %56, i1* %5
  br label %60
57:
  %58 = call i64 @_bal_string_cmp(i8 addrspace(1)* %51, i8 addrspace(1)* null)
  %59 = icmp sge i64 %58, 0
  store i1 %59, i1* %5
  br label %60
60:
  %61 = load i1, i1* %5
  %62 = zext i1 %61 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %66 = icmp eq i8 addrspace(1)* %65, null
  %67 = icmp eq i8 addrspace(1)* null, null
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %71
69:
  %70 = and i1 %66, %67
  store i1 0, i1* %7
  br label %74
71:
  %72 = call i64 @_bal_string_cmp(i8 addrspace(1)* %65, i8 addrspace(1)* null)
  %73 = icmp sgt i64 %72, 0
  store i1 %73, i1* %7
  br label %74
74:
  %75 = load i1, i1* %7
  %76 = zext i1 %75 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %80 = icmp eq i8 addrspace(1)* null, null
  %81 = icmp eq i8 addrspace(1)* %79, null
  %82 = or i1 %80, %81
  br i1 %82, label %83, label %85
83:
  %84 = and i1 %80, %81
  store i1 %84, i1* %9
  br label %88
85:
  %86 = call i64 @_bal_string_cmp(i8 addrspace(1)* null, i8 addrspace(1)* %79)
  %87 = icmp sle i64 %86, 0
  store i1 %87, i1* %9
  br label %88
88:
  %89 = load i1, i1* %9
  %90 = zext i1 %89 to i64
  %91 = or i64 %90, 72057594037927936
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91
  call void @_Bio__println(i8 addrspace(1)* %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %94 = icmp eq i8 addrspace(1)* null, null
  %95 = icmp eq i8 addrspace(1)* %93, null
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %99
97:
  %98 = and i1 %94, %95
  store i1 0, i1* %11
  br label %102
99:
  %100 = call i64 @_bal_string_cmp(i8 addrspace(1)* null, i8 addrspace(1)* %93)
  %101 = icmp slt i64 %100, 0
  store i1 %101, i1* %11
  br label %102
102:
  %103 = load i1, i1* %11
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105
  call void @_Bio__println(i8 addrspace(1)* %106)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %108 = icmp eq i8 addrspace(1)* null, null
  %109 = icmp eq i8 addrspace(1)* %107, null
  %110 = or i1 %108, %109
  br i1 %110, label %111, label %113
111:
  %112 = and i1 %108, %109
  store i1 %112, i1* %13
  br label %116
113:
  %114 = call i64 @_bal_string_cmp(i8 addrspace(1)* null, i8 addrspace(1)* %107)
  %115 = icmp sge i64 %114, 0
  store i1 %115, i1* %13
  br label %116
116:
  %117 = load i1, i1* %13
  %118 = zext i1 %117 to i64
  %119 = or i64 %118, 72057594037927936
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119
  call void @_Bio__println(i8 addrspace(1)* %120)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %122 = icmp eq i8 addrspace(1)* null, null
  %123 = icmp eq i8 addrspace(1)* %121, null
  %124 = or i1 %122, %123
  br i1 %124, label %125, label %127
125:
  %126 = and i1 %122, %123
  store i1 0, i1* %15
  br label %130
127:
  %128 = call i64 @_bal_string_cmp(i8 addrspace(1)* null, i8 addrspace(1)* %121)
  %129 = icmp sgt i64 %128, 0
  store i1 %129, i1* %15
  br label %130
130:
  %131 = load i1, i1* %15
  %132 = zext i1 %131 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133
  call void @_Bio__println(i8 addrspace(1)* %134)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
}
