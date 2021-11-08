@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_array_int_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %97, label %524, label %98
98:
  %99 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %100 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %99, i64 0, i32 3
  %101 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %100, align 8
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %103 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 0
  store i8 addrspace(1)* %102, i8 addrspace(1)* addrspace(1)* %103
  %104 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %105 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 1
  store i8 addrspace(1)* %104, i8 addrspace(1)* addrspace(1)* %105
  %106 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %107 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 2
  store i8 addrspace(1)* %106, i8 addrspace(1)* addrspace(1)* %107
  %108 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %99, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %108
  %109 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %99 to i8 addrspace(1)*
  %110 = getelementptr i8, i8 addrspace(1)* %109, i64 1297036692682702852
  store i8 addrspace(1)* %110, i8 addrspace(1)** %1
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %111, i8 addrspace(1)** %a
  %112 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %113 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %112, i64 0, i32 3
  %114 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %113, align 8
  %115 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %116 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 0
  store i8 addrspace(1)* %115, i8 addrspace(1)* addrspace(1)* %116
  %117 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  %118 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 1
  store i8 addrspace(1)* %117, i8 addrspace(1)* addrspace(1)* %118
  %119 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  %120 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %114, i64 0, i64 2
  store i8 addrspace(1)* %119, i8 addrspace(1)* addrspace(1)* %120
  %121 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %112, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %121
  %122 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %112 to i8 addrspace(1)*
  %123 = getelementptr i8, i8 addrspace(1)* %122, i64 1297036692682702852
  store i8 addrspace(1)* %123, i8 addrspace(1)** %2
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %124, i8 addrspace(1)** %b
  %125 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %126 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %125, i64 0, i32 3
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %129 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 0
  store i8 addrspace(1)* %128, i8 addrspace(1)* addrspace(1)* %129
  %130 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %131 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 1
  store i8 addrspace(1)* %130, i8 addrspace(1)* addrspace(1)* %131
  %132 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %133 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 2
  store i8 addrspace(1)* %132, i8 addrspace(1)* addrspace(1)* %133
  %134 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %125, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %134
  %135 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %125 to i8 addrspace(1)*
  %136 = getelementptr i8, i8 addrspace(1)* %135, i64 1297036692682702852
  store i8 addrspace(1)* %136, i8 addrspace(1)** %3
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %137, i8 addrspace(1)** %c
  %138 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 4)
  %139 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %138, i64 0, i32 3
  %140 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %139, align 8
  %141 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %142 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %140, i64 0, i64 0
  store i8 addrspace(1)* %141, i8 addrspace(1)* addrspace(1)* %142
  %143 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %144 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %140, i64 0, i64 1
  store i8 addrspace(1)* %143, i8 addrspace(1)* addrspace(1)* %144
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %146 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %140, i64 0, i64 2
  store i8 addrspace(1)* %145, i8 addrspace(1)* addrspace(1)* %146
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1)
  %148 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %140, i64 0, i64 3
  store i8 addrspace(1)* %147, i8 addrspace(1)* addrspace(1)* %148
  %149 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %138, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %149
  %150 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %138 to i8 addrspace(1)*
  %151 = getelementptr i8, i8 addrspace(1)* %150, i64 1297036692682702852
  store i8 addrspace(1)* %151, i8 addrspace(1)** %4
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %152, i8 addrspace(1)** %d
  %153 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 4)
  %154 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %153, i64 0, i32 3
  %155 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %154, align 8
  %156 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %157 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %155, i64 0, i64 0
  store i8 addrspace(1)* %156, i8 addrspace(1)* addrspace(1)* %157
  %158 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %159 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %155, i64 0, i64 1
  store i8 addrspace(1)* %158, i8 addrspace(1)* addrspace(1)* %159
  %160 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %161 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %155, i64 0, i64 2
  store i8 addrspace(1)* %160, i8 addrspace(1)* addrspace(1)* %161
  %162 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  %163 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %155, i64 0, i64 3
  store i8 addrspace(1)* %162, i8 addrspace(1)* addrspace(1)* %163
  %164 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %153, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %164
  %165 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %153 to i8 addrspace(1)*
  %166 = getelementptr i8, i8 addrspace(1)* %165, i64 1297036692682702852
  store i8 addrspace(1)* %166, i8 addrspace(1)** %5
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %167, i8 addrspace(1)** %e
  %168 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %169 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %168 to i8 addrspace(1)*
  %170 = getelementptr i8, i8 addrspace(1)* %169, i64 1297036692682702852
  store i8 addrspace(1)* %170, i8 addrspace(1)** %6
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %171, i8 addrspace(1)** %f
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %174 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %172, i8 addrspace(1)* %173)
  %175 = icmp eq i64 %174, 0
  store i1 %175, i1* %7
  %176 = load i1, i1* %7, !dbg !8
  %177 = zext i1 %176 to i64, !dbg !8
  %178 = or i64 %177, 72057594037927936, !dbg !8
  %179 = getelementptr i8, i8 addrspace(1)* null, i64 %178, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %179), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %182 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %180, i8 addrspace(1)* %181)
  %183 = icmp ule i64 %182, 1
  store i1 %183, i1* %9
  %184 = load i1, i1* %9, !dbg !9
  %185 = zext i1 %184 to i64, !dbg !9
  %186 = or i64 %185, 72057594037927936, !dbg !9
  %187 = getelementptr i8, i8 addrspace(1)* null, i64 %186, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %187), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !9
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %190 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %188, i8 addrspace(1)* %189)
  %191 = icmp eq i64 %190, 2
  store i1 %191, i1* %11
  %192 = load i1, i1* %11, !dbg !10
  %193 = zext i1 %192 to i64, !dbg !10
  %194 = or i64 %193, 72057594037927936, !dbg !10
  %195 = getelementptr i8, i8 addrspace(1)* null, i64 %194, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %195), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !10
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %198 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %196, i8 addrspace(1)* %197)
  %199 = icmp sge i64 %198, 1
  store i1 %199, i1* %13
  %200 = load i1, i1* %13, !dbg !11
  %201 = zext i1 %200 to i64, !dbg !11
  %202 = or i64 %201, 72057594037927936, !dbg !11
  %203 = getelementptr i8, i8 addrspace(1)* null, i64 %202, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %203), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !11
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %206 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %204, i8 addrspace(1)* %205)
  %207 = icmp eq i64 %206, 0
  store i1 %207, i1* %15
  %208 = load i1, i1* %15, !dbg !12
  %209 = zext i1 %208 to i64, !dbg !12
  %210 = or i64 %209, 72057594037927936, !dbg !12
  %211 = getelementptr i8, i8 addrspace(1)* null, i64 %210, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %211), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !12
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %214 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %212, i8 addrspace(1)* %213)
  %215 = icmp ule i64 %214, 1
  store i1 %215, i1* %17
  %216 = load i1, i1* %17, !dbg !13
  %217 = zext i1 %216 to i64, !dbg !13
  %218 = or i64 %217, 72057594037927936, !dbg !13
  %219 = getelementptr i8, i8 addrspace(1)* null, i64 %218, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %219), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !13
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %222 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %220, i8 addrspace(1)* %221)
  %223 = icmp eq i64 %222, 2
  store i1 %223, i1* %19
  %224 = load i1, i1* %19, !dbg !14
  %225 = zext i1 %224 to i64, !dbg !14
  %226 = or i64 %225, 72057594037927936, !dbg !14
  %227 = getelementptr i8, i8 addrspace(1)* null, i64 %226, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %227), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %230 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %228, i8 addrspace(1)* %229)
  %231 = icmp sge i64 %230, 1
  store i1 %231, i1* %21
  %232 = load i1, i1* %21, !dbg !15
  %233 = zext i1 %232 to i64, !dbg !15
  %234 = or i64 %233, 72057594037927936, !dbg !15
  %235 = getelementptr i8, i8 addrspace(1)* null, i64 %234, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %235), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !15
  %236 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %238 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %236, i8 addrspace(1)* %237)
  %239 = icmp eq i64 %238, 0
  store i1 %239, i1* %23
  %240 = load i1, i1* %23, !dbg !16
  %241 = zext i1 %240 to i64, !dbg !16
  %242 = or i64 %241, 72057594037927936, !dbg !16
  %243 = getelementptr i8, i8 addrspace(1)* null, i64 %242, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %243), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !16
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %245 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %246 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %244, i8 addrspace(1)* %245)
  %247 = icmp ule i64 %246, 1
  store i1 %247, i1* %25
  %248 = load i1, i1* %25, !dbg !17
  %249 = zext i1 %248 to i64, !dbg !17
  %250 = or i64 %249, 72057594037927936, !dbg !17
  %251 = getelementptr i8, i8 addrspace(1)* null, i64 %250, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %251), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !17
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %254 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %252, i8 addrspace(1)* %253)
  %255 = icmp eq i64 %254, 2
  store i1 %255, i1* %27
  %256 = load i1, i1* %27, !dbg !18
  %257 = zext i1 %256 to i64, !dbg !18
  %258 = or i64 %257, 72057594037927936, !dbg !18
  %259 = getelementptr i8, i8 addrspace(1)* null, i64 %258, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %259), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !18
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %262 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %260, i8 addrspace(1)* %261)
  %263 = icmp sge i64 %262, 1
  store i1 %263, i1* %29
  %264 = load i1, i1* %29, !dbg !19
  %265 = zext i1 %264 to i64, !dbg !19
  %266 = or i64 %265, 72057594037927936, !dbg !19
  %267 = getelementptr i8, i8 addrspace(1)* null, i64 %266, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %267), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !19
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %269 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %270 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %268, i8 addrspace(1)* %269)
  %271 = icmp eq i64 %270, 0
  store i1 %271, i1* %31
  %272 = load i1, i1* %31, !dbg !20
  %273 = zext i1 %272 to i64, !dbg !20
  %274 = or i64 %273, 72057594037927936, !dbg !20
  %275 = getelementptr i8, i8 addrspace(1)* null, i64 %274, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %275), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !20
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %278 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %276, i8 addrspace(1)* %277)
  %279 = icmp ule i64 %278, 1
  store i1 %279, i1* %33
  %280 = load i1, i1* %33, !dbg !21
  %281 = zext i1 %280 to i64, !dbg !21
  %282 = or i64 %281, 72057594037927936, !dbg !21
  %283 = getelementptr i8, i8 addrspace(1)* null, i64 %282, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %283), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !21
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %285 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %286 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %284, i8 addrspace(1)* %285)
  %287 = icmp eq i64 %286, 2
  store i1 %287, i1* %35
  %288 = load i1, i1* %35, !dbg !22
  %289 = zext i1 %288 to i64, !dbg !22
  %290 = or i64 %289, 72057594037927936, !dbg !22
  %291 = getelementptr i8, i8 addrspace(1)* null, i64 %290, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %291), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !22
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %293 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %294 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %292, i8 addrspace(1)* %293)
  %295 = icmp sge i64 %294, 1
  store i1 %295, i1* %37
  %296 = load i1, i1* %37, !dbg !23
  %297 = zext i1 %296 to i64, !dbg !23
  %298 = or i64 %297, 72057594037927936, !dbg !23
  %299 = getelementptr i8, i8 addrspace(1)* null, i64 %298, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %299), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !23
  %300 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %301 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %302 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %300, i8 addrspace(1)* %301)
  %303 = icmp eq i64 %302, 0
  store i1 %303, i1* %39
  %304 = load i1, i1* %39, !dbg !24
  %305 = zext i1 %304 to i64, !dbg !24
  %306 = or i64 %305, 72057594037927936, !dbg !24
  %307 = getelementptr i8, i8 addrspace(1)* null, i64 %306, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %307), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !24
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %309 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %310 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %308, i8 addrspace(1)* %309)
  %311 = icmp ule i64 %310, 1
  store i1 %311, i1* %41
  %312 = load i1, i1* %41, !dbg !25
  %313 = zext i1 %312 to i64, !dbg !25
  %314 = or i64 %313, 72057594037927936, !dbg !25
  %315 = getelementptr i8, i8 addrspace(1)* null, i64 %314, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %315), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !25
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %317 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %318 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %316, i8 addrspace(1)* %317)
  %319 = icmp eq i64 %318, 2
  store i1 %319, i1* %43
  %320 = load i1, i1* %43, !dbg !26
  %321 = zext i1 %320 to i64, !dbg !26
  %322 = or i64 %321, 72057594037927936, !dbg !26
  %323 = getelementptr i8, i8 addrspace(1)* null, i64 %322, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %323), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !26
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %325 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %326 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %324, i8 addrspace(1)* %325)
  %327 = icmp sge i64 %326, 1
  store i1 %327, i1* %45
  %328 = load i1, i1* %45, !dbg !27
  %329 = zext i1 %328 to i64, !dbg !27
  %330 = or i64 %329, 72057594037927936, !dbg !27
  %331 = getelementptr i8, i8 addrspace(1)* null, i64 %330, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %331), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !27
  %332 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %334 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %332, i8 addrspace(1)* %333)
  %335 = icmp eq i64 %334, 0
  store i1 %335, i1* %47
  %336 = load i1, i1* %47, !dbg !28
  %337 = zext i1 %336 to i64, !dbg !28
  %338 = or i64 %337, 72057594037927936, !dbg !28
  %339 = getelementptr i8, i8 addrspace(1)* null, i64 %338, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %339), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !28
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %342 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %340, i8 addrspace(1)* %341)
  %343 = icmp ule i64 %342, 1
  store i1 %343, i1* %49
  %344 = load i1, i1* %49, !dbg !29
  %345 = zext i1 %344 to i64, !dbg !29
  %346 = or i64 %345, 72057594037927936, !dbg !29
  %347 = getelementptr i8, i8 addrspace(1)* null, i64 %346, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %347), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !29
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %349 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %350 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %348, i8 addrspace(1)* %349)
  %351 = icmp eq i64 %350, 2
  store i1 %351, i1* %51
  %352 = load i1, i1* %51, !dbg !30
  %353 = zext i1 %352 to i64, !dbg !30
  %354 = or i64 %353, 72057594037927936, !dbg !30
  %355 = getelementptr i8, i8 addrspace(1)* null, i64 %354, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %355), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !30
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %357 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %358 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %356, i8 addrspace(1)* %357)
  %359 = icmp sge i64 %358, 1
  store i1 %359, i1* %53
  %360 = load i1, i1* %53, !dbg !31
  %361 = zext i1 %360 to i64, !dbg !31
  %362 = or i64 %361, 72057594037927936, !dbg !31
  %363 = getelementptr i8, i8 addrspace(1)* null, i64 %362, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %363), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !31
  %364 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %365 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %366 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %364, i8 addrspace(1)* %365)
  %367 = icmp eq i64 %366, 0
  store i1 %367, i1* %55
  %368 = load i1, i1* %55, !dbg !32
  %369 = zext i1 %368 to i64, !dbg !32
  %370 = or i64 %369, 72057594037927936, !dbg !32
  %371 = getelementptr i8, i8 addrspace(1)* null, i64 %370, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %371), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !32
  %372 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %373 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %374 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %372, i8 addrspace(1)* %373)
  %375 = icmp ule i64 %374, 1
  store i1 %375, i1* %57
  %376 = load i1, i1* %57, !dbg !33
  %377 = zext i1 %376 to i64, !dbg !33
  %378 = or i64 %377, 72057594037927936, !dbg !33
  %379 = getelementptr i8, i8 addrspace(1)* null, i64 %378, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %379), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !33
  %380 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %381 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %382 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %380, i8 addrspace(1)* %381)
  %383 = icmp eq i64 %382, 2
  store i1 %383, i1* %59
  %384 = load i1, i1* %59, !dbg !34
  %385 = zext i1 %384 to i64, !dbg !34
  %386 = or i64 %385, 72057594037927936, !dbg !34
  %387 = getelementptr i8, i8 addrspace(1)* null, i64 %386, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %387), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !34
  %388 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %389 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %390 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %388, i8 addrspace(1)* %389)
  %391 = icmp sge i64 %390, 1
  store i1 %391, i1* %61
  %392 = load i1, i1* %61, !dbg !35
  %393 = zext i1 %392 to i64, !dbg !35
  %394 = or i64 %393, 72057594037927936, !dbg !35
  %395 = getelementptr i8, i8 addrspace(1)* null, i64 %394, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %395), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !35
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %397 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %398 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %396, i8 addrspace(1)* %397)
  %399 = icmp eq i64 %398, 0
  store i1 %399, i1* %63
  %400 = load i1, i1* %63, !dbg !36
  %401 = zext i1 %400 to i64, !dbg !36
  %402 = or i64 %401, 72057594037927936, !dbg !36
  %403 = getelementptr i8, i8 addrspace(1)* null, i64 %402, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %403), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %64, !dbg !36
  %404 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %405 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %406 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %404, i8 addrspace(1)* %405)
  %407 = icmp ule i64 %406, 1
  store i1 %407, i1* %65
  %408 = load i1, i1* %65, !dbg !37
  %409 = zext i1 %408 to i64, !dbg !37
  %410 = or i64 %409, 72057594037927936, !dbg !37
  %411 = getelementptr i8, i8 addrspace(1)* null, i64 %410, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %411), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !37
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %413 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %414 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %412, i8 addrspace(1)* %413)
  %415 = icmp eq i64 %414, 2
  store i1 %415, i1* %67
  %416 = load i1, i1* %67, !dbg !38
  %417 = zext i1 %416 to i64, !dbg !38
  %418 = or i64 %417, 72057594037927936, !dbg !38
  %419 = getelementptr i8, i8 addrspace(1)* null, i64 %418, !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %419), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %68, !dbg !38
  %420 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %421 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %422 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %420, i8 addrspace(1)* %421)
  %423 = icmp sge i64 %422, 1
  store i1 %423, i1* %69
  %424 = load i1, i1* %69, !dbg !39
  %425 = zext i1 %424 to i64, !dbg !39
  %426 = or i64 %425, 72057594037927936, !dbg !39
  %427 = getelementptr i8, i8 addrspace(1)* null, i64 %426, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %427), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %70, !dbg !39
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %429 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %430 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %428, i8 addrspace(1)* %429)
  %431 = icmp eq i64 %430, 0
  store i1 %431, i1* %71
  %432 = load i1, i1* %71, !dbg !40
  %433 = zext i1 %432 to i64, !dbg !40
  %434 = or i64 %433, 72057594037927936, !dbg !40
  %435 = getelementptr i8, i8 addrspace(1)* null, i64 %434, !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %435), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !40
  %436 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %437 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %438 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %436, i8 addrspace(1)* %437)
  %439 = icmp ule i64 %438, 1
  store i1 %439, i1* %73
  %440 = load i1, i1* %73, !dbg !41
  %441 = zext i1 %440 to i64, !dbg !41
  %442 = or i64 %441, 72057594037927936, !dbg !41
  %443 = getelementptr i8, i8 addrspace(1)* null, i64 %442, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %443), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %74, !dbg !41
  %444 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %445 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %446 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %444, i8 addrspace(1)* %445)
  %447 = icmp eq i64 %446, 2
  store i1 %447, i1* %75
  %448 = load i1, i1* %75, !dbg !42
  %449 = zext i1 %448 to i64, !dbg !42
  %450 = or i64 %449, 72057594037927936, !dbg !42
  %451 = getelementptr i8, i8 addrspace(1)* null, i64 %450, !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %451), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %76, !dbg !42
  %452 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %453 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %454 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %452, i8 addrspace(1)* %453)
  %455 = icmp sge i64 %454, 1
  store i1 %455, i1* %77
  %456 = load i1, i1* %77, !dbg !43
  %457 = zext i1 %456 to i64, !dbg !43
  %458 = or i64 %457, 72057594037927936, !dbg !43
  %459 = getelementptr i8, i8 addrspace(1)* null, i64 %458, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %459), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !43
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %461 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %462 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %460, i8 addrspace(1)* %461)
  %463 = icmp eq i64 %462, 0
  store i1 %463, i1* %79
  %464 = load i1, i1* %79, !dbg !44
  %465 = zext i1 %464 to i64, !dbg !44
  %466 = or i64 %465, 72057594037927936, !dbg !44
  %467 = getelementptr i8, i8 addrspace(1)* null, i64 %466, !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %467), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %80, !dbg !44
  %468 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %469 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %470 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %468, i8 addrspace(1)* %469)
  %471 = icmp ule i64 %470, 1
  store i1 %471, i1* %81
  %472 = load i1, i1* %81, !dbg !45
  %473 = zext i1 %472 to i64, !dbg !45
  %474 = or i64 %473, 72057594037927936, !dbg !45
  %475 = getelementptr i8, i8 addrspace(1)* null, i64 %474, !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %475), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !45
  %476 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %477 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %478 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %476, i8 addrspace(1)* %477)
  %479 = icmp eq i64 %478, 2
  store i1 %479, i1* %83
  %480 = load i1, i1* %83, !dbg !46
  %481 = zext i1 %480 to i64, !dbg !46
  %482 = or i64 %481, 72057594037927936, !dbg !46
  %483 = getelementptr i8, i8 addrspace(1)* null, i64 %482, !dbg !46
  call void @_Bb02ioprintln(i8 addrspace(1)* %483), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !46
  %484 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %485 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %486 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %484, i8 addrspace(1)* %485)
  %487 = icmp sge i64 %486, 1
  store i1 %487, i1* %85
  %488 = load i1, i1* %85, !dbg !47
  %489 = zext i1 %488 to i64, !dbg !47
  %490 = or i64 %489, 72057594037927936, !dbg !47
  %491 = getelementptr i8, i8 addrspace(1)* null, i64 %490, !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %491), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %86, !dbg !47
  %492 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %493 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %494 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %492, i8 addrspace(1)* %493)
  %495 = icmp eq i64 %494, 0
  store i1 %495, i1* %87
  %496 = load i1, i1* %87, !dbg !48
  %497 = zext i1 %496 to i64, !dbg !48
  %498 = or i64 %497, 72057594037927936, !dbg !48
  %499 = getelementptr i8, i8 addrspace(1)* null, i64 %498, !dbg !48
  call void @_Bb02ioprintln(i8 addrspace(1)* %499), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %88, !dbg !48
  %500 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %501 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %502 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %500, i8 addrspace(1)* %501)
  %503 = icmp ule i64 %502, 1
  store i1 %503, i1* %89
  %504 = load i1, i1* %89, !dbg !49
  %505 = zext i1 %504 to i64, !dbg !49
  %506 = or i64 %505, 72057594037927936, !dbg !49
  %507 = getelementptr i8, i8 addrspace(1)* null, i64 %506, !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %507), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %90, !dbg !49
  %508 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %509 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %510 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %508, i8 addrspace(1)* %509)
  %511 = icmp eq i64 %510, 2
  store i1 %511, i1* %91
  %512 = load i1, i1* %91, !dbg !50
  %513 = zext i1 %512 to i64, !dbg !50
  %514 = or i64 %513, 72057594037927936, !dbg !50
  %515 = getelementptr i8, i8 addrspace(1)* null, i64 %514, !dbg !50
  call void @_Bb02ioprintln(i8 addrspace(1)* %515), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %92, !dbg !50
  %516 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %517 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %518 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %516, i8 addrspace(1)* %517)
  %519 = icmp sge i64 %518, 1
  store i1 %519, i1* %93
  %520 = load i1, i1* %93, !dbg !51
  %521 = zext i1 %520 to i64, !dbg !51
  %522 = or i64 %521, 72057594037927936, !dbg !51
  %523 = getelementptr i8, i8 addrspace(1)* null, i64 %522, !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %523), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %94, !dbg !51
  ret void
524:
  %525 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %525)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/order1-v.bal", directory:"")
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
