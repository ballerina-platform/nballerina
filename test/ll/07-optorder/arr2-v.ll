@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_array_float_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
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
  br i1 %46, label %245, label %47
47:
  %48 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %49 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %50 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49, align 8
  %51 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 0
  store i8 addrspace(1)* %51, i8 addrspace(1)* addrspace(1)* %52
  %53 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  %54 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 1
  store i8 addrspace(1)* %53, i8 addrspace(1)* addrspace(1)* %54
  %55 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  %56 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 2
  store i8 addrspace(1)* %55, i8 addrspace(1)* addrspace(1)* %56
  %57 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %57
  %58 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48 to i8 addrspace(1)*
  %59 = getelementptr i8, i8 addrspace(1)* %58, i64 1297036692682702852
  store i8 addrspace(1)* %59, i8 addrspace(1)** %1
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %60, i8 addrspace(1)** %a
  %61 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 3)
  %62 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 3
  %63 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %62, align 8
  %64 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %65 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 0
  store i8 addrspace(1)* %64, i8 addrspace(1)* addrspace(1)* %65
  %66 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %66
  %67 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  %68 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 2
  store i8 addrspace(1)* %67, i8 addrspace(1)* addrspace(1)* %68
  %69 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %69
  %70 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61 to i8 addrspace(1)*
  %71 = getelementptr i8, i8 addrspace(1)* %70, i64 1297036692682702852
  store i8 addrspace(1)* %71, i8 addrspace(1)** %2
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %72, i8 addrspace(1)** %b
  %73 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 3)
  %74 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 3
  %75 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %74, align 8
  %76 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %77 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 0
  store i8 addrspace(1)* %76, i8 addrspace(1)* addrspace(1)* %77
  %78 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %78
  %79 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.7)
  %80 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 2
  store i8 addrspace(1)* %79, i8 addrspace(1)* addrspace(1)* %80
  %81 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %81
  %82 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73 to i8 addrspace(1)*
  %83 = getelementptr i8, i8 addrspace(1)* %82, i64 1297036692682702852
  store i8 addrspace(1)* %83, i8 addrspace(1)** %3
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %84, i8 addrspace(1)** %c
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %87 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %85, i8 addrspace(1)* %86)
  %88 = icmp eq i64 %87, 0
  store i1 %88, i1* %4
  %89 = load i1, i1* %4, !dbg !8
  %90 = zext i1 %89 to i64, !dbg !8
  %91 = or i64 %90, 72057594037927936, !dbg !8
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %92), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %95 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %93, i8 addrspace(1)* %94)
  %96 = icmp ule i64 %95, 1
  store i1 %96, i1* %6
  %97 = load i1, i1* %6, !dbg !9
  %98 = zext i1 %97 to i64, !dbg !9
  %99 = or i64 %98, 72057594037927936, !dbg !9
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %100), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %103 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %101, i8 addrspace(1)* %102)
  %104 = icmp eq i64 %103, 2
  store i1 %104, i1* %8
  %105 = load i1, i1* %8, !dbg !10
  %106 = zext i1 %105 to i64, !dbg !10
  %107 = or i64 %106, 72057594037927936, !dbg !10
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %108), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !10
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %111 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %109, i8 addrspace(1)* %110)
  %112 = icmp sge i64 %111, 1
  store i1 %112, i1* %10
  %113 = load i1, i1* %10, !dbg !11
  %114 = zext i1 %113 to i64, !dbg !11
  %115 = or i64 %114, 72057594037927936, !dbg !11
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !11
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %119 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %117, i8 addrspace(1)* %118)
  %120 = icmp eq i64 %119, 0
  store i1 %120, i1* %12
  %121 = load i1, i1* %12, !dbg !12
  %122 = zext i1 %121 to i64, !dbg !12
  %123 = or i64 %122, 72057594037927936, !dbg !12
  %124 = getelementptr i8, i8 addrspace(1)* null, i64 %123, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %124), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %127 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  %128 = icmp ule i64 %127, 1
  store i1 %128, i1* %14
  %129 = load i1, i1* %14, !dbg !13
  %130 = zext i1 %129 to i64, !dbg !13
  %131 = or i64 %130, 72057594037927936, !dbg !13
  %132 = getelementptr i8, i8 addrspace(1)* null, i64 %131, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %132), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %135 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %133, i8 addrspace(1)* %134)
  %136 = icmp eq i64 %135, 2
  store i1 %136, i1* %16
  %137 = load i1, i1* %16, !dbg !14
  %138 = zext i1 %137 to i64, !dbg !14
  %139 = or i64 %138, 72057594037927936, !dbg !14
  %140 = getelementptr i8, i8 addrspace(1)* null, i64 %139, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %140), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %143 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %141, i8 addrspace(1)* %142)
  %144 = icmp sge i64 %143, 1
  store i1 %144, i1* %18
  %145 = load i1, i1* %18, !dbg !15
  %146 = zext i1 %145 to i64, !dbg !15
  %147 = or i64 %146, 72057594037927936, !dbg !15
  %148 = getelementptr i8, i8 addrspace(1)* null, i64 %147, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %148), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %151 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %149, i8 addrspace(1)* %150)
  %152 = icmp eq i64 %151, 0
  store i1 %152, i1* %20
  %153 = load i1, i1* %20, !dbg !16
  %154 = zext i1 %153 to i64, !dbg !16
  %155 = or i64 %154, 72057594037927936, !dbg !16
  %156 = getelementptr i8, i8 addrspace(1)* null, i64 %155, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %156), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %159 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %157, i8 addrspace(1)* %158)
  %160 = icmp ule i64 %159, 1
  store i1 %160, i1* %22
  %161 = load i1, i1* %22, !dbg !17
  %162 = zext i1 %161 to i64, !dbg !17
  %163 = or i64 %162, 72057594037927936, !dbg !17
  %164 = getelementptr i8, i8 addrspace(1)* null, i64 %163, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %164), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %167 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %165, i8 addrspace(1)* %166)
  %168 = icmp eq i64 %167, 2
  store i1 %168, i1* %24
  %169 = load i1, i1* %24, !dbg !18
  %170 = zext i1 %169 to i64, !dbg !18
  %171 = or i64 %170, 72057594037927936, !dbg !18
  %172 = getelementptr i8, i8 addrspace(1)* null, i64 %171, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %172), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %175 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %173, i8 addrspace(1)* %174)
  %176 = icmp sge i64 %175, 1
  store i1 %176, i1* %26
  %177 = load i1, i1* %26, !dbg !19
  %178 = zext i1 %177 to i64, !dbg !19
  %179 = or i64 %178, 72057594037927936, !dbg !19
  %180 = getelementptr i8, i8 addrspace(1)* null, i64 %179, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %180), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !19
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %183 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %181, i8 addrspace(1)* %182)
  %184 = icmp eq i64 %183, 0
  store i1 %184, i1* %28
  %185 = load i1, i1* %28, !dbg !20
  %186 = zext i1 %185 to i64, !dbg !20
  %187 = or i64 %186, 72057594037927936, !dbg !20
  %188 = getelementptr i8, i8 addrspace(1)* null, i64 %187, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %188), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !20
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %191 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %189, i8 addrspace(1)* %190)
  %192 = icmp ule i64 %191, 1
  store i1 %192, i1* %30
  %193 = load i1, i1* %30, !dbg !21
  %194 = zext i1 %193 to i64, !dbg !21
  %195 = or i64 %194, 72057594037927936, !dbg !21
  %196 = getelementptr i8, i8 addrspace(1)* null, i64 %195, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %196), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !21
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %199 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %197, i8 addrspace(1)* %198)
  %200 = icmp eq i64 %199, 2
  store i1 %200, i1* %32
  %201 = load i1, i1* %32, !dbg !22
  %202 = zext i1 %201 to i64, !dbg !22
  %203 = or i64 %202, 72057594037927936, !dbg !22
  %204 = getelementptr i8, i8 addrspace(1)* null, i64 %203, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %204), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !22
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %207 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %205, i8 addrspace(1)* %206)
  %208 = icmp sge i64 %207, 1
  store i1 %208, i1* %34
  %209 = load i1, i1* %34, !dbg !23
  %210 = zext i1 %209 to i64, !dbg !23
  %211 = or i64 %210, 72057594037927936, !dbg !23
  %212 = getelementptr i8, i8 addrspace(1)* null, i64 %211, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %212), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !23
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %215 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %213, i8 addrspace(1)* %214)
  %216 = icmp eq i64 %215, 0
  store i1 %216, i1* %36
  %217 = load i1, i1* %36, !dbg !24
  %218 = zext i1 %217 to i64, !dbg !24
  %219 = or i64 %218, 72057594037927936, !dbg !24
  %220 = getelementptr i8, i8 addrspace(1)* null, i64 %219, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %220), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !24
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %223 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %221, i8 addrspace(1)* %222)
  %224 = icmp ule i64 %223, 1
  store i1 %224, i1* %38
  %225 = load i1, i1* %38, !dbg !25
  %226 = zext i1 %225 to i64, !dbg !25
  %227 = or i64 %226, 72057594037927936, !dbg !25
  %228 = getelementptr i8, i8 addrspace(1)* null, i64 %227, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %228), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !25
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %231 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %229, i8 addrspace(1)* %230)
  %232 = icmp eq i64 %231, 2
  store i1 %232, i1* %40
  %233 = load i1, i1* %40, !dbg !26
  %234 = zext i1 %233 to i64, !dbg !26
  %235 = or i64 %234, 72057594037927936, !dbg !26
  %236 = getelementptr i8, i8 addrspace(1)* null, i64 %235, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %236), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !26
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %238 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %239 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %237, i8 addrspace(1)* %238)
  %240 = icmp sge i64 %239, 1
  store i1 %240, i1* %42
  %241 = load i1, i1* %42, !dbg !27
  %242 = zext i1 %241 to i64, !dbg !27
  %243 = or i64 %242, 72057594037927936, !dbg !27
  %244 = getelementptr i8, i8 addrspace(1)* null, i64 %243, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %244), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !27
  ret void
