@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8
  %29 = load i8*, i8** @_bal_stack_guard
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %37, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %36 = icmp eq i8 addrspace(1)* %34, %35
  br i1 %36, label %38, label %39
37:
  call void @_bal_panic(i64 772)
  unreachable
38:
  store i1 1, i1* %1
  br label %49
39:
  %40 = addrspacecast i8 addrspace(1)* %34 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 504403158265495552
  %44 = addrspacecast i8 addrspace(1)* %35 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 504403158265495552
  %48 = and i1 %43, %47
  br i1 %48, label %60, label %64
49:
  %50 = load i1, i1* %1
  %51 = zext i1 %50 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %54 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %54, i8 addrspace(1)** %6
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %56 = addrspacecast i8 addrspace(1)* %55 to i8*
  %57 = ptrtoint i8* %56 to i64
  %58 = and i64 %57, 2233785415175766016
  %59 = icmp eq i64 %58, 504403158265495552
  br i1 %59, label %65, label %68
60:
  %61 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %62 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  %63 = icmp eq i64 %61, %62
  store i1 %63, i1* %1
  br label %49
64:
  store i1 0, i1* %1
  br label %49
65:
  %66 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %55)
  %67 = icmp ne i64 %66, 0
  store i1 %67, i1* %5
  br label %69
68:
  store i1 1, i1* %5
  br label %69
69:
  %70 = load i1, i1* %5
  %71 = zext i1 %70 to i64
  %72 = or i64 %71, 72057594037927936
  %73 = getelementptr i8, i8 addrspace(1)* null, i64 %72
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %74 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %9
  %75 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %75, i8 addrspace(1)** %10
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %78 = icmp eq i8 addrspace(1)* %76, %77
  br i1 %78, label %79, label %80
79:
  store i1 1, i1* %8
  br label %90
80:
  %81 = addrspacecast i8 addrspace(1)* %76 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = and i64 %82, 2233785415175766016
  %84 = icmp eq i64 %83, 504403158265495552
  %85 = addrspacecast i8 addrspace(1)* %77 to i8*
  %86 = ptrtoint i8* %85 to i64
  %87 = and i64 %86, 2233785415175766016
  %88 = icmp eq i64 %87, 504403158265495552
  %89 = and i1 %84, %88
  br i1 %89, label %100, label %104
90:
  %91 = load i1, i1* %8
  %92 = zext i1 %91 to i64
  %93 = or i64 %92, 72057594037927936
  %94 = getelementptr i8, i8 addrspace(1)* null, i64 %93
  call void @_Bio__println(i8 addrspace(1)* %94)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %95 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %95, i8 addrspace(1)** %13
  %96 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %96, i8 addrspace(1)** %14
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %99 = icmp eq i8 addrspace(1)* %97, %98
  br i1 %99, label %105, label %106
100:
  %101 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %76)
  %102 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %77)
  %103 = icmp eq i64 %101, %102
  store i1 %103, i1* %8
  br label %90
104:
  store i1 0, i1* %8
  br label %90
105:
  store i1 0, i1* %12
  br label %116
106:
  %107 = addrspacecast i8 addrspace(1)* %97 to i8*
  %108 = ptrtoint i8* %107 to i64
  %109 = and i64 %108, 2233785415175766016
  %110 = icmp eq i64 %109, 504403158265495552
  %111 = addrspacecast i8 addrspace(1)* %98 to i8*
  %112 = ptrtoint i8* %111 to i64
  %113 = and i64 %112, 2233785415175766016
  %114 = icmp eq i64 %113, 504403158265495552
  %115 = and i1 %110, %114
  br i1 %115, label %161, label %165
116:
  %117 = load i1, i1* %12
  %118 = zext i1 %117 to i64
  %119 = or i64 %118, 72057594037927936
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119
  call void @_Bio__println(i8 addrspace(1)* %120)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %121 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %121, i8 addrspace(1)** %17
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %123 = zext i1 0 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, i8 addrspace(1)* null, i64 %124
  %126 = icmp ne i8 addrspace(1)* %122, %125
  store i1 %126, i1* %16
  %127 = load i1, i1* %16
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, i8 addrspace(1)* null, i64 %129
  call void @_Bio__println(i8 addrspace(1)* %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %131 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %131, i8 addrspace(1)** %20
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %133 = zext i1 1 to i64
  %134 = or i64 %133, 72057594037927936
  %135 = getelementptr i8, i8 addrspace(1)* null, i64 %134
  %136 = icmp ne i8 addrspace(1)* %132, %135
  store i1 %136, i1* %19
  %137 = load i1, i1* %19
  %138 = zext i1 %137 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, i8 addrspace(1)* null, i64 %139
  call void @_Bio__println(i8 addrspace(1)* %140)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %141 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %141, i8 addrspace(1)** %23
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %143 = zext i1 1 to i64
  %144 = or i64 %143, 72057594037927936
  %145 = getelementptr i8, i8 addrspace(1)* null, i64 %144
  %146 = icmp eq i8 addrspace(1)* %142, %145
  store i1 %146, i1* %22
  %147 = load i1, i1* %22
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, i8 addrspace(1)* null, i64 %149
  call void @_Bio__println(i8 addrspace(1)* %150)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %151 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %151, i8 addrspace(1)** %26
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %153 = zext i1 0 to i64
  %154 = or i64 %153, 72057594037927936
  %155 = getelementptr i8, i8 addrspace(1)* null, i64 %154
  %156 = icmp ne i8 addrspace(1)* %152, %155
  store i1 %156, i1* %25
  %157 = load i1, i1* %25
  %158 = zext i1 %157 to i64
  %159 = or i64 %158, 72057594037927936
  %160 = getelementptr i8, i8 addrspace(1)* null, i64 %159
  call void @_Bio__println(i8 addrspace(1)* %160)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  ret void
161:
  %162 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %97)
  %163 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %98)
  %164 = icmp ne i64 %162, %163
  store i1 %164, i1* %12
  br label %116
165:
  store i1 1, i1* %12
  br label %116
}
define internal i8 addrspace(1)* @_B_mkNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  call void @_bal_panic(i64 3588)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 4612)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, i1* %b
  %6 = load i1, i1* %b
  %7 = zext i1 %6 to i64
  %8 = or i64 %7, 72057594037927936
  %9 = getelementptr i8, i8 addrspace(1)* null, i64 %8
  ret i8 addrspace(1)* %9
10:
  call void @_bal_panic(i64 5636)
  unreachable
}
