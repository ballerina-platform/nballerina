@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_array_float_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
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
  br i1 %46, label %257, label %47
47:
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %49 = bitcast i8 addrspace(1)* %48 to [3 x i8 addrspace(1)*] addrspace(1)*
  %50 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %51 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %50, i8 addrspace(1)* addrspace(1)* %51
  %52 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  %53 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 1
  store i8 addrspace(1)* %52, i8 addrspace(1)* addrspace(1)* %53
  %54 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  %55 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 2
  store i8 addrspace(1)* %54, i8 addrspace(1)* addrspace(1)* %55
  %56 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %49 to [0 x i8 addrspace(1)*] addrspace(1)*
  %57 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %58 = bitcast i8 addrspace(1)* %57 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %59 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %59
  %60 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %60
  %61 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %61
  %62 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %56, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %62
  %63 = getelementptr i8, i8 addrspace(1)* %57, i64 1297036692682702852
  store i8 addrspace(1)* %63, i8 addrspace(1)** %1
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %64, i8 addrspace(1)** %a
  %65 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %66 = bitcast i8 addrspace(1)* %65 to [3 x i8 addrspace(1)*] addrspace(1)*
  %67 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %68 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %66, i64 0, i64 0
  store i8 addrspace(1)* %67, i8 addrspace(1)* addrspace(1)* %68
  %69 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %66, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %69
  %70 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  %71 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %66, i64 0, i64 2
  store i8 addrspace(1)* %70, i8 addrspace(1)* addrspace(1)* %71
  %72 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %66 to [0 x i8 addrspace(1)*] addrspace(1)*
  %73 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %74 = bitcast i8 addrspace(1)* %73 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %75 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 0
  store i64 257, i64 addrspace(1)* %75
  %76 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %76
  %77 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %77
  %78 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %72, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %78
  %79 = getelementptr i8, i8 addrspace(1)* %73, i64 1297036692682702852
  store i8 addrspace(1)* %79, i8 addrspace(1)** %2
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %80, i8 addrspace(1)** %b
  %81 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %82 = bitcast i8 addrspace(1)* %81 to [3 x i8 addrspace(1)*] addrspace(1)*
  %83 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %84 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 0
  store i8 addrspace(1)* %83, i8 addrspace(1)* addrspace(1)* %84
  %85 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %85
  %86 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.7)
  %87 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 2
  store i8 addrspace(1)* %86, i8 addrspace(1)* addrspace(1)* %87
  %88 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %82 to [0 x i8 addrspace(1)*] addrspace(1)*
  %89 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %90 = bitcast i8 addrspace(1)* %89 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %91 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 0
  store i64 257, i64 addrspace(1)* %91
  %92 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %92
  %93 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %93
  %94 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %88, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %94
  %95 = getelementptr i8, i8 addrspace(1)* %89, i64 1297036692682702852
  store i8 addrspace(1)* %95, i8 addrspace(1)** %3
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %96, i8 addrspace(1)** %c
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %99 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %97, i8 addrspace(1)* %98)
  %100 = icmp eq i64 %99, 0
  store i1 %100, i1* %4
  %101 = load i1, i1* %4, !dbg !8
  %102 = zext i1 %101 to i64, !dbg !8
  %103 = or i64 %102, 72057594037927936, !dbg !8
  %104 = getelementptr i8, i8 addrspace(1)* null, i64 %103, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %104), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %107 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp ule i64 %107, 1
  store i1 %108, i1* %6
  %109 = load i1, i1* %6, !dbg !9
  %110 = zext i1 %109 to i64, !dbg !9
  %111 = or i64 %110, 72057594037927936, !dbg !9
  %112 = getelementptr i8, i8 addrspace(1)* null, i64 %111, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %115 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %113, i8 addrspace(1)* %114)
  %116 = icmp eq i64 %115, 2
  store i1 %116, i1* %8
  %117 = load i1, i1* %8, !dbg !10
  %118 = zext i1 %117 to i64, !dbg !10
  %119 = or i64 %118, 72057594037927936, !dbg !10
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !10
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %123 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  %124 = icmp sge i64 %123, 1
  store i1 %124, i1* %10
  %125 = load i1, i1* %10, !dbg !11
  %126 = zext i1 %125 to i64, !dbg !11
  %127 = or i64 %126, 72057594037927936, !dbg !11
  %128 = getelementptr i8, i8 addrspace(1)* null, i64 %127, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %128), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !11
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %131 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %129, i8 addrspace(1)* %130)
  %132 = icmp eq i64 %131, 0
  store i1 %132, i1* %12
  %133 = load i1, i1* %12, !dbg !12
  %134 = zext i1 %133 to i64, !dbg !12
  %135 = or i64 %134, 72057594037927936, !dbg !12
  %136 = getelementptr i8, i8 addrspace(1)* null, i64 %135, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %136), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %139 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %137, i8 addrspace(1)* %138)
  %140 = icmp ule i64 %139, 1
  store i1 %140, i1* %14
  %141 = load i1, i1* %14, !dbg !13
  %142 = zext i1 %141 to i64, !dbg !13
  %143 = or i64 %142, 72057594037927936, !dbg !13
  %144 = getelementptr i8, i8 addrspace(1)* null, i64 %143, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %144), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %147 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %145, i8 addrspace(1)* %146)
  %148 = icmp eq i64 %147, 2
  store i1 %148, i1* %16
  %149 = load i1, i1* %16, !dbg !14
  %150 = zext i1 %149 to i64, !dbg !14
  %151 = or i64 %150, 72057594037927936, !dbg !14
  %152 = getelementptr i8, i8 addrspace(1)* null, i64 %151, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %152), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %155 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %153, i8 addrspace(1)* %154)
  %156 = icmp sge i64 %155, 1
  store i1 %156, i1* %18
  %157 = load i1, i1* %18, !dbg !15
  %158 = zext i1 %157 to i64, !dbg !15
  %159 = or i64 %158, 72057594037927936, !dbg !15
  %160 = getelementptr i8, i8 addrspace(1)* null, i64 %159, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %160), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %163 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %161, i8 addrspace(1)* %162)
  %164 = icmp eq i64 %163, 0
  store i1 %164, i1* %20
  %165 = load i1, i1* %20, !dbg !16
  %166 = zext i1 %165 to i64, !dbg !16
  %167 = or i64 %166, 72057594037927936, !dbg !16
  %168 = getelementptr i8, i8 addrspace(1)* null, i64 %167, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %168), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %171 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %169, i8 addrspace(1)* %170)
  %172 = icmp ule i64 %171, 1
  store i1 %172, i1* %22
  %173 = load i1, i1* %22, !dbg !17
  %174 = zext i1 %173 to i64, !dbg !17
  %175 = or i64 %174, 72057594037927936, !dbg !17
  %176 = getelementptr i8, i8 addrspace(1)* null, i64 %175, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %176), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %179 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %177, i8 addrspace(1)* %178)
  %180 = icmp eq i64 %179, 2
  store i1 %180, i1* %24
  %181 = load i1, i1* %24, !dbg !18
  %182 = zext i1 %181 to i64, !dbg !18
  %183 = or i64 %182, 72057594037927936, !dbg !18
  %184 = getelementptr i8, i8 addrspace(1)* null, i64 %183, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %184), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %187 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %185, i8 addrspace(1)* %186)
  %188 = icmp sge i64 %187, 1
  store i1 %188, i1* %26
  %189 = load i1, i1* %26, !dbg !19
  %190 = zext i1 %189 to i64, !dbg !19
  %191 = or i64 %190, 72057594037927936, !dbg !19
  %192 = getelementptr i8, i8 addrspace(1)* null, i64 %191, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %192), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !19
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %195 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %193, i8 addrspace(1)* %194)
  %196 = icmp eq i64 %195, 0
  store i1 %196, i1* %28
  %197 = load i1, i1* %28, !dbg !20
  %198 = zext i1 %197 to i64, !dbg !20
  %199 = or i64 %198, 72057594037927936, !dbg !20
  %200 = getelementptr i8, i8 addrspace(1)* null, i64 %199, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %200), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !20
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %203 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  %204 = icmp ule i64 %203, 1
  store i1 %204, i1* %30
  %205 = load i1, i1* %30, !dbg !21
  %206 = zext i1 %205 to i64, !dbg !21
  %207 = or i64 %206, 72057594037927936, !dbg !21
  %208 = getelementptr i8, i8 addrspace(1)* null, i64 %207, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %208), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !21
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %211 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %209, i8 addrspace(1)* %210)
  %212 = icmp eq i64 %211, 2
  store i1 %212, i1* %32
  %213 = load i1, i1* %32, !dbg !22
  %214 = zext i1 %213 to i64, !dbg !22
  %215 = or i64 %214, 72057594037927936, !dbg !22
  %216 = getelementptr i8, i8 addrspace(1)* null, i64 %215, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %216), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !22
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %219 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %217, i8 addrspace(1)* %218)
  %220 = icmp sge i64 %219, 1
  store i1 %220, i1* %34
  %221 = load i1, i1* %34, !dbg !23
  %222 = zext i1 %221 to i64, !dbg !23
  %223 = or i64 %222, 72057594037927936, !dbg !23
  %224 = getelementptr i8, i8 addrspace(1)* null, i64 %223, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %224), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !23
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %227 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %225, i8 addrspace(1)* %226)
  %228 = icmp eq i64 %227, 0
  store i1 %228, i1* %36
  %229 = load i1, i1* %36, !dbg !24
  %230 = zext i1 %229 to i64, !dbg !24
  %231 = or i64 %230, 72057594037927936, !dbg !24
  %232 = getelementptr i8, i8 addrspace(1)* null, i64 %231, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %232), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !24
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %235 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %233, i8 addrspace(1)* %234)
  %236 = icmp ule i64 %235, 1
  store i1 %236, i1* %38
  %237 = load i1, i1* %38, !dbg !25
  %238 = zext i1 %237 to i64, !dbg !25
  %239 = or i64 %238, 72057594037927936, !dbg !25
  %240 = getelementptr i8, i8 addrspace(1)* null, i64 %239, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %240), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !25
  %241 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %243 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %241, i8 addrspace(1)* %242)
  %244 = icmp eq i64 %243, 2
  store i1 %244, i1* %40
  %245 = load i1, i1* %40, !dbg !26
  %246 = zext i1 %245 to i64, !dbg !26
  %247 = or i64 %246, 72057594037927936, !dbg !26
  %248 = getelementptr i8, i8 addrspace(1)* null, i64 %247, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %248), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !26
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %251 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %249, i8 addrspace(1)* %250)
  %252 = icmp sge i64 %251, 1
  store i1 %252, i1* %42
  %253 = load i1, i1* %42, !dbg !27
  %254 = zext i1 %253 to i64, !dbg !27
  %255 = or i64 %254, 72057594037927936, !dbg !27
  %256 = getelementptr i8, i8 addrspace(1)* null, i64 %255, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %256), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !27
  ret void
257:
  %258 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %258)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
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
