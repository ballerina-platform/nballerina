@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_array_boolean_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %46, label %259, label %47
47:
  %48 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %49 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %50 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49, align 8
  %51 = zext i1 0 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  %54 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 0
  store i8 addrspace(1)* %53, i8 addrspace(1)* addrspace(1)* %54
  %55 = zext i1 1 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  %58 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 1
  store i8 addrspace(1)* %57, i8 addrspace(1)* addrspace(1)* %58
  %59 = zext i1 0 to i64
  %60 = or i64 %59, 72057594037927936
  %61 = getelementptr i8, i8 addrspace(1)* null, i64 %60
  %62 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 2
  store i8 addrspace(1)* %61, i8 addrspace(1)* addrspace(1)* %62
  %63 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %63
  %64 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48 to i8 addrspace(1)*
  %65 = getelementptr i8, i8 addrspace(1)* %64, i64 1297036692682702852
  store i8 addrspace(1)* %65, i8 addrspace(1)** %1
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %66, i8 addrspace(1)** %a
  %67 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 3)
  %68 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 3
  %69 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %68, align 8
  %70 = zext i1 0 to i64
  %71 = or i64 %70, 72057594037927936
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %69, i64 0, i64 0
  store i8 addrspace(1)* %72, i8 addrspace(1)* addrspace(1)* %73
  %74 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %69, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %74
  %75 = zext i1 0 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  %78 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %69, i64 0, i64 2
  store i8 addrspace(1)* %77, i8 addrspace(1)* addrspace(1)* %78
  %79 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %79
  %80 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67 to i8 addrspace(1)*
  %81 = getelementptr i8, i8 addrspace(1)* %80, i64 1297036692682702852
  store i8 addrspace(1)* %81, i8 addrspace(1)** %2
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %82, i8 addrspace(1)** %b
  %83 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 3)
  %84 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 3
  %85 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %84, align 8
  %86 = zext i1 0 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87
  %89 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %85, i64 0, i64 0
  store i8 addrspace(1)* %88, i8 addrspace(1)* addrspace(1)* %89
  %90 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %85, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %90
  %91 = zext i1 1 to i64
  %92 = or i64 %91, 72057594037927936
  %93 = getelementptr i8, i8 addrspace(1)* null, i64 %92
  %94 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %85, i64 0, i64 2
  store i8 addrspace(1)* %93, i8 addrspace(1)* addrspace(1)* %94
  %95 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %95
  %96 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %83 to i8 addrspace(1)*
  %97 = getelementptr i8, i8 addrspace(1)* %96, i64 1297036692682702852
  store i8 addrspace(1)* %97, i8 addrspace(1)** %3
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %98, i8 addrspace(1)** %c
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %101 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %99, i8 addrspace(1)* %100)
  %102 = icmp eq i64 %101, 0
  store i1 %102, i1* %4
  %103 = load i1, i1* %4, !dbg !8
  %104 = zext i1 %103 to i64, !dbg !8
  %105 = or i64 %104, 72057594037927936, !dbg !8
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %109 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %107, i8 addrspace(1)* %108)
  %110 = icmp ule i64 %109, 1
  store i1 %110, i1* %6
  %111 = load i1, i1* %6, !dbg !9
  %112 = zext i1 %111 to i64, !dbg !9
  %113 = or i64 %112, 72057594037927936, !dbg !9
  %114 = getelementptr i8, i8 addrspace(1)* null, i64 %113, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %114), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %117 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %115, i8 addrspace(1)* %116)
  %118 = icmp eq i64 %117, 2
  store i1 %118, i1* %8
  %119 = load i1, i1* %8, !dbg !10
  %120 = zext i1 %119 to i64, !dbg !10
  %121 = or i64 %120, 72057594037927936, !dbg !10
  %122 = getelementptr i8, i8 addrspace(1)* null, i64 %121, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %122), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !10
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %125 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %123, i8 addrspace(1)* %124)
  %126 = icmp sge i64 %125, 1
  store i1 %126, i1* %10
  %127 = load i1, i1* %10, !dbg !11
  %128 = zext i1 %127 to i64, !dbg !11
  %129 = or i64 %128, 72057594037927936, !dbg !11
  %130 = getelementptr i8, i8 addrspace(1)* null, i64 %129, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %130), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !11
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %133 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %131, i8 addrspace(1)* %132)
  %134 = icmp eq i64 %133, 0
  store i1 %134, i1* %12
  %135 = load i1, i1* %12, !dbg !12
  %136 = zext i1 %135 to i64, !dbg !12
  %137 = or i64 %136, 72057594037927936, !dbg !12
  %138 = getelementptr i8, i8 addrspace(1)* null, i64 %137, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %138), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %141 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %139, i8 addrspace(1)* %140)
  %142 = icmp ule i64 %141, 1
  store i1 %142, i1* %14
  %143 = load i1, i1* %14, !dbg !13
  %144 = zext i1 %143 to i64, !dbg !13
  %145 = or i64 %144, 72057594037927936, !dbg !13
  %146 = getelementptr i8, i8 addrspace(1)* null, i64 %145, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %146), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %149 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %147, i8 addrspace(1)* %148)
  %150 = icmp eq i64 %149, 2
  store i1 %150, i1* %16
  %151 = load i1, i1* %16, !dbg !14
  %152 = zext i1 %151 to i64, !dbg !14
  %153 = or i64 %152, 72057594037927936, !dbg !14
  %154 = getelementptr i8, i8 addrspace(1)* null, i64 %153, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %154), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %157 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %155, i8 addrspace(1)* %156)
  %158 = icmp sge i64 %157, 1
  store i1 %158, i1* %18
  %159 = load i1, i1* %18, !dbg !15
  %160 = zext i1 %159 to i64, !dbg !15
  %161 = or i64 %160, 72057594037927936, !dbg !15
  %162 = getelementptr i8, i8 addrspace(1)* null, i64 %161, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %162), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %165 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  %166 = icmp eq i64 %165, 0
  store i1 %166, i1* %20
  %167 = load i1, i1* %20, !dbg !16
  %168 = zext i1 %167 to i64, !dbg !16
  %169 = or i64 %168, 72057594037927936, !dbg !16
  %170 = getelementptr i8, i8 addrspace(1)* null, i64 %169, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %170), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %173 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %171, i8 addrspace(1)* %172)
  %174 = icmp ule i64 %173, 1
  store i1 %174, i1* %22
  %175 = load i1, i1* %22, !dbg !17
  %176 = zext i1 %175 to i64, !dbg !17
  %177 = or i64 %176, 72057594037927936, !dbg !17
  %178 = getelementptr i8, i8 addrspace(1)* null, i64 %177, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %178), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %181 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %179, i8 addrspace(1)* %180)
  %182 = icmp eq i64 %181, 2
  store i1 %182, i1* %24
  %183 = load i1, i1* %24, !dbg !18
  %184 = zext i1 %183 to i64, !dbg !18
  %185 = or i64 %184, 72057594037927936, !dbg !18
  %186 = getelementptr i8, i8 addrspace(1)* null, i64 %185, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %186), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %189 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %187, i8 addrspace(1)* %188)
  %190 = icmp sge i64 %189, 1
  store i1 %190, i1* %26
  %191 = load i1, i1* %26, !dbg !19
  %192 = zext i1 %191 to i64, !dbg !19
  %193 = or i64 %192, 72057594037927936, !dbg !19
  %194 = getelementptr i8, i8 addrspace(1)* null, i64 %193, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %194), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !19
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %197 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %195, i8 addrspace(1)* %196)
  %198 = icmp eq i64 %197, 0
  store i1 %198, i1* %28
  %199 = load i1, i1* %28, !dbg !20
  %200 = zext i1 %199 to i64, !dbg !20
  %201 = or i64 %200, 72057594037927936, !dbg !20
  %202 = getelementptr i8, i8 addrspace(1)* null, i64 %201, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %202), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !20
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %205 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %203, i8 addrspace(1)* %204)
  %206 = icmp ule i64 %205, 1
  store i1 %206, i1* %30
  %207 = load i1, i1* %30, !dbg !21
  %208 = zext i1 %207 to i64, !dbg !21
  %209 = or i64 %208, 72057594037927936, !dbg !21
  %210 = getelementptr i8, i8 addrspace(1)* null, i64 %209, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %210), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !21
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %213 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %211, i8 addrspace(1)* %212)
  %214 = icmp eq i64 %213, 2
  store i1 %214, i1* %32
  %215 = load i1, i1* %32, !dbg !22
  %216 = zext i1 %215 to i64, !dbg !22
  %217 = or i64 %216, 72057594037927936, !dbg !22
  %218 = getelementptr i8, i8 addrspace(1)* null, i64 %217, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %218), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !22
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %221 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %219, i8 addrspace(1)* %220)
  %222 = icmp sge i64 %221, 1
  store i1 %222, i1* %34
  %223 = load i1, i1* %34, !dbg !23
  %224 = zext i1 %223 to i64, !dbg !23
  %225 = or i64 %224, 72057594037927936, !dbg !23
  %226 = getelementptr i8, i8 addrspace(1)* null, i64 %225, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %226), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !23
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %229 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %227, i8 addrspace(1)* %228)
  %230 = icmp eq i64 %229, 0
  store i1 %230, i1* %36
  %231 = load i1, i1* %36, !dbg !24
  %232 = zext i1 %231 to i64, !dbg !24
  %233 = or i64 %232, 72057594037927936, !dbg !24
  %234 = getelementptr i8, i8 addrspace(1)* null, i64 %233, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %234), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !24
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %236 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %237 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %235, i8 addrspace(1)* %236)
  %238 = icmp ule i64 %237, 1
  store i1 %238, i1* %38
  %239 = load i1, i1* %38, !dbg !25
  %240 = zext i1 %239 to i64, !dbg !25
  %241 = or i64 %240, 72057594037927936, !dbg !25
  %242 = getelementptr i8, i8 addrspace(1)* null, i64 %241, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %242), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !25
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %245 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %243, i8 addrspace(1)* %244)
  %246 = icmp eq i64 %245, 2
  store i1 %246, i1* %40
  %247 = load i1, i1* %40, !dbg !26
  %248 = zext i1 %247 to i64, !dbg !26
  %249 = or i64 %248, 72057594037927936, !dbg !26
  %250 = getelementptr i8, i8 addrspace(1)* null, i64 %249, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %250), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !26
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %253 = call i64 @_bal_array_boolean_compare(i8 addrspace(1)* %251, i8 addrspace(1)* %252)
  %254 = icmp sge i64 %253, 1
  store i1 %254, i1* %42
  %255 = load i1, i1* %42, !dbg !27
  %256 = zext i1 %255 to i64, !dbg !27
  %257 = or i64 %256, 72057594037927936, !dbg !27
  %258 = getelementptr i8, i8 addrspace(1)* null, i64 %257, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %258), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !27
  ret void
259:
  %260 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %260)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr4-v.bal", directory:"")
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
