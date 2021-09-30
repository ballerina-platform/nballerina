@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_array_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %a = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
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
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i1
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i1
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i1
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i1
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i1
  %58 = alloca i8 addrspace(1)*
  %59 = alloca i1
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i1
  %62 = alloca i8 addrspace(1)*
  %63 = alloca i1
  %64 = alloca i8 addrspace(1)*
  %65 = alloca i1
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i1
  %68 = alloca i8 addrspace(1)*
  %69 = alloca i1
  %70 = alloca i8 addrspace(1)*
  %71 = alloca i1
  %72 = alloca i8 addrspace(1)*
  %73 = alloca i1
  %74 = alloca i8 addrspace(1)*
  %75 = alloca i1
  %76 = alloca i8 addrspace(1)*
  %77 = alloca i1
  %78 = alloca i8 addrspace(1)*
  %79 = alloca i1
  %80 = alloca i8 addrspace(1)*
  %81 = alloca i1
  %82 = alloca i8 addrspace(1)*
  %83 = alloca i1
  %84 = alloca i8 addrspace(1)*
  %85 = alloca i1
  %86 = alloca i8 addrspace(1)*
  %87 = alloca i1
  %88 = alloca i8 addrspace(1)*
  %89 = alloca i1
  %90 = alloca i8 addrspace(1)*
  %91 = alloca i1
  %92 = alloca i8 addrspace(1)*
  %93 = alloca i1
  %94 = alloca i8 addrspace(1)*
  %95 = alloca i8
  %96 = load i8*, i8** @_bal_stack_guard
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %531, label %98
98:
  %99 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %100 = bitcast i8 addrspace(1)* %99 to [3 x i8 addrspace(1)*] addrspace(1)*
  %101 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %101
  %102 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %102
  %103 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %103
  %104 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %100 to [0 x i8 addrspace(1)*] addrspace(1)*
  %105 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %106 = bitcast i8 addrspace(1)* %105 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %107 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %107
  %108 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %108
  %109 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %109
  %110 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %104, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %110
  %111 = getelementptr i8, i8 addrspace(1)* %105, i64 1297036692682702852
  store i8 addrspace(1)* %111, i8 addrspace(1)** %1
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %112, i8 addrspace(1)** %a
  %113 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %114 = bitcast i8 addrspace(1)* %113 to [3 x i8 addrspace(1)*] addrspace(1)*
  %115 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620834657), i8 addrspace(1)* addrspace(1)* %115
  %116 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541053920865), i8 addrspace(1)* addrspace(1)* %116
  %117 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622150520), i8 addrspace(1)* addrspace(1)* %117
  %118 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %114 to [0 x i8 addrspace(1)*] addrspace(1)*
  %119 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %120 = bitcast i8 addrspace(1)* %119 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %121 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %121
  %122 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %122
  %123 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %123
  %124 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %120, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %118, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %124
  %125 = getelementptr i8, i8 addrspace(1)* %119, i64 1297036692682702852
  store i8 addrspace(1)* %125, i8 addrspace(1)** %2
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %126, i8 addrspace(1)** %b
  %127 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %128 = bitcast i8 addrspace(1)* %127 to [3 x i8 addrspace(1)*] addrspace(1)*
  %129 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %129
  %130 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %130
  %131 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620834657), i8 addrspace(1)* addrspace(1)* %131
  %132 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %128 to [0 x i8 addrspace(1)*] addrspace(1)*
  %133 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %134 = bitcast i8 addrspace(1)* %133 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %135 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %134, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %135
  %136 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %134, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %136
  %137 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %134, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %137
  %138 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %134, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %132, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %138
  %139 = getelementptr i8, i8 addrspace(1)* %133, i64 1297036692682702852
  store i8 addrspace(1)* %139, i8 addrspace(1)** %3
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %140, i8 addrspace(1)** %c
  %141 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %142 = bitcast i8 addrspace(1)* %141 to [4 x i8 addrspace(1)*] addrspace(1)*
  %143 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %143
  %144 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %144
  %145 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %145
  %146 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* addrspace(1)* %146
  %147 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %142 to [0 x i8 addrspace(1)*] addrspace(1)*
  %148 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %149 = bitcast i8 addrspace(1)* %148 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %150 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %150
  %151 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %151
  %152 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %152
  %153 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %147, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %153
  %154 = getelementptr i8, i8 addrspace(1)* %148, i64 1297036692682702852
  store i8 addrspace(1)* %154, i8 addrspace(1)** %4
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %155, i8 addrspace(1)** %d
  %156 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %157 = bitcast i8 addrspace(1)* %156 to [4 x i8 addrspace(1)*] addrspace(1)*
  %158 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %158
  %159 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %159
  %160 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %160
  %161 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541053920865), i8 addrspace(1)* addrspace(1)* %161
  %162 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %157 to [0 x i8 addrspace(1)*] addrspace(1)*
  %163 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %164 = bitcast i8 addrspace(1)* %163 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %165 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %164, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %165
  %166 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %164, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %166
  %167 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %164, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %167
  %168 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %164, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %162, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %168
  %169 = getelementptr i8, i8 addrspace(1)* %163, i64 1297036692682702852
  store i8 addrspace(1)* %169, i8 addrspace(1)** %5
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %170, i8 addrspace(1)** %e
  %171 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %172 = bitcast i8 addrspace(1)* %171 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %173 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %173
  %174 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %174
  %175 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %175
  %176 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %176
  %177 = getelementptr i8, i8 addrspace(1)* %171, i64 1297036692682702852
  store i8 addrspace(1)* %177, i8 addrspace(1)** %6
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %178, i8 addrspace(1)** %f
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %181 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %179, i8 addrspace(1)* %180)
  %182 = icmp eq i64 %181, 0
  store i1 %182, i1* %7
  %183 = load i1, i1* %7, !dbg !8
  %184 = zext i1 %183 to i64, !dbg !8
  %185 = or i64 %184, 72057594037927936, !dbg !8
  %186 = getelementptr i8, i8 addrspace(1)* null, i64 %185, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %186), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %189 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %187, i8 addrspace(1)* %188)
  %190 = icmp ule i64 %189, 1
  store i1 %190, i1* %9
  %191 = load i1, i1* %9, !dbg !9
  %192 = zext i1 %191 to i64, !dbg !9
  %193 = or i64 %192, 72057594037927936, !dbg !9
  %194 = getelementptr i8, i8 addrspace(1)* null, i64 %193, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %194), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !9
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %197 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %195, i8 addrspace(1)* %196)
  %198 = icmp eq i64 %197, 2
  store i1 %198, i1* %11
  %199 = load i1, i1* %11, !dbg !10
  %200 = zext i1 %199 to i64, !dbg !10
  %201 = or i64 %200, 72057594037927936, !dbg !10
  %202 = getelementptr i8, i8 addrspace(1)* null, i64 %201, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %202), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !10
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %205 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %203, i8 addrspace(1)* %204)
  %206 = icmp sge i64 %205, 1
  store i1 %206, i1* %13
  %207 = load i1, i1* %13, !dbg !11
  %208 = zext i1 %207 to i64, !dbg !11
  %209 = or i64 %208, 72057594037927936, !dbg !11
  %210 = getelementptr i8, i8 addrspace(1)* null, i64 %209, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %210), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !11
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %213 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %211, i8 addrspace(1)* %212)
  %214 = icmp eq i64 %213, 0
  store i1 %214, i1* %15
  %215 = load i1, i1* %15, !dbg !12
  %216 = zext i1 %215 to i64, !dbg !12
  %217 = or i64 %216, 72057594037927936, !dbg !12
  %218 = getelementptr i8, i8 addrspace(1)* null, i64 %217, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %218), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !12
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %221 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %219, i8 addrspace(1)* %220)
  %222 = icmp ule i64 %221, 1
  store i1 %222, i1* %17
  %223 = load i1, i1* %17, !dbg !13
  %224 = zext i1 %223 to i64, !dbg !13
  %225 = or i64 %224, 72057594037927936, !dbg !13
  %226 = getelementptr i8, i8 addrspace(1)* null, i64 %225, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %226), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !13
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %229 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %227, i8 addrspace(1)* %228)
  %230 = icmp eq i64 %229, 2
  store i1 %230, i1* %19
  %231 = load i1, i1* %19, !dbg !14
  %232 = zext i1 %231 to i64, !dbg !14
  %233 = or i64 %232, 72057594037927936, !dbg !14
  %234 = getelementptr i8, i8 addrspace(1)* null, i64 %233, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %234), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %236 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %237 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %235, i8 addrspace(1)* %236)
  %238 = icmp sge i64 %237, 1
  store i1 %238, i1* %21
  %239 = load i1, i1* %21, !dbg !15
  %240 = zext i1 %239 to i64, !dbg !15
  %241 = or i64 %240, 72057594037927936, !dbg !15
  %242 = getelementptr i8, i8 addrspace(1)* null, i64 %241, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %242), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !15
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %245 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %243, i8 addrspace(1)* %244)
  %246 = icmp eq i64 %245, 0
  store i1 %246, i1* %23
  %247 = load i1, i1* %23, !dbg !16
  %248 = zext i1 %247 to i64, !dbg !16
  %249 = or i64 %248, 72057594037927936, !dbg !16
  %250 = getelementptr i8, i8 addrspace(1)* null, i64 %249, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %250), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !16
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %253 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %251, i8 addrspace(1)* %252)
  %254 = icmp ule i64 %253, 1
  store i1 %254, i1* %25
  %255 = load i1, i1* %25, !dbg !17
  %256 = zext i1 %255 to i64, !dbg !17
  %257 = or i64 %256, 72057594037927936, !dbg !17
  %258 = getelementptr i8, i8 addrspace(1)* null, i64 %257, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %258), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !17
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %261 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %259, i8 addrspace(1)* %260)
  %262 = icmp eq i64 %261, 2
  store i1 %262, i1* %27
  %263 = load i1, i1* %27, !dbg !18
  %264 = zext i1 %263 to i64, !dbg !18
  %265 = or i64 %264, 72057594037927936, !dbg !18
  %266 = getelementptr i8, i8 addrspace(1)* null, i64 %265, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %266), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !18
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %269 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %267, i8 addrspace(1)* %268)
  %270 = icmp sge i64 %269, 1
  store i1 %270, i1* %29
  %271 = load i1, i1* %29, !dbg !19
  %272 = zext i1 %271 to i64, !dbg !19
  %273 = or i64 %272, 72057594037927936, !dbg !19
  %274 = getelementptr i8, i8 addrspace(1)* null, i64 %273, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %274), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !19
  %275 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %277 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %275, i8 addrspace(1)* %276)
  %278 = icmp eq i64 %277, 0
  store i1 %278, i1* %31
  %279 = load i1, i1* %31, !dbg !20
  %280 = zext i1 %279 to i64, !dbg !20
  %281 = or i64 %280, 72057594037927936, !dbg !20
  %282 = getelementptr i8, i8 addrspace(1)* null, i64 %281, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %282), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !20
  %283 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %285 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %283, i8 addrspace(1)* %284)
  %286 = icmp ule i64 %285, 1
  store i1 %286, i1* %33
  %287 = load i1, i1* %33, !dbg !21
  %288 = zext i1 %287 to i64, !dbg !21
  %289 = or i64 %288, 72057594037927936, !dbg !21
  %290 = getelementptr i8, i8 addrspace(1)* null, i64 %289, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %290), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !21
  %291 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %293 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %291, i8 addrspace(1)* %292)
  %294 = icmp eq i64 %293, 2
  store i1 %294, i1* %35
  %295 = load i1, i1* %35, !dbg !22
  %296 = zext i1 %295 to i64, !dbg !22
  %297 = or i64 %296, 72057594037927936, !dbg !22
  %298 = getelementptr i8, i8 addrspace(1)* null, i64 %297, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %298), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !22
  %299 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %300 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %301 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %299, i8 addrspace(1)* %300)
  %302 = icmp sge i64 %301, 1
  store i1 %302, i1* %37
  %303 = load i1, i1* %37, !dbg !23
  %304 = zext i1 %303 to i64, !dbg !23
  %305 = or i64 %304, 72057594037927936, !dbg !23
  %306 = getelementptr i8, i8 addrspace(1)* null, i64 %305, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %306), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !23
  %307 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %309 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %307, i8 addrspace(1)* %308)
  %310 = icmp eq i64 %309, 0
  store i1 %310, i1* %39
  %311 = load i1, i1* %39, !dbg !24
  %312 = zext i1 %311 to i64, !dbg !24
  %313 = or i64 %312, 72057594037927936, !dbg !24
  %314 = getelementptr i8, i8 addrspace(1)* null, i64 %313, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %314), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !24
  %315 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %317 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %315, i8 addrspace(1)* %316)
  %318 = icmp ule i64 %317, 1
  store i1 %318, i1* %41
  %319 = load i1, i1* %41, !dbg !25
  %320 = zext i1 %319 to i64, !dbg !25
  %321 = or i64 %320, 72057594037927936, !dbg !25
  %322 = getelementptr i8, i8 addrspace(1)* null, i64 %321, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %322), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !25
  %323 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %325 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %323, i8 addrspace(1)* %324)
  %326 = icmp eq i64 %325, 2
  store i1 %326, i1* %43
  %327 = load i1, i1* %43, !dbg !26
  %328 = zext i1 %327 to i64, !dbg !26
  %329 = or i64 %328, 72057594037927936, !dbg !26
  %330 = getelementptr i8, i8 addrspace(1)* null, i64 %329, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %330), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !26
  %331 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %332 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %333 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %331, i8 addrspace(1)* %332)
  %334 = icmp sge i64 %333, 1
  store i1 %334, i1* %45
  %335 = load i1, i1* %45, !dbg !27
  %336 = zext i1 %335 to i64, !dbg !27
  %337 = or i64 %336, 72057594037927936, !dbg !27
  %338 = getelementptr i8, i8 addrspace(1)* null, i64 %337, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %338), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !27
  %339 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %341 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %339, i8 addrspace(1)* %340)
  %342 = icmp eq i64 %341, 0
  store i1 %342, i1* %47
  %343 = load i1, i1* %47, !dbg !28
  %344 = zext i1 %343 to i64, !dbg !28
  %345 = or i64 %344, 72057594037927936, !dbg !28
  %346 = getelementptr i8, i8 addrspace(1)* null, i64 %345, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %346), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !28
  %347 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %349 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %347, i8 addrspace(1)* %348)
  %350 = icmp ule i64 %349, 1
  store i1 %350, i1* %49
  %351 = load i1, i1* %49, !dbg !29
  %352 = zext i1 %351 to i64, !dbg !29
  %353 = or i64 %352, 72057594037927936, !dbg !29
  %354 = getelementptr i8, i8 addrspace(1)* null, i64 %353, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %354), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !29
  %355 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %357 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %355, i8 addrspace(1)* %356)
  %358 = icmp eq i64 %357, 2
  store i1 %358, i1* %51
  %359 = load i1, i1* %51, !dbg !30
  %360 = zext i1 %359 to i64, !dbg !30
  %361 = or i64 %360, 72057594037927936, !dbg !30
  %362 = getelementptr i8, i8 addrspace(1)* null, i64 %361, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %362), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !30
  %363 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %364 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %365 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %363, i8 addrspace(1)* %364)
  %366 = icmp sge i64 %365, 1
  store i1 %366, i1* %53
  %367 = load i1, i1* %53, !dbg !31
  %368 = zext i1 %367 to i64, !dbg !31
  %369 = or i64 %368, 72057594037927936, !dbg !31
  %370 = getelementptr i8, i8 addrspace(1)* null, i64 %369, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %370), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !31
  %371 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %372 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %373 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %371, i8 addrspace(1)* %372)
  %374 = icmp eq i64 %373, 0
  store i1 %374, i1* %55
  %375 = load i1, i1* %55, !dbg !32
  %376 = zext i1 %375 to i64, !dbg !32
  %377 = or i64 %376, 72057594037927936, !dbg !32
  %378 = getelementptr i8, i8 addrspace(1)* null, i64 %377, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %378), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !32
  %379 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %380 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %381 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %379, i8 addrspace(1)* %380)
  %382 = icmp ule i64 %381, 1
  store i1 %382, i1* %57
  %383 = load i1, i1* %57, !dbg !33
  %384 = zext i1 %383 to i64, !dbg !33
  %385 = or i64 %384, 72057594037927936, !dbg !33
  %386 = getelementptr i8, i8 addrspace(1)* null, i64 %385, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %386), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !33
  %387 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %388 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %389 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %387, i8 addrspace(1)* %388)
  %390 = icmp eq i64 %389, 2
  store i1 %390, i1* %59
  %391 = load i1, i1* %59, !dbg !34
  %392 = zext i1 %391 to i64, !dbg !34
  %393 = or i64 %392, 72057594037927936, !dbg !34
  %394 = getelementptr i8, i8 addrspace(1)* null, i64 %393, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %394), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !34
  %395 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %397 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %395, i8 addrspace(1)* %396)
  %398 = icmp sge i64 %397, 1
  store i1 %398, i1* %61
  %399 = load i1, i1* %61, !dbg !35
  %400 = zext i1 %399 to i64, !dbg !35
  %401 = or i64 %400, 72057594037927936, !dbg !35
  %402 = getelementptr i8, i8 addrspace(1)* null, i64 %401, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %402), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !35
  %403 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %404 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %405 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %403, i8 addrspace(1)* %404)
  %406 = icmp eq i64 %405, 0
  store i1 %406, i1* %63
  %407 = load i1, i1* %63, !dbg !36
  %408 = zext i1 %407 to i64, !dbg !36
  %409 = or i64 %408, 72057594037927936, !dbg !36
  %410 = getelementptr i8, i8 addrspace(1)* null, i64 %409, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %410), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %64, !dbg !36
  %411 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %413 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %411, i8 addrspace(1)* %412)
  %414 = icmp ule i64 %413, 1
  store i1 %414, i1* %65
  %415 = load i1, i1* %65, !dbg !37
  %416 = zext i1 %415 to i64, !dbg !37
  %417 = or i64 %416, 72057594037927936, !dbg !37
  %418 = getelementptr i8, i8 addrspace(1)* null, i64 %417, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %418), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !37
  %419 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %420 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %421 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %419, i8 addrspace(1)* %420)
  %422 = icmp eq i64 %421, 2
  store i1 %422, i1* %67
  %423 = load i1, i1* %67, !dbg !38
  %424 = zext i1 %423 to i64, !dbg !38
  %425 = or i64 %424, 72057594037927936, !dbg !38
  %426 = getelementptr i8, i8 addrspace(1)* null, i64 %425, !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %426), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %68, !dbg !38
  %427 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %429 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %427, i8 addrspace(1)* %428)
  %430 = icmp sge i64 %429, 1
  store i1 %430, i1* %69
  %431 = load i1, i1* %69, !dbg !39
  %432 = zext i1 %431 to i64, !dbg !39
  %433 = or i64 %432, 72057594037927936, !dbg !39
  %434 = getelementptr i8, i8 addrspace(1)* null, i64 %433, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %434), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %70, !dbg !39
  %435 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %436 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %437 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %435, i8 addrspace(1)* %436)
  %438 = icmp eq i64 %437, 0
  store i1 %438, i1* %71
  %439 = load i1, i1* %71, !dbg !40
  %440 = zext i1 %439 to i64, !dbg !40
  %441 = or i64 %440, 72057594037927936, !dbg !40
  %442 = getelementptr i8, i8 addrspace(1)* null, i64 %441, !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %442), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !40
  %443 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %444 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %445 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %443, i8 addrspace(1)* %444)
  %446 = icmp ule i64 %445, 1
  store i1 %446, i1* %73
  %447 = load i1, i1* %73, !dbg !41
  %448 = zext i1 %447 to i64, !dbg !41
  %449 = or i64 %448, 72057594037927936, !dbg !41
  %450 = getelementptr i8, i8 addrspace(1)* null, i64 %449, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %450), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %74, !dbg !41
  %451 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %452 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %453 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %451, i8 addrspace(1)* %452)
  %454 = icmp eq i64 %453, 2
  store i1 %454, i1* %75
  %455 = load i1, i1* %75, !dbg !42
  %456 = zext i1 %455 to i64, !dbg !42
  %457 = or i64 %456, 72057594037927936, !dbg !42
  %458 = getelementptr i8, i8 addrspace(1)* null, i64 %457, !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %458), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %76, !dbg !42
  %459 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %461 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %459, i8 addrspace(1)* %460)
  %462 = icmp sge i64 %461, 1
  store i1 %462, i1* %77
  %463 = load i1, i1* %77, !dbg !43
  %464 = zext i1 %463 to i64, !dbg !43
  %465 = or i64 %464, 72057594037927936, !dbg !43
  %466 = getelementptr i8, i8 addrspace(1)* null, i64 %465, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %466), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !43
  %467 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %468 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %469 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %467, i8 addrspace(1)* %468)
  %470 = icmp eq i64 %469, 0
  store i1 %470, i1* %79
  %471 = load i1, i1* %79, !dbg !44
  %472 = zext i1 %471 to i64, !dbg !44
  %473 = or i64 %472, 72057594037927936, !dbg !44
  %474 = getelementptr i8, i8 addrspace(1)* null, i64 %473, !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %474), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %80, !dbg !44
  %475 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %476 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %477 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %475, i8 addrspace(1)* %476)
  %478 = icmp ule i64 %477, 1
  store i1 %478, i1* %81
  %479 = load i1, i1* %81, !dbg !45
  %480 = zext i1 %479 to i64, !dbg !45
  %481 = or i64 %480, 72057594037927936, !dbg !45
  %482 = getelementptr i8, i8 addrspace(1)* null, i64 %481, !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %482), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !45
  %483 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %484 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %485 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %483, i8 addrspace(1)* %484)
  %486 = icmp eq i64 %485, 2
  store i1 %486, i1* %83
  %487 = load i1, i1* %83, !dbg !46
  %488 = zext i1 %487 to i64, !dbg !46
  %489 = or i64 %488, 72057594037927936, !dbg !46
  %490 = getelementptr i8, i8 addrspace(1)* null, i64 %489, !dbg !46
  call void @_Bb02ioprintln(i8 addrspace(1)* %490), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !46
  %491 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %492 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %493 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %491, i8 addrspace(1)* %492)
  %494 = icmp sge i64 %493, 1
  store i1 %494, i1* %85
  %495 = load i1, i1* %85, !dbg !47
  %496 = zext i1 %495 to i64, !dbg !47
  %497 = or i64 %496, 72057594037927936, !dbg !47
  %498 = getelementptr i8, i8 addrspace(1)* null, i64 %497, !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %498), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %86, !dbg !47
  %499 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %500 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %501 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %499, i8 addrspace(1)* %500)
  %502 = icmp eq i64 %501, 0
  store i1 %502, i1* %87
  %503 = load i1, i1* %87, !dbg !48
  %504 = zext i1 %503 to i64, !dbg !48
  %505 = or i64 %504, 72057594037927936, !dbg !48
  %506 = getelementptr i8, i8 addrspace(1)* null, i64 %505, !dbg !48
  call void @_Bb02ioprintln(i8 addrspace(1)* %506), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %88, !dbg !48
  %507 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %508 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %509 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %507, i8 addrspace(1)* %508)
  %510 = icmp ule i64 %509, 1
  store i1 %510, i1* %89
  %511 = load i1, i1* %89, !dbg !49
  %512 = zext i1 %511 to i64, !dbg !49
  %513 = or i64 %512, 72057594037927936, !dbg !49
  %514 = getelementptr i8, i8 addrspace(1)* null, i64 %513, !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %514), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %90, !dbg !49
  %515 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %516 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %517 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %515, i8 addrspace(1)* %516)
  %518 = icmp eq i64 %517, 2
  store i1 %518, i1* %91
  %519 = load i1, i1* %91, !dbg !50
  %520 = zext i1 %519 to i64, !dbg !50
  %521 = or i64 %520, 72057594037927936, !dbg !50
  %522 = getelementptr i8, i8 addrspace(1)* null, i64 %521, !dbg !50
  call void @_Bb02ioprintln(i8 addrspace(1)* %522), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %92, !dbg !50
  %523 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %524 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %525 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %523, i8 addrspace(1)* %524)
  %526 = icmp sge i64 %525, 1
  store i1 %526, i1* %93
  %527 = load i1, i1* %93, !dbg !51
  %528 = zext i1 %527 to i64, !dbg !51
  %529 = or i64 %528, 72057594037927936, !dbg !51
  %530 = getelementptr i8, i8 addrspace(1)* null, i64 %529, !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %530), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %94, !dbg !51
  ret void
