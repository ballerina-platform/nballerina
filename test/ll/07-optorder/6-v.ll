@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  br i1 %19, label %28, label %20
20:
  %21 = zext i1 0 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  store i8 addrspace(1)* %23, i8 addrspace(1)** %a
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %25 = icmp eq i8 addrspace(1)* %24, null
  %26 = icmp eq i8 addrspace(1)* null, null
  %27 = or i1 %25, %26
  br i1 %27, label %30, label %32
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = and i1 %25, %26
  store i1 %31, i1* %1
  br label %34
32:
  %33 = icmp ule i8 addrspace(1)* %24, null
  store i1 %33, i1* %1
  br label %34
34:
  %35 = load i1, i1* %1
  %36 = zext i1 %35 to i64
  %37 = or i64 %36, 72057594037927936
  %38 = getelementptr i8, i8 addrspace(1)* null, i64 %37
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %40 = icmp eq i8 addrspace(1)* %39, null
  %41 = icmp eq i8 addrspace(1)* null, null
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %45
43:
  %44 = and i1 %40, %41
  store i1 0, i1* %3
  br label %47
45:
  %46 = icmp ult i8 addrspace(1)* %39, null
  store i1 %46, i1* %3
  br label %47
47:
  %48 = load i1, i1* %3
  %49 = zext i1 %48 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %53 = icmp eq i8 addrspace(1)* %52, null
  %54 = icmp eq i8 addrspace(1)* null, null
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %58
56:
  %57 = and i1 %53, %54
  store i1 %57, i1* %5
  br label %60
58:
  %59 = icmp uge i8 addrspace(1)* %52, null
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
  br label %73
71:
  %72 = icmp ugt i8 addrspace(1)* %65, null
  store i1 %72, i1* %7
  br label %73
73:
  %74 = load i1, i1* %7
  %75 = zext i1 %74 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %79 = icmp eq i8 addrspace(1)* null, null
  %80 = icmp eq i8 addrspace(1)* %78, null
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %84
82:
  %83 = and i1 %79, %80
  store i1 %83, i1* %9
  br label %86
84:
  %85 = icmp ule i8 addrspace(1)* null, %78
  store i1 %85, i1* %9
  br label %86
86:
  %87 = load i1, i1* %9
  %88 = zext i1 %87 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89
  call void @_Bio__println(i8 addrspace(1)* %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %92 = icmp eq i8 addrspace(1)* null, null
  %93 = icmp eq i8 addrspace(1)* %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %97
95:
  %96 = and i1 %92, %93
  store i1 0, i1* %11
  br label %99
97:
  %98 = icmp ult i8 addrspace(1)* null, %91
  store i1 %98, i1* %11
  br label %99
99:
  %100 = load i1, i1* %11
  %101 = zext i1 %100 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102
  call void @_Bio__println(i8 addrspace(1)* %103)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %105 = icmp eq i8 addrspace(1)* null, null
  %106 = icmp eq i8 addrspace(1)* %104, null
  %107 = or i1 %105, %106
  br i1 %107, label %108, label %110
108:
  %109 = and i1 %105, %106
  store i1 %109, i1* %13
  br label %112
110:
  %111 = icmp uge i8 addrspace(1)* null, %104
  store i1 %111, i1* %13
  br label %112
112:
  %113 = load i1, i1* %13
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %118 = icmp eq i8 addrspace(1)* null, null
  %119 = icmp eq i8 addrspace(1)* %117, null
  %120 = or i1 %118, %119
  br i1 %120, label %121, label %123
121:
  %122 = and i1 %118, %119
  store i1 0, i1* %15
  br label %125
123:
  %124 = icmp ugt i8 addrspace(1)* null, %117
  store i1 %124, i1* %15
  br label %125
125:
  %126 = load i1, i1* %15
  %127 = zext i1 %126 to i64
  %128 = or i64 %127, 72057594037927936
  %129 = getelementptr i8, i8 addrspace(1)* null, i64 %128
  call void @_Bio__println(i8 addrspace(1)* %129)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
}