245:
  %246 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %246)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 1, scope: !5)
!9 = !DILocation(line: 9, column: 1, scope: !5)
!10 = !DILocation(line: 10, column: 1, scope: !5)
!11 = !DILocation(line: 11, column: 1, scope: !5)
!12 = !DILocation(line: 13, column: 1, scope: !5)
!13 = !DILocation(line: 14, column: 1, scope: !5)
!14 = !DILocation(line: 15, column: 1, scope: !5)
!15 = !DILocation(line: 16, column: 1, scope: !5)
!16 = !DILocation(line: 18, column: 1, scope: !5)
!17 = !DILocation(line: 19, column: 1, scope: !5)
!18 = !DILocation(line: 20, column: 1, scope: !5)
!19 = !DILocation(line: 21, column: 1, scope: !5)
!20 = !DILocation(line: 23, column: 1, scope: !5)
!21 = !DILocation(line: 24, column: 1, scope: !5)
!22 = !DILocation(line: 25, column: 1, scope: !5)
!23 = !DILocation(line: 26, column: 1, scope: !5)
!24 = !DILocation(line: 28, column: 1, scope: !5)
!25 = !DILocation(line: 29, column: 1, scope: !5)
!26 = !DILocation(line: 30, column: 1, scope: !5)
!27 = !DILocation(line: 31, column: 1, scope: !5)