531:
  %532 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %532)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/order3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 1, scope: !5)
!9 = !DILocation(line: 12, column: 1, scope: !5)
!10 = !DILocation(line: 13, column: 1, scope: !5)
!11 = !DILocation(line: 14, column: 1, scope: !5)
!12 = !DILocation(line: 16, column: 1, scope: !5)
!13 = !DILocation(line: 17, column: 1, scope: !5)
!14 = !DILocation(line: 18, column: 1, scope: !5)
!15 = !DILocation(line: 19, column: 1, scope: !5)
!16 = !DILocation(line: 21, column: 1, scope: !5)
!17 = !DILocation(line: 22, column: 1, scope: !5)
!18 = !DILocation(line: 23, column: 1, scope: !5)
!19 = !DILocation(line: 24, column: 1, scope: !5)
!20 = !DILocation(line: 26, column: 1, scope: !5)
!21 = !DILocation(line: 27, column: 1, scope: !5)
!22 = !DILocation(line: 28, column: 1, scope: !5)
!23 = !DILocation(line: 29, column: 1, scope: !5)
!24 = !DILocation(line: 31, column: 1, scope: !5)
!25 = !DILocation(line: 32, column: 1, scope: !5)
!26 = !DILocation(line: 33, column: 1, scope: !5)
!27 = !DILocation(line: 34, column: 1, scope: !5)
!28 = !DILocation(line: 36, column: 1, scope: !5)
!29 = !DILocation(line: 37, column: 1, scope: !5)
!30 = !DILocation(line: 38, column: 1, scope: !5)
!31 = !DILocation(line: 39, column: 1, scope: !5)
!32 = !DILocation(line: 41, column: 1, scope: !5)
!33 = !DILocation(line: 42, column: 1, scope: !5)
!34 = !DILocation(line: 43, column: 1, scope: !5)
!35 = !DILocation(line: 44, column: 1, scope: !5)
!36 = !DILocation(line: 46, column: 1, scope: !5)
!37 = !DILocation(line: 47, column: 1, scope: !5)
!38 = !DILocation(line: 48, column: 1, scope: !5)
!39 = !DILocation(line: 49, column: 1, scope: !5)
!40 = !DILocation(line: 51, column: 1, scope: !5)
!41 = !DILocation(line: 52, column: 1, scope: !5)
!42 = !DILocation(line: 53, column: 1, scope: !5)
!43 = !DILocation(line: 54, column: 1, scope: !5)
!44 = !DILocation(line: 56, column: 1, scope: !5)
!45 = !DILocation(line: 57, column: 1, scope: !5)
!46 = !DILocation(line: 58, column: 1, scope: !5)
!47 = !DILocation(line: 59, column: 1, scope: !5)
!48 = !DILocation(line: 61, column: 1, scope: !5)
!49 = !DILocation(line: 62, column: 1, scope: !5)
!50 = !DILocation(line: 63, column: 1, scope: !5)
!51 = !DILocation(line: 64, column: 1, scope: !5)
