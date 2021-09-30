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
  %60 = getelementptr i8, i8 addrspace(1)* %54, i64 1297036692682702852
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
  %74 = getelementptr i8, i8 addrspace(1)* %68, i64 1297036692682702852
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
  %88 = getelementptr i8, i8 addrspace(1)* %82, i64 1297036692682702852
  store i8 addrspace(1)* %88, i8 addrspace(1)** %3
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %89, i8 addrspace(1)** %c
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %92 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %90, i8 addrspace(1)* %91)
  %93 = icmp eq i64 %92, 0
  store i1 %93, i1* %4
  %94 = load i1, i1* %4, !dbg !8
  %95 = zext i1 %94 to i64, !dbg !8
  %96 = or i64 %95, 72057594037927936, !dbg !8
  %97 = getelementptr i8, i8 addrspace(1)* null, i64 %96, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %97), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %100 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %98, i8 addrspace(1)* %99)
  %101 = icmp ule i64 %100, 1
  store i1 %101, i1* %6
  %102 = load i1, i1* %6, !dbg !9
  %103 = zext i1 %102 to i64, !dbg !9
  %104 = or i64 %103, 72057594037927936, !dbg !9
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %105), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %108 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %106, i8 addrspace(1)* %107)
  %109 = icmp eq i64 %108, 2
  store i1 %109, i1* %8
  %110 = load i1, i1* %8, !dbg !10
  %111 = zext i1 %110 to i64, !dbg !10
  %112 = or i64 %111, 72057594037927936, !dbg !10
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %113), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !10
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %116 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %114, i8 addrspace(1)* %115)
  %117 = icmp sge i64 %116, 1
  store i1 %117, i1* %10
  %118 = load i1, i1* %10, !dbg !11
  %119 = zext i1 %118 to i64, !dbg !11
  %120 = or i64 %119, 72057594037927936, !dbg !11
  %121 = getelementptr i8, i8 addrspace(1)* null, i64 %120, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %121), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !11
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %124 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %122, i8 addrspace(1)* %123)
  %125 = icmp eq i64 %124, 0
  store i1 %125, i1* %12
  %126 = load i1, i1* %12, !dbg !12
  %127 = zext i1 %126 to i64, !dbg !12
  %128 = or i64 %127, 72057594037927936, !dbg !12
  %129 = getelementptr i8, i8 addrspace(1)* null, i64 %128, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %129), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %132 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %130, i8 addrspace(1)* %131)
  %133 = icmp ule i64 %132, 1
  store i1 %133, i1* %14
  %134 = load i1, i1* %14, !dbg !13
  %135 = zext i1 %134 to i64, !dbg !13
  %136 = or i64 %135, 72057594037927936, !dbg !13
  %137 = getelementptr i8, i8 addrspace(1)* null, i64 %136, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %137), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %140 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %138, i8 addrspace(1)* %139)
  %141 = icmp eq i64 %140, 2
  store i1 %141, i1* %16
  %142 = load i1, i1* %16, !dbg !14
  %143 = zext i1 %142 to i64, !dbg !14
  %144 = or i64 %143, 72057594037927936, !dbg !14
  %145 = getelementptr i8, i8 addrspace(1)* null, i64 %144, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %145), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %148 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %146, i8 addrspace(1)* %147)
  %149 = icmp sge i64 %148, 1
  store i1 %149, i1* %18
  %150 = load i1, i1* %18, !dbg !15
  %151 = zext i1 %150 to i64, !dbg !15
  %152 = or i64 %151, 72057594037927936, !dbg !15
  %153 = getelementptr i8, i8 addrspace(1)* null, i64 %152, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %153), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %156 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %154, i8 addrspace(1)* %155)
  %157 = icmp eq i64 %156, 0
  store i1 %157, i1* %20
  %158 = load i1, i1* %20, !dbg !16
  %159 = zext i1 %158 to i64, !dbg !16
  %160 = or i64 %159, 72057594037927936, !dbg !16
  %161 = getelementptr i8, i8 addrspace(1)* null, i64 %160, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %161), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %164 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %162, i8 addrspace(1)* %163)
  %165 = icmp ule i64 %164, 1
  store i1 %165, i1* %22
  %166 = load i1, i1* %22, !dbg !17
  %167 = zext i1 %166 to i64, !dbg !17
  %168 = or i64 %167, 72057594037927936, !dbg !17
  %169 = getelementptr i8, i8 addrspace(1)* null, i64 %168, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %169), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %172 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %170, i8 addrspace(1)* %171)
  %173 = icmp eq i64 %172, 2
  store i1 %173, i1* %24
  %174 = load i1, i1* %24, !dbg !18
  %175 = zext i1 %174 to i64, !dbg !18
  %176 = or i64 %175, 72057594037927936, !dbg !18
  %177 = getelementptr i8, i8 addrspace(1)* null, i64 %176, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %177), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %180 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %178, i8 addrspace(1)* %179)
  %181 = icmp sge i64 %180, 1
  store i1 %181, i1* %26
  %182 = load i1, i1* %26, !dbg !19
  %183 = zext i1 %182 to i64, !dbg !19
  %184 = or i64 %183, 72057594037927936, !dbg !19
  %185 = getelementptr i8, i8 addrspace(1)* null, i64 %184, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %185), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !19
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %188 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %186, i8 addrspace(1)* %187)
  %189 = icmp eq i64 %188, 0
  store i1 %189, i1* %28
  %190 = load i1, i1* %28, !dbg !20
  %191 = zext i1 %190 to i64, !dbg !20
  %192 = or i64 %191, 72057594037927936, !dbg !20
  %193 = getelementptr i8, i8 addrspace(1)* null, i64 %192, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %193), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !20
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %196 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %194, i8 addrspace(1)* %195)
  %197 = icmp ule i64 %196, 1
  store i1 %197, i1* %30
  %198 = load i1, i1* %30, !dbg !21
  %199 = zext i1 %198 to i64, !dbg !21
  %200 = or i64 %199, 72057594037927936, !dbg !21
  %201 = getelementptr i8, i8 addrspace(1)* null, i64 %200, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %201), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !21
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %204 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %202, i8 addrspace(1)* %203)
  %205 = icmp eq i64 %204, 2
  store i1 %205, i1* %32
  %206 = load i1, i1* %32, !dbg !22
  %207 = zext i1 %206 to i64, !dbg !22
  %208 = or i64 %207, 72057594037927936, !dbg !22
  %209 = getelementptr i8, i8 addrspace(1)* null, i64 %208, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %209), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !22
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %212 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %210, i8 addrspace(1)* %211)
  %213 = icmp sge i64 %212, 1
  store i1 %213, i1* %34
  %214 = load i1, i1* %34, !dbg !23
  %215 = zext i1 %214 to i64, !dbg !23
  %216 = or i64 %215, 72057594037927936, !dbg !23
  %217 = getelementptr i8, i8 addrspace(1)* null, i64 %216, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %217), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !23
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %220 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %218, i8 addrspace(1)* %219)
  %221 = icmp eq i64 %220, 0
  store i1 %221, i1* %36
  %222 = load i1, i1* %36, !dbg !24
  %223 = zext i1 %222 to i64, !dbg !24
  %224 = or i64 %223, 72057594037927936, !dbg !24
  %225 = getelementptr i8, i8 addrspace(1)* null, i64 %224, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %225), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !24
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %228 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %226, i8 addrspace(1)* %227)
  %229 = icmp ule i64 %228, 1
  store i1 %229, i1* %38
  %230 = load i1, i1* %38, !dbg !25
  %231 = zext i1 %230 to i64, !dbg !25
  %232 = or i64 %231, 72057594037927936, !dbg !25
  %233 = getelementptr i8, i8 addrspace(1)* null, i64 %232, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %233), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !25
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %236 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %234, i8 addrspace(1)* %235)
  %237 = icmp eq i64 %236, 2
  store i1 %237, i1* %40
  %238 = load i1, i1* %40, !dbg !26
  %239 = zext i1 %238 to i64, !dbg !26
  %240 = or i64 %239, 72057594037927936, !dbg !26
  %241 = getelementptr i8, i8 addrspace(1)* null, i64 %240, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %241), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !26
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %244 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %242, i8 addrspace(1)* %243)
  %245 = icmp sge i64 %244, 1
  store i1 %245, i1* %42
  %246 = load i1, i1* %42, !dbg !27
  %247 = zext i1 %246 to i64, !dbg !27
  %248 = or i64 %247, 72057594037927936, !dbg !27
  %249 = getelementptr i8, i8 addrspace(1)* null, i64 %248, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %249), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !27
  ret void
250:
  %251 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %251)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr3-v.bal", directory:"")
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
