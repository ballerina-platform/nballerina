@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_array_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
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
  br i1 %97, label %507, label %98
98:
  %99 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %100 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %99, i64 0, i32 3
  %101 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %100, align 8
  %102 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %102
  %103 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %103
  %104 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %104
  %105 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %99, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %105
  %106 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %99 to i8 addrspace(1)*
  %107 = getelementptr i8, i8 addrspace(1)* %106, i64 1297036692682702852
  store i8 addrspace(1)* %107, i8 addrspace(1)** %1
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %108, i8 addrspace(1)** %a
  %109 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %110 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 3
  %111 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %110, align 8
  %112 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %111, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620834657), i8 addrspace(1)* addrspace(1)* %112
  %113 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %111, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541053920865), i8 addrspace(1)* addrspace(1)* %113
  %114 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %111, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622150520), i8 addrspace(1)* addrspace(1)* %114
  %115 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %115
  %116 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109 to i8 addrspace(1)*
  %117 = getelementptr i8, i8 addrspace(1)* %116, i64 1297036692682702852
  store i8 addrspace(1)* %117, i8 addrspace(1)** %2
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %118, i8 addrspace(1)** %b
  %119 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %120 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %119, i64 0, i32 3
  %121 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %120, align 8
  %122 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %122
  %123 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %123
  %124 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620834657), i8 addrspace(1)* addrspace(1)* %124
  %125 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %119, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %125
  %126 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %119 to i8 addrspace(1)*
  %127 = getelementptr i8, i8 addrspace(1)* %126, i64 1297036692682702852
  store i8 addrspace(1)* %127, i8 addrspace(1)** %3
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %128, i8 addrspace(1)** %c
  %129 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 4)
  %130 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %129, i64 0, i32 3
  %131 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %130, align 8
  %132 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %132
  %133 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %133
  %134 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %134
  %135 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* addrspace(1)* %135
  %136 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %129, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %136
  %137 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %129 to i8 addrspace(1)*
  %138 = getelementptr i8, i8 addrspace(1)* %137, i64 1297036692682702852
  store i8 addrspace(1)* %138, i8 addrspace(1)** %4
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %139, i8 addrspace(1)** %d
  %140 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 4)
  %141 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 3
  %142 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %141, align 8
  %143 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %143
  %144 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %144
  %145 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %145
  %146 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541053920865), i8 addrspace(1)* addrspace(1)* %146
  %147 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %147
  %148 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140 to i8 addrspace(1)*
  %149 = getelementptr i8, i8 addrspace(1)* %148, i64 1297036692682702852
  store i8 addrspace(1)* %149, i8 addrspace(1)** %5
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %150, i8 addrspace(1)** %e
  %151 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %152 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %151 to i8 addrspace(1)*
  %153 = getelementptr i8, i8 addrspace(1)* %152, i64 1297036692682702852
  store i8 addrspace(1)* %153, i8 addrspace(1)** %6
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %154, i8 addrspace(1)** %f
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %157 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %155, i8 addrspace(1)* %156)
  %158 = icmp eq i64 %157, 0
  store i1 %158, i1* %7
  %159 = load i1, i1* %7, !dbg !8
  %160 = zext i1 %159 to i64, !dbg !8
  %161 = or i64 %160, 72057594037927936, !dbg !8
  %162 = getelementptr i8, i8 addrspace(1)* null, i64 %161, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %162), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %165 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  %166 = icmp ule i64 %165, 1
  store i1 %166, i1* %9
  %167 = load i1, i1* %9, !dbg !9
  %168 = zext i1 %167 to i64, !dbg !9
  %169 = or i64 %168, 72057594037927936, !dbg !9
  %170 = getelementptr i8, i8 addrspace(1)* null, i64 %169, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %170), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !9
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %173 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %171, i8 addrspace(1)* %172)
  %174 = icmp eq i64 %173, 2
  store i1 %174, i1* %11
  %175 = load i1, i1* %11, !dbg !10
  %176 = zext i1 %175 to i64, !dbg !10
  %177 = or i64 %176, 72057594037927936, !dbg !10
  %178 = getelementptr i8, i8 addrspace(1)* null, i64 %177, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %178), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !10
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %181 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %179, i8 addrspace(1)* %180)
  %182 = icmp sge i64 %181, 1
  store i1 %182, i1* %13
  %183 = load i1, i1* %13, !dbg !11
  %184 = zext i1 %183 to i64, !dbg !11
  %185 = or i64 %184, 72057594037927936, !dbg !11
  %186 = getelementptr i8, i8 addrspace(1)* null, i64 %185, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %186), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !11
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %189 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %187, i8 addrspace(1)* %188)
  %190 = icmp eq i64 %189, 0
  store i1 %190, i1* %15
  %191 = load i1, i1* %15, !dbg !12
  %192 = zext i1 %191 to i64, !dbg !12
  %193 = or i64 %192, 72057594037927936, !dbg !12
  %194 = getelementptr i8, i8 addrspace(1)* null, i64 %193, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %194), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !12
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %197 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %195, i8 addrspace(1)* %196)
  %198 = icmp ule i64 %197, 1
  store i1 %198, i1* %17
  %199 = load i1, i1* %17, !dbg !13
  %200 = zext i1 %199 to i64, !dbg !13
  %201 = or i64 %200, 72057594037927936, !dbg !13
  %202 = getelementptr i8, i8 addrspace(1)* null, i64 %201, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %202), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !13
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %205 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %203, i8 addrspace(1)* %204)
  %206 = icmp eq i64 %205, 2
  store i1 %206, i1* %19
  %207 = load i1, i1* %19, !dbg !14
  %208 = zext i1 %207 to i64, !dbg !14
  %209 = or i64 %208, 72057594037927936, !dbg !14
  %210 = getelementptr i8, i8 addrspace(1)* null, i64 %209, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %210), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %213 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %211, i8 addrspace(1)* %212)
  %214 = icmp sge i64 %213, 1
  store i1 %214, i1* %21
  %215 = load i1, i1* %21, !dbg !15
  %216 = zext i1 %215 to i64, !dbg !15
  %217 = or i64 %216, 72057594037927936, !dbg !15
  %218 = getelementptr i8, i8 addrspace(1)* null, i64 %217, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %218), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !15
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %221 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %219, i8 addrspace(1)* %220)
  %222 = icmp eq i64 %221, 0
  store i1 %222, i1* %23
  %223 = load i1, i1* %23, !dbg !16
  %224 = zext i1 %223 to i64, !dbg !16
  %225 = or i64 %224, 72057594037927936, !dbg !16
  %226 = getelementptr i8, i8 addrspace(1)* null, i64 %225, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %226), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !16
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %229 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %227, i8 addrspace(1)* %228)
  %230 = icmp ule i64 %229, 1
  store i1 %230, i1* %25
  %231 = load i1, i1* %25, !dbg !17
  %232 = zext i1 %231 to i64, !dbg !17
  %233 = or i64 %232, 72057594037927936, !dbg !17
  %234 = getelementptr i8, i8 addrspace(1)* null, i64 %233, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %234), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !17
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %236 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %237 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %235, i8 addrspace(1)* %236)
  %238 = icmp eq i64 %237, 2
  store i1 %238, i1* %27
  %239 = load i1, i1* %27, !dbg !18
  %240 = zext i1 %239 to i64, !dbg !18
  %241 = or i64 %240, 72057594037927936, !dbg !18
  %242 = getelementptr i8, i8 addrspace(1)* null, i64 %241, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %242), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !18
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %245 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %243, i8 addrspace(1)* %244)
  %246 = icmp sge i64 %245, 1
  store i1 %246, i1* %29
  %247 = load i1, i1* %29, !dbg !19
  %248 = zext i1 %247 to i64, !dbg !19
  %249 = or i64 %248, 72057594037927936, !dbg !19
  %250 = getelementptr i8, i8 addrspace(1)* null, i64 %249, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %250), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !19
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %253 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %251, i8 addrspace(1)* %252)
  %254 = icmp eq i64 %253, 0
  store i1 %254, i1* %31
  %255 = load i1, i1* %31, !dbg !20
  %256 = zext i1 %255 to i64, !dbg !20
  %257 = or i64 %256, 72057594037927936, !dbg !20
  %258 = getelementptr i8, i8 addrspace(1)* null, i64 %257, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %258), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !20
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %261 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %259, i8 addrspace(1)* %260)
  %262 = icmp ule i64 %261, 1
  store i1 %262, i1* %33
  %263 = load i1, i1* %33, !dbg !21
  %264 = zext i1 %263 to i64, !dbg !21
  %265 = or i64 %264, 72057594037927936, !dbg !21
  %266 = getelementptr i8, i8 addrspace(1)* null, i64 %265, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %266), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !21
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %269 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %267, i8 addrspace(1)* %268)
  %270 = icmp eq i64 %269, 2
  store i1 %270, i1* %35
  %271 = load i1, i1* %35, !dbg !22
  %272 = zext i1 %271 to i64, !dbg !22
  %273 = or i64 %272, 72057594037927936, !dbg !22
  %274 = getelementptr i8, i8 addrspace(1)* null, i64 %273, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %274), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !22
  %275 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %277 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %275, i8 addrspace(1)* %276)
  %278 = icmp sge i64 %277, 1
  store i1 %278, i1* %37
  %279 = load i1, i1* %37, !dbg !23
  %280 = zext i1 %279 to i64, !dbg !23
  %281 = or i64 %280, 72057594037927936, !dbg !23
  %282 = getelementptr i8, i8 addrspace(1)* null, i64 %281, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %282), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !23
  %283 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %285 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %283, i8 addrspace(1)* %284)
  %286 = icmp eq i64 %285, 0
  store i1 %286, i1* %39
  %287 = load i1, i1* %39, !dbg !24
  %288 = zext i1 %287 to i64, !dbg !24
  %289 = or i64 %288, 72057594037927936, !dbg !24
  %290 = getelementptr i8, i8 addrspace(1)* null, i64 %289, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %290), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !24
  %291 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %293 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %291, i8 addrspace(1)* %292)
  %294 = icmp ule i64 %293, 1
  store i1 %294, i1* %41
  %295 = load i1, i1* %41, !dbg !25
  %296 = zext i1 %295 to i64, !dbg !25
  %297 = or i64 %296, 72057594037927936, !dbg !25
  %298 = getelementptr i8, i8 addrspace(1)* null, i64 %297, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %298), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !25
  %299 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %300 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %301 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %299, i8 addrspace(1)* %300)
  %302 = icmp eq i64 %301, 2
  store i1 %302, i1* %43
  %303 = load i1, i1* %43, !dbg !26
  %304 = zext i1 %303 to i64, !dbg !26
  %305 = or i64 %304, 72057594037927936, !dbg !26
  %306 = getelementptr i8, i8 addrspace(1)* null, i64 %305, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %306), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !26
  %307 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %309 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %307, i8 addrspace(1)* %308)
  %310 = icmp sge i64 %309, 1
  store i1 %310, i1* %45
  %311 = load i1, i1* %45, !dbg !27
  %312 = zext i1 %311 to i64, !dbg !27
  %313 = or i64 %312, 72057594037927936, !dbg !27
  %314 = getelementptr i8, i8 addrspace(1)* null, i64 %313, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %314), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !27
  %315 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %317 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %315, i8 addrspace(1)* %316)
  %318 = icmp eq i64 %317, 0
  store i1 %318, i1* %47
  %319 = load i1, i1* %47, !dbg !28
  %320 = zext i1 %319 to i64, !dbg !28
  %321 = or i64 %320, 72057594037927936, !dbg !28
  %322 = getelementptr i8, i8 addrspace(1)* null, i64 %321, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %322), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !28
  %323 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %325 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %323, i8 addrspace(1)* %324)
  %326 = icmp ule i64 %325, 1
  store i1 %326, i1* %49
  %327 = load i1, i1* %49, !dbg !29
  %328 = zext i1 %327 to i64, !dbg !29
  %329 = or i64 %328, 72057594037927936, !dbg !29
  %330 = getelementptr i8, i8 addrspace(1)* null, i64 %329, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %330), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !29
  %331 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %332 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %333 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %331, i8 addrspace(1)* %332)
  %334 = icmp eq i64 %333, 2
  store i1 %334, i1* %51
  %335 = load i1, i1* %51, !dbg !30
  %336 = zext i1 %335 to i64, !dbg !30
  %337 = or i64 %336, 72057594037927936, !dbg !30
  %338 = getelementptr i8, i8 addrspace(1)* null, i64 %337, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %338), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !30
  %339 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %341 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %339, i8 addrspace(1)* %340)
  %342 = icmp sge i64 %341, 1
  store i1 %342, i1* %53
  %343 = load i1, i1* %53, !dbg !31
  %344 = zext i1 %343 to i64, !dbg !31
  %345 = or i64 %344, 72057594037927936, !dbg !31
  %346 = getelementptr i8, i8 addrspace(1)* null, i64 %345, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %346), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !31
  %347 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %349 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %347, i8 addrspace(1)* %348)
  %350 = icmp eq i64 %349, 0
  store i1 %350, i1* %55
  %351 = load i1, i1* %55, !dbg !32
  %352 = zext i1 %351 to i64, !dbg !32
  %353 = or i64 %352, 72057594037927936, !dbg !32
  %354 = getelementptr i8, i8 addrspace(1)* null, i64 %353, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %354), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !32
  %355 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %357 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %355, i8 addrspace(1)* %356)
  %358 = icmp ule i64 %357, 1
  store i1 %358, i1* %57
  %359 = load i1, i1* %57, !dbg !33
  %360 = zext i1 %359 to i64, !dbg !33
  %361 = or i64 %360, 72057594037927936, !dbg !33
  %362 = getelementptr i8, i8 addrspace(1)* null, i64 %361, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %362), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !33
  %363 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %364 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %365 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %363, i8 addrspace(1)* %364)
  %366 = icmp eq i64 %365, 2
  store i1 %366, i1* %59
  %367 = load i1, i1* %59, !dbg !34
  %368 = zext i1 %367 to i64, !dbg !34
  %369 = or i64 %368, 72057594037927936, !dbg !34
  %370 = getelementptr i8, i8 addrspace(1)* null, i64 %369, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %370), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !34
  %371 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %372 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %373 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %371, i8 addrspace(1)* %372)
  %374 = icmp sge i64 %373, 1
  store i1 %374, i1* %61
  %375 = load i1, i1* %61, !dbg !35
  %376 = zext i1 %375 to i64, !dbg !35
  %377 = or i64 %376, 72057594037927936, !dbg !35
  %378 = getelementptr i8, i8 addrspace(1)* null, i64 %377, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %378), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !35
  %379 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %380 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %381 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %379, i8 addrspace(1)* %380)
  %382 = icmp eq i64 %381, 0
  store i1 %382, i1* %63
  %383 = load i1, i1* %63, !dbg !36
  %384 = zext i1 %383 to i64, !dbg !36
  %385 = or i64 %384, 72057594037927936, !dbg !36
  %386 = getelementptr i8, i8 addrspace(1)* null, i64 %385, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %386), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %64, !dbg !36
  %387 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %388 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %389 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %387, i8 addrspace(1)* %388)
  %390 = icmp ule i64 %389, 1
  store i1 %390, i1* %65
  %391 = load i1, i1* %65, !dbg !37
  %392 = zext i1 %391 to i64, !dbg !37
  %393 = or i64 %392, 72057594037927936, !dbg !37
  %394 = getelementptr i8, i8 addrspace(1)* null, i64 %393, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %394), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !37
  %395 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %397 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %395, i8 addrspace(1)* %396)
  %398 = icmp eq i64 %397, 2
  store i1 %398, i1* %67
  %399 = load i1, i1* %67, !dbg !38
  %400 = zext i1 %399 to i64, !dbg !38
  %401 = or i64 %400, 72057594037927936, !dbg !38
  %402 = getelementptr i8, i8 addrspace(1)* null, i64 %401, !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %402), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %68, !dbg !38
  %403 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %404 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %405 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %403, i8 addrspace(1)* %404)
  %406 = icmp sge i64 %405, 1
  store i1 %406, i1* %69
  %407 = load i1, i1* %69, !dbg !39
  %408 = zext i1 %407 to i64, !dbg !39
  %409 = or i64 %408, 72057594037927936, !dbg !39
  %410 = getelementptr i8, i8 addrspace(1)* null, i64 %409, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %410), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %70, !dbg !39
  %411 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %413 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %411, i8 addrspace(1)* %412)
  %414 = icmp eq i64 %413, 0
  store i1 %414, i1* %71
  %415 = load i1, i1* %71, !dbg !40
  %416 = zext i1 %415 to i64, !dbg !40
  %417 = or i64 %416, 72057594037927936, !dbg !40
  %418 = getelementptr i8, i8 addrspace(1)* null, i64 %417, !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %418), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !40
  %419 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %420 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %421 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %419, i8 addrspace(1)* %420)
  %422 = icmp ule i64 %421, 1
  store i1 %422, i1* %73
  %423 = load i1, i1* %73, !dbg !41
  %424 = zext i1 %423 to i64, !dbg !41
  %425 = or i64 %424, 72057594037927936, !dbg !41
  %426 = getelementptr i8, i8 addrspace(1)* null, i64 %425, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %426), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %74, !dbg !41
  %427 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %429 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %427, i8 addrspace(1)* %428)
  %430 = icmp eq i64 %429, 2
  store i1 %430, i1* %75
  %431 = load i1, i1* %75, !dbg !42
  %432 = zext i1 %431 to i64, !dbg !42
  %433 = or i64 %432, 72057594037927936, !dbg !42
  %434 = getelementptr i8, i8 addrspace(1)* null, i64 %433, !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %434), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %76, !dbg !42
  %435 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %436 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %437 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %435, i8 addrspace(1)* %436)
  %438 = icmp sge i64 %437, 1
  store i1 %438, i1* %77
  %439 = load i1, i1* %77, !dbg !43
  %440 = zext i1 %439 to i64, !dbg !43
  %441 = or i64 %440, 72057594037927936, !dbg !43
  %442 = getelementptr i8, i8 addrspace(1)* null, i64 %441, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %442), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !43
  %443 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %444 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %445 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %443, i8 addrspace(1)* %444)
  %446 = icmp eq i64 %445, 0
  store i1 %446, i1* %79
  %447 = load i1, i1* %79, !dbg !44
  %448 = zext i1 %447 to i64, !dbg !44
  %449 = or i64 %448, 72057594037927936, !dbg !44
  %450 = getelementptr i8, i8 addrspace(1)* null, i64 %449, !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %450), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %80, !dbg !44
  %451 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %452 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %453 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %451, i8 addrspace(1)* %452)
  %454 = icmp ule i64 %453, 1
  store i1 %454, i1* %81
  %455 = load i1, i1* %81, !dbg !45
  %456 = zext i1 %455 to i64, !dbg !45
  %457 = or i64 %456, 72057594037927936, !dbg !45
  %458 = getelementptr i8, i8 addrspace(1)* null, i64 %457, !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %458), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !45
  %459 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %461 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %459, i8 addrspace(1)* %460)
  %462 = icmp eq i64 %461, 2
  store i1 %462, i1* %83
  %463 = load i1, i1* %83, !dbg !46
  %464 = zext i1 %463 to i64, !dbg !46
  %465 = or i64 %464, 72057594037927936, !dbg !46
  %466 = getelementptr i8, i8 addrspace(1)* null, i64 %465, !dbg !46
  call void @_Bb02ioprintln(i8 addrspace(1)* %466), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !46
  %467 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %468 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %469 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %467, i8 addrspace(1)* %468)
  %470 = icmp sge i64 %469, 1
  store i1 %470, i1* %85
  %471 = load i1, i1* %85, !dbg !47
  %472 = zext i1 %471 to i64, !dbg !47
  %473 = or i64 %472, 72057594037927936, !dbg !47
  %474 = getelementptr i8, i8 addrspace(1)* null, i64 %473, !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %474), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %86, !dbg !47
  %475 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %476 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %477 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %475, i8 addrspace(1)* %476)
  %478 = icmp eq i64 %477, 0
  store i1 %478, i1* %87
  %479 = load i1, i1* %87, !dbg !48
  %480 = zext i1 %479 to i64, !dbg !48
  %481 = or i64 %480, 72057594037927936, !dbg !48
  %482 = getelementptr i8, i8 addrspace(1)* null, i64 %481, !dbg !48
  call void @_Bb02ioprintln(i8 addrspace(1)* %482), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %88, !dbg !48
  %483 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %484 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %485 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %483, i8 addrspace(1)* %484)
  %486 = icmp ule i64 %485, 1
  store i1 %486, i1* %89
  %487 = load i1, i1* %89, !dbg !49
  %488 = zext i1 %487 to i64, !dbg !49
  %489 = or i64 %488, 72057594037927936, !dbg !49
  %490 = getelementptr i8, i8 addrspace(1)* null, i64 %489, !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %490), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %90, !dbg !49
  %491 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %492 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %493 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %491, i8 addrspace(1)* %492)
  %494 = icmp eq i64 %493, 2
  store i1 %494, i1* %91
  %495 = load i1, i1* %91, !dbg !50
  %496 = zext i1 %495 to i64, !dbg !50
  %497 = or i64 %496, 72057594037927936, !dbg !50
  %498 = getelementptr i8, i8 addrspace(1)* null, i64 %497, !dbg !50
  call void @_Bb02ioprintln(i8 addrspace(1)* %498), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %92, !dbg !50
  %499 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %500 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %501 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %499, i8 addrspace(1)* %500)
  %502 = icmp sge i64 %501, 1
  store i1 %502, i1* %93
  %503 = load i1, i1* %93, !dbg !51
  %504 = zext i1 %503 to i64, !dbg !51
  %505 = or i64 %504, 72057594037927936, !dbg !51
  %506 = getelementptr i8, i8 addrspace(1)* null, i64 %505, !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %506), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %94, !dbg !51
  ret void
507:
  %508 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %508)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
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
