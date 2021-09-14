@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_array_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %a = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i1
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i1
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i1
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8
  %45 = load i8*, i8** @_bal_stack_guard
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %250, label %47
47:
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %49 = bitcast i8 addrspace(1)* %48 to [3 x i8 addrspace(1)*] addrspace(1)*
  %50 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %50
  %51 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %51
  %52 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801), i8 addrspace(1)* addrspace(1)* %52
  %53 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %49 to [0 x i8 addrspace(1)*] addrspace(1)*
  %54 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %55 = bitcast i8 addrspace(1)* %54 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %56 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %56
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %57
  %58 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %58
  %59 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %53, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %59
  %60 = getelementptr i8, i8 addrspace(1)* %54, i64 1297036692682702848
  store i8 addrspace(1)* %60, i8 addrspace(1)** %1
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %61, i8 addrspace(1)** %a
  %62 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %63 = bitcast i8 addrspace(1)* %62 to [3 x i8 addrspace(1)*] addrspace(1)*
  %64 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %64
  %65 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %65
  %66 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801), i8 addrspace(1)* addrspace(1)* %66
  %67 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %63 to [0 x i8 addrspace(1)*] addrspace(1)*
  %68 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %69 = bitcast i8 addrspace(1)* %68 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 0
  store i64 1025, i64 addrspace(1)* %70
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %71
  %72 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %72
  %73 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %67, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %73
  %74 = getelementptr i8, i8 addrspace(1)* %68, i64 1297036692682702848
  store i8 addrspace(1)* %74, i8 addrspace(1)** %2
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %75, i8 addrspace(1)** %b
  %76 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %77 = bitcast i8 addrspace(1)* %76 to [3 x i8 addrspace(1)*] addrspace(1)*
  %78 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %77, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %78
  %79 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %77, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %79
  %80 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %77, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622150520), i8 addrspace(1)* addrspace(1)* %80
  %81 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %77 to [0 x i8 addrspace(1)*] addrspace(1)*
  %82 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %83 = bitcast i8 addrspace(1)* %82 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %84 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 0
  store i64 1025, i64 addrspace(1)* %84
  %85 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %85
  %86 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %86
  %87 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %81, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %87
  %88 = getelementptr i8, i8 addrspace(1)* %82, i64 1297036692682702848
  store i8 addrspace(1)* %88, i8 addrspace(1)** %3
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %89, i8 addrspace(1)** %c
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %92 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %90, i8 addrspace(1)* %91)
  %93 = icmp eq i64 %92, 0
  store i1 %93, i1* %4
  %94 = load i1, i1* %4
  %95 = zext i1 %94 to i64
  %96 = or i64 %95, 72057594037927936
  %97 = getelementptr i8, i8 addrspace(1)* null, i64 %96
  call void @_Bio__println(i8 addrspace(1)* %97)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %100 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %98, i8 addrspace(1)* %99)
  %101 = icmp ule i64 %100, 1
  store i1 %101, i1* %6
  %102 = load i1, i1* %6
  %103 = zext i1 %102 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  call void @_Bio__println(i8 addrspace(1)* %105)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %108 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %106, i8 addrspace(1)* %107)
  %109 = icmp eq i64 %108, 2
  store i1 %109, i1* %8
  %110 = load i1, i1* %8
  %111 = zext i1 %110 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  call void @_Bio__println(i8 addrspace(1)* %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %116 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %114, i8 addrspace(1)* %115)
  %117 = icmp sge i64 %116, 1
  store i1 %117, i1* %10
  %118 = load i1, i1* %10
  %119 = zext i1 %118 to i64
  %120 = or i64 %119, 72057594037927936
  %121 = getelementptr i8, i8 addrspace(1)* null, i64 %120
  call void @_Bio__println(i8 addrspace(1)* %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %124 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %122, i8 addrspace(1)* %123)
  %125 = icmp eq i64 %124, 0
  store i1 %125, i1* %12
  %126 = load i1, i1* %12
  %127 = zext i1 %126 to i64
  %128 = or i64 %127, 72057594037927936
  %129 = getelementptr i8, i8 addrspace(1)* null, i64 %128
  call void @_Bio__println(i8 addrspace(1)* %129)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %132 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %130, i8 addrspace(1)* %131)
  %133 = icmp ule i64 %132, 1
  store i1 %133, i1* %14
  %134 = load i1, i1* %14
  %135 = zext i1 %134 to i64
  %136 = or i64 %135, 72057594037927936
  %137 = getelementptr i8, i8 addrspace(1)* null, i64 %136
  call void @_Bio__println(i8 addrspace(1)* %137)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %140 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %138, i8 addrspace(1)* %139)
  %141 = icmp eq i64 %140, 2
  store i1 %141, i1* %16
  %142 = load i1, i1* %16
  %143 = zext i1 %142 to i64
  %144 = or i64 %143, 72057594037927936
  %145 = getelementptr i8, i8 addrspace(1)* null, i64 %144
  call void @_Bio__println(i8 addrspace(1)* %145)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %148 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %146, i8 addrspace(1)* %147)
  %149 = icmp sge i64 %148, 1
  store i1 %149, i1* %18
  %150 = load i1, i1* %18
  %151 = zext i1 %150 to i64
  %152 = or i64 %151, 72057594037927936
  %153 = getelementptr i8, i8 addrspace(1)* null, i64 %152
  call void @_Bio__println(i8 addrspace(1)* %153)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %156 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %154, i8 addrspace(1)* %155)
  %157 = icmp eq i64 %156, 0
  store i1 %157, i1* %20
  %158 = load i1, i1* %20
  %159 = zext i1 %158 to i64
  %160 = or i64 %159, 72057594037927936
  %161 = getelementptr i8, i8 addrspace(1)* null, i64 %160
  call void @_Bio__println(i8 addrspace(1)* %161)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %164 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %162, i8 addrspace(1)* %163)
  %165 = icmp ule i64 %164, 1
  store i1 %165, i1* %22
  %166 = load i1, i1* %22
  %167 = zext i1 %166 to i64
  %168 = or i64 %167, 72057594037927936
  %169 = getelementptr i8, i8 addrspace(1)* null, i64 %168
  call void @_Bio__println(i8 addrspace(1)* %169)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %172 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %170, i8 addrspace(1)* %171)
  %173 = icmp eq i64 %172, 2
  store i1 %173, i1* %24
  %174 = load i1, i1* %24
  %175 = zext i1 %174 to i64
  %176 = or i64 %175, 72057594037927936
  %177 = getelementptr i8, i8 addrspace(1)* null, i64 %176
  call void @_Bio__println(i8 addrspace(1)* %177)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %180 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %178, i8 addrspace(1)* %179)
  %181 = icmp sge i64 %180, 1
  store i1 %181, i1* %26
  %182 = load i1, i1* %26
  %183 = zext i1 %182 to i64
  %184 = or i64 %183, 72057594037927936
  %185 = getelementptr i8, i8 addrspace(1)* null, i64 %184
  call void @_Bio__println(i8 addrspace(1)* %185)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %188 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %186, i8 addrspace(1)* %187)
  %189 = icmp eq i64 %188, 0
  store i1 %189, i1* %28
  %190 = load i1, i1* %28
  %191 = zext i1 %190 to i64
  %192 = or i64 %191, 72057594037927936
  %193 = getelementptr i8, i8 addrspace(1)* null, i64 %192
  call void @_Bio__println(i8 addrspace(1)* %193)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %196 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %194, i8 addrspace(1)* %195)
  %197 = icmp ule i64 %196, 1
  store i1 %197, i1* %30
  %198 = load i1, i1* %30
  %199 = zext i1 %198 to i64
  %200 = or i64 %199, 72057594037927936
  %201 = getelementptr i8, i8 addrspace(1)* null, i64 %200
  call void @_Bio__println(i8 addrspace(1)* %201)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %204 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %202, i8 addrspace(1)* %203)
  %205 = icmp eq i64 %204, 2
  store i1 %205, i1* %32
  %206 = load i1, i1* %32
  %207 = zext i1 %206 to i64
  %208 = or i64 %207, 72057594037927936
  %209 = getelementptr i8, i8 addrspace(1)* null, i64 %208
  call void @_Bio__println(i8 addrspace(1)* %209)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %212 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %210, i8 addrspace(1)* %211)
  %213 = icmp sge i64 %212, 1
  store i1 %213, i1* %34
  %214 = load i1, i1* %34
  %215 = zext i1 %214 to i64
  %216 = or i64 %215, 72057594037927936
  %217 = getelementptr i8, i8 addrspace(1)* null, i64 %216
  call void @_Bio__println(i8 addrspace(1)* %217)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %220 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %218, i8 addrspace(1)* %219)
  %221 = icmp eq i64 %220, 0
  store i1 %221, i1* %36
  %222 = load i1, i1* %36
  %223 = zext i1 %222 to i64
  %224 = or i64 %223, 72057594037927936
  %225 = getelementptr i8, i8 addrspace(1)* null, i64 %224
  call void @_Bio__println(i8 addrspace(1)* %225)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %228 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %226, i8 addrspace(1)* %227)
  %229 = icmp ule i64 %228, 1
  store i1 %229, i1* %38
  %230 = load i1, i1* %38
  %231 = zext i1 %230 to i64
  %232 = or i64 %231, 72057594037927936
  %233 = getelementptr i8, i8 addrspace(1)* null, i64 %232
  call void @_Bio__println(i8 addrspace(1)* %233)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %236 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %234, i8 addrspace(1)* %235)
  %237 = icmp eq i64 %236, 2
  store i1 %237, i1* %40
  %238 = load i1, i1* %40
  %239 = zext i1 %238 to i64
  %240 = or i64 %239, 72057594037927936
  %241 = getelementptr i8, i8 addrspace(1)* null, i64 %240
  call void @_Bio__println(i8 addrspace(1)* %241)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %244 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %242, i8 addrspace(1)* %243)
  %245 = icmp sge i64 %244, 1
  store i1 %245, i1* %42
  %246 = load i1, i1* %42
  %247 = zext i1 %246 to i64
  %248 = or i64 %247, 72057594037927936
  %249 = getelementptr i8, i8 addrspace(1)* null, i64 %248
  call void @_Bio__println(i8 addrspace(1)* %249)
  store i8 addrspace(1)* null, i8 addrspace(1)** %43
  ret void
250:
  %251 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %251)
  unreachable
}
