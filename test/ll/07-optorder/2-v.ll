@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
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
  br i1 %19, label %26, label %20
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %a
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %23 = icmp eq i8 addrspace(1)* %22, null
  %24 = icmp eq i8 addrspace(1)* null, null
  %25 = or i1 %23, %24
  br i1 %25, label %28, label %30
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
28:
  %29 = and i1 %23, %24
  store i1 %29, i1* %1
  br label %34
30:
  %31 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %22)
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %33 = icmp sle i64 %31, %32
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
  br label %49
45:
  %46 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  %47 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %48 = icmp slt i64 %46, %47
  store i1 %48, i1* %3
  br label %49
49:
  %50 = load i1, i1* %3
  %51 = zext i1 %50 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %55 = icmp eq i8 addrspace(1)* %54, null
  %56 = icmp eq i8 addrspace(1)* null, null
  %57 = or i1 %55, %56
  br i1 %57, label %58, label %60
58:
  %59 = and i1 %55, %56
  store i1 %59, i1* %5
  br label %64
60:
  %61 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %54)
  %62 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %63 = icmp sge i64 %61, %62
  store i1 %63, i1* %5
  br label %64
64:
  %65 = load i1, i1* %5
  %66 = zext i1 %65 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67
  call void @_Bio__println(i8 addrspace(1)* %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %70 = icmp eq i8 addrspace(1)* %69, null
  %71 = icmp eq i8 addrspace(1)* null, null
  %72 = or i1 %70, %71
  br i1 %72, label %73, label %75
73:
  %74 = and i1 %70, %71
  store i1 0, i1* %7
  br label %79
75:
  %76 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %69)
  %77 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %78 = icmp sgt i64 %76, %77
  store i1 %78, i1* %7
  br label %79
79:
  %80 = load i1, i1* %7
  %81 = zext i1 %80 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82
  call void @_Bio__println(i8 addrspace(1)* %83)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %85 = icmp eq i8 addrspace(1)* null, null
  %86 = icmp eq i8 addrspace(1)* %84, null
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %90
88:
  %89 = and i1 %85, %86
  store i1 %89, i1* %9
  br label %94
90:
  %91 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %92 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %84)
  %93 = icmp sle i64 %91, %92
  store i1 %93, i1* %9
  br label %94
94:
  %95 = load i1, i1* %9
  %96 = zext i1 %95 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97
  call void @_Bio__println(i8 addrspace(1)* %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %100 = icmp eq i8 addrspace(1)* null, null
  %101 = icmp eq i8 addrspace(1)* %99, null
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %105
103:
  %104 = and i1 %100, %101
  store i1 0, i1* %11
  br label %109
105:
  %106 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %107 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %99)
  %108 = icmp slt i64 %106, %107
  store i1 %108, i1* %11
  br label %109
109:
  %110 = load i1, i1* %11
  %111 = zext i1 %110 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  call void @_Bio__println(i8 addrspace(1)* %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %115 = icmp eq i8 addrspace(1)* null, null
  %116 = icmp eq i8 addrspace(1)* %114, null
  %117 = or i1 %115, %116
  br i1 %117, label %118, label %120
118:
  %119 = and i1 %115, %116
  store i1 %119, i1* %13
  br label %124
120:
  %121 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %122 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %114)
  %123 = icmp sge i64 %121, %122
  store i1 %123, i1* %13
  br label %124
124:
  %125 = load i1, i1* %13
  %126 = zext i1 %125 to i64
  %127 = or i64 %126, 72057594037927936
  %128 = getelementptr i8, i8 addrspace(1)* null, i64 %127
  call void @_Bio__println(i8 addrspace(1)* %128)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %130 = icmp eq i8 addrspace(1)* null, null
  %131 = icmp eq i8 addrspace(1)* %129, null
  %132 = or i1 %130, %131
  br i1 %132, label %133, label %135
133:
  %134 = and i1 %130, %131
  store i1 0, i1* %15
  br label %139
135:
  %136 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* null)
  %137 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %129)
  %138 = icmp sgt i64 %136, %137
  store i1 %138, i1* %15
  br label %139
139:
  %140 = load i1, i1* %15
  %141 = zext i1 %140 to i64
  %142 = or i64 %141, 72057594037927936
  %143 = getelementptr i8, i8 addrspace(1)* null, i64 %142
  call void @_Bio__println(i8 addrspace(1)* %143)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
}
