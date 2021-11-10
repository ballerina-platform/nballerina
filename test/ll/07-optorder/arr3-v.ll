@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_array_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %46, label %238, label %47
47:
  %48 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %49 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %50 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49, align 8
  %51 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %51
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %52
  %53 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801), i8 addrspace(1)* addrspace(1)* %53
  %54 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %54
  %55 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48 to i8 addrspace(1)*
  %56 = getelementptr i8, i8 addrspace(1)* %55, i64 1297036692682702852
  store i8 addrspace(1)* %56, i8 addrspace(1)** %1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %57, i8 addrspace(1)** %a
  %58 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 3)
  %59 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 3
  %60 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %59, align 8
  %61 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %60, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %61
  %62 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %60, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %62
  %63 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %60, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801), i8 addrspace(1)* addrspace(1)* %63
  %64 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %64
  %65 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58 to i8 addrspace(1)*
  %66 = getelementptr i8, i8 addrspace(1)* %65, i64 1297036692682702852
  store i8 addrspace(1)* %66, i8 addrspace(1)** %2
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %67, i8 addrspace(1)** %b
  %68 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 3)
  %69 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 3
  %70 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %69, align 8
  %71 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %70, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %71
  %72 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %70, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %72
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %70, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622150520), i8 addrspace(1)* addrspace(1)* %73
  %74 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %74
  %75 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68 to i8 addrspace(1)*
  %76 = getelementptr i8, i8 addrspace(1)* %75, i64 1297036692682702852
  store i8 addrspace(1)* %76, i8 addrspace(1)** %3
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %77, i8 addrspace(1)** %c
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %80 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %78, i8 addrspace(1)* %79)
  %81 = icmp eq i64 %80, 0
  store i1 %81, i1* %4
  %82 = load i1, i1* %4, !dbg !8
  %83 = zext i1 %82 to i64, !dbg !8
  %84 = or i64 %83, 72057594037927936, !dbg !8
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %85), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %88 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  %89 = icmp ule i64 %88, 1
  store i1 %89, i1* %6
  %90 = load i1, i1* %6, !dbg !9
  %91 = zext i1 %90 to i64, !dbg !9
  %92 = or i64 %91, 72057594037927936, !dbg !9
  %93 = getelementptr i8, i8 addrspace(1)* null, i64 %92, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %96 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %94, i8 addrspace(1)* %95)
  %97 = icmp eq i64 %96, 2
  store i1 %97, i1* %8
  %98 = load i1, i1* %8, !dbg !10
  %99 = zext i1 %98 to i64, !dbg !10
  %100 = or i64 %99, 72057594037927936, !dbg !10
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !10
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %104 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %102, i8 addrspace(1)* %103)
  %105 = icmp sge i64 %104, 1
  store i1 %105, i1* %10
  %106 = load i1, i1* %10, !dbg !11
  %107 = zext i1 %106 to i64, !dbg !11
  %108 = or i64 %107, 72057594037927936, !dbg !11
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %109), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !11
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %112 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = icmp eq i64 %112, 0
  store i1 %113, i1* %12
  %114 = load i1, i1* %12, !dbg !12
  %115 = zext i1 %114 to i64, !dbg !12
  %116 = or i64 %115, 72057594037927936, !dbg !12
  %117 = getelementptr i8, i8 addrspace(1)* null, i64 %116, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %117), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %120 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %118, i8 addrspace(1)* %119)
  %121 = icmp ule i64 %120, 1
  store i1 %121, i1* %14
  %122 = load i1, i1* %14, !dbg !13
  %123 = zext i1 %122 to i64, !dbg !13
  %124 = or i64 %123, 72057594037927936, !dbg !13
  %125 = getelementptr i8, i8 addrspace(1)* null, i64 %124, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %125), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %128 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %126, i8 addrspace(1)* %127)
  %129 = icmp eq i64 %128, 2
  store i1 %129, i1* %16
  %130 = load i1, i1* %16, !dbg !14
  %131 = zext i1 %130 to i64, !dbg !14
  %132 = or i64 %131, 72057594037927936, !dbg !14
  %133 = getelementptr i8, i8 addrspace(1)* null, i64 %132, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %133), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %136 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %134, i8 addrspace(1)* %135)
  %137 = icmp sge i64 %136, 1
  store i1 %137, i1* %18
  %138 = load i1, i1* %18, !dbg !15
  %139 = zext i1 %138 to i64, !dbg !15
  %140 = or i64 %139, 72057594037927936, !dbg !15
  %141 = getelementptr i8, i8 addrspace(1)* null, i64 %140, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %141), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %144 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %142, i8 addrspace(1)* %143)
  %145 = icmp eq i64 %144, 0
  store i1 %145, i1* %20
  %146 = load i1, i1* %20, !dbg !16
  %147 = zext i1 %146 to i64, !dbg !16
  %148 = or i64 %147, 72057594037927936, !dbg !16
  %149 = getelementptr i8, i8 addrspace(1)* null, i64 %148, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %149), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %152 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %150, i8 addrspace(1)* %151)
  %153 = icmp ule i64 %152, 1
  store i1 %153, i1* %22
  %154 = load i1, i1* %22, !dbg !17
  %155 = zext i1 %154 to i64, !dbg !17
  %156 = or i64 %155, 72057594037927936, !dbg !17
  %157 = getelementptr i8, i8 addrspace(1)* null, i64 %156, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %157), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %160 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %158, i8 addrspace(1)* %159)
  %161 = icmp eq i64 %160, 2
  store i1 %161, i1* %24
  %162 = load i1, i1* %24, !dbg !18
  %163 = zext i1 %162 to i64, !dbg !18
  %164 = or i64 %163, 72057594037927936, !dbg !18
  %165 = getelementptr i8, i8 addrspace(1)* null, i64 %164, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %165), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %168 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %166, i8 addrspace(1)* %167)
  %169 = icmp sge i64 %168, 1
  store i1 %169, i1* %26
  %170 = load i1, i1* %26, !dbg !19
  %171 = zext i1 %170 to i64, !dbg !19
  %172 = or i64 %171, 72057594037927936, !dbg !19
  %173 = getelementptr i8, i8 addrspace(1)* null, i64 %172, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %173), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !19
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %176 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %174, i8 addrspace(1)* %175)
  %177 = icmp eq i64 %176, 0
  store i1 %177, i1* %28
  %178 = load i1, i1* %28, !dbg !20
  %179 = zext i1 %178 to i64, !dbg !20
  %180 = or i64 %179, 72057594037927936, !dbg !20
  %181 = getelementptr i8, i8 addrspace(1)* null, i64 %180, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %181), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !20
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %184 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %182, i8 addrspace(1)* %183)
  %185 = icmp ule i64 %184, 1
  store i1 %185, i1* %30
  %186 = load i1, i1* %30, !dbg !21
  %187 = zext i1 %186 to i64, !dbg !21
  %188 = or i64 %187, 72057594037927936, !dbg !21
  %189 = getelementptr i8, i8 addrspace(1)* null, i64 %188, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %189), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !21
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %192 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %190, i8 addrspace(1)* %191)
  %193 = icmp eq i64 %192, 2
  store i1 %193, i1* %32
  %194 = load i1, i1* %32, !dbg !22
  %195 = zext i1 %194 to i64, !dbg !22
  %196 = or i64 %195, 72057594037927936, !dbg !22
  %197 = getelementptr i8, i8 addrspace(1)* null, i64 %196, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %197), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !22
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %200 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %198, i8 addrspace(1)* %199)
  %201 = icmp sge i64 %200, 1
  store i1 %201, i1* %34
  %202 = load i1, i1* %34, !dbg !23
  %203 = zext i1 %202 to i64, !dbg !23
  %204 = or i64 %203, 72057594037927936, !dbg !23
  %205 = getelementptr i8, i8 addrspace(1)* null, i64 %204, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %205), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !23
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %208 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %206, i8 addrspace(1)* %207)
  %209 = icmp eq i64 %208, 0
  store i1 %209, i1* %36
  %210 = load i1, i1* %36, !dbg !24
  %211 = zext i1 %210 to i64, !dbg !24
  %212 = or i64 %211, 72057594037927936, !dbg !24
  %213 = getelementptr i8, i8 addrspace(1)* null, i64 %212, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %213), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !24
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %216 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %214, i8 addrspace(1)* %215)
  %217 = icmp ule i64 %216, 1
  store i1 %217, i1* %38
  %218 = load i1, i1* %38, !dbg !25
  %219 = zext i1 %218 to i64, !dbg !25
  %220 = or i64 %219, 72057594037927936, !dbg !25
  %221 = getelementptr i8, i8 addrspace(1)* null, i64 %220, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %221), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !25
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %224 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %222, i8 addrspace(1)* %223)
  %225 = icmp eq i64 %224, 2
  store i1 %225, i1* %40
  %226 = load i1, i1* %40, !dbg !26
  %227 = zext i1 %226 to i64, !dbg !26
  %228 = or i64 %227, 72057594037927936, !dbg !26
  %229 = getelementptr i8, i8 addrspace(1)* null, i64 %228, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %229), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !26
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %231 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %232 = call i64 @_bal_array_string_compare(i8 addrspace(1)* %230, i8 addrspace(1)* %231)
  %233 = icmp sge i64 %232, 1
  store i1 %233, i1* %42
  %234 = load i1, i1* %42, !dbg !27
  %235 = zext i1 %234 to i64, !dbg !27
  %236 = or i64 %235, 72057594037927936, !dbg !27
  %237 = getelementptr i8, i8 addrspace(1)* null, i64 %236, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %237), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !27
  ret void
238:
  %239 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %239)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
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
