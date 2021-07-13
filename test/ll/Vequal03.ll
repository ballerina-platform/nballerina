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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
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
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
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
  br i1 %48, label %59, label %63
49:
  %50 = load i1, i1* %1
  %51 = zext i1 %50 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %54 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %6
  %55 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %7
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %58 = icmp eq i8 addrspace(1)* %56, %57
  br i1 %58, label %64, label %65
59:
  %60 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %61 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  %62 = icmp eq i64 %60, %61
  store i1 %62, i1* %1
  br label %49
63:
  store i1 0, i1* %1
  br label %49
64:
  store i1 0, i1* %5
  br label %75
65:
  %66 = addrspacecast i8 addrspace(1)* %56 to i8*
  %67 = ptrtoint i8* %66 to i64
  %68 = and i64 %67, 2233785415175766016
  %69 = icmp eq i64 %68, 504403158265495552
  %70 = addrspacecast i8 addrspace(1)* %57 to i8*
  %71 = ptrtoint i8* %70 to i64
  %72 = and i64 %71, 2233785415175766016
  %73 = icmp eq i64 %72, 504403158265495552
  %74 = and i1 %69, %73
  br i1 %74, label %85, label %89
75:
  %76 = load i1, i1* %5
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %80 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %80, i8 addrspace(1)** %10
  %81 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %81, i8 addrspace(1)** %11
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %84 = icmp eq i8 addrspace(1)* %82, %83
  br i1 %84, label %90, label %91
85:
  %86 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %56)
  %87 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %57)
  %88 = icmp ne i64 %86, %87
  store i1 %88, i1* %5
  br label %75
89:
  store i1 1, i1* %5
  br label %75
90:
  store i1 1, i1* %9
  br label %101
91:
  %92 = addrspacecast i8 addrspace(1)* %82 to i8*
  %93 = ptrtoint i8* %92 to i64
  %94 = and i64 %93, 2233785415175766016
  %95 = icmp eq i64 %94, 504403158265495552
  %96 = addrspacecast i8 addrspace(1)* %83 to i8*
  %97 = ptrtoint i8* %96 to i64
  %98 = and i64 %97, 2233785415175766016
  %99 = icmp eq i64 %98, 504403158265495552
  %100 = and i1 %95, %99
  br i1 %100, label %122, label %126
101:
  %102 = load i1, i1* %9
  %103 = zext i1 %102 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  call void @_Bio__println(i8 addrspace(1)* %105)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %106 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %106, i8 addrspace(1)** %14
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %108 = zext i1 0 to i64
  %109 = or i64 %108, 72057594037927936
  %110 = getelementptr i8, i8 addrspace(1)* null, i64 %109
  %111 = icmp ne i8 addrspace(1)* %107, %110
  store i1 %111, i1* %13
  %112 = load i1, i1* %13
  %113 = zext i1 %112 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, i8 addrspace(1)* null, i64 %114
  call void @_Bio__println(i8 addrspace(1)* %115)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %116 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %116, i8 addrspace(1)** %17
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %118 = addrspacecast i8 addrspace(1)* %117 to i8*
  %119 = ptrtoint i8* %118 to i64
  %120 = and i64 %119, 2233785415175766016
  %121 = icmp eq i64 %120, 504403158265495552
  br i1 %121, label %127, label %130
122:
  %123 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %82)
  %124 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %83)
  %125 = icmp eq i64 %123, %124
  store i1 %125, i1* %9
  br label %101
126:
  store i1 0, i1* %9
  br label %101
127:
  %128 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %117)
  %129 = icmp eq i64 %128, 1
  store i1 %129, i1* %16
  br label %131
130:
  store i1 0, i1* %16
  br label %131
131:
  %132 = load i1, i1* %16
  %133 = zext i1 %132 to i64
  %134 = or i64 %133, 72057594037927936
  %135 = getelementptr i8, i8 addrspace(1)* null, i64 %134
  call void @_Bio__println(i8 addrspace(1)* %135)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %136 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %136, i8 addrspace(1)** %20
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %138 = addrspacecast i8 addrspace(1)* %137 to i8*
  %139 = ptrtoint i8* %138 to i64
  %140 = and i64 %139, 2233785415175766016
  %141 = icmp eq i64 %140, 504403158265495552
  br i1 %141, label %142, label %145
142:
  %143 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %137)
  %144 = icmp ne i64 %143, 0
  store i1 %144, i1* %19
  br label %146
145:
  store i1 1, i1* %19
  br label %146
146:
  %147 = load i1, i1* %19
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, i8 addrspace(1)* null, i64 %149
  call void @_Bio__println(i8 addrspace(1)* %150)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %151 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %151, i8 addrspace(1)** %23
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %153 = zext i1 1 to i64
  %154 = or i64 %153, 72057594037927936
  %155 = getelementptr i8, i8 addrspace(1)* null, i64 %154
  %156 = icmp eq i8 addrspace(1)* %152, %155
  store i1 %156, i1* %22
  %157 = load i1, i1* %22
  %158 = zext i1 %157 to i64
  %159 = or i64 %158, 72057594037927936
  %160 = getelementptr i8, i8 addrspace(1)* null, i64 %159
  call void @_Bio__println(i8 addrspace(1)* %160)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %161 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %26
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %163 = zext i1 0 to i64
  %164 = or i64 %163, 72057594037927936
  %165 = getelementptr i8, i8 addrspace(1)* null, i64 %164
  %166 = icmp ne i8 addrspace(1)* %162, %165
  store i1 %166, i1* %25
  %167 = load i1, i1* %25
  %168 = zext i1 %167 to i64
  %169 = or i64 %168, 72057594037927936
  %170 = getelementptr i8, i8 addrspace(1)* null, i64 %169
  call void @_Bio__println(i8 addrspace(1)* %170)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  ret void
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
  call void @_bal_panic(i64 3588)
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
  call void @_bal_panic(i64 4612)
  unreachable
}
