@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %144, label %24
24:
  %25 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %26 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25 to i8 addrspace(1)*
  %27 = getelementptr i8, i8 addrspace(1)* %26, i64 1297036692682702852
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %29 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %30 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 3
  %31 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %30, align 8
  %32 = zext i1 1 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33
  %35 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %31, i64 0, i64 0
  store i8 addrspace(1)* %34, i8 addrspace(1)* addrspace(1)* %35
  %36 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %36
  %37 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29 to i8 addrspace(1)*
  %38 = getelementptr i8, i8 addrspace(1)* %37, i64 1297036692682702852
  store i8 addrspace(1)* %38, i8 addrspace(1)** %3
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %40 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %41 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 3
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %43
  %44 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %44
  %45 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40 to i8 addrspace(1)*
  %46 = getelementptr i8, i8 addrspace(1)* %45, i64 1297036692682702852
  store i8 addrspace(1)* %46, i8 addrspace(1)** %5
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %48 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %49 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %50 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49, align 8
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -17)
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 0
  store i8 addrspace(1)* %51, i8 addrspace(1)* addrspace(1)* %52
  %53 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %53
  %54 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48 to i8 addrspace(1)*
  %55 = getelementptr i8, i8 addrspace(1)* %54, i64 1297036692682702852
  store i8 addrspace(1)* %55, i8 addrspace(1)** %7
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %57 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %58 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 3
  %59 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %58, align 8
  %60 = zext i1 0 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61
  %63 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 0
  store i8 addrspace(1)* %62, i8 addrspace(1)* addrspace(1)* %63
  %64 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %64
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 43)
  %66 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 2
  store i8 addrspace(1)* %65, i8 addrspace(1)* addrspace(1)* %66
  %67 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %67
  %68 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %57 to i8 addrspace(1)*
  %69 = getelementptr i8, i8 addrspace(1)* %68, i64 1297036692682702852
  store i8 addrspace(1)* %69, i8 addrspace(1)** %9
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %71 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %72 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71 to i8 addrspace(1)*
  %73 = getelementptr i8, i8 addrspace(1)* %72, i64 1297036692682702852
  store i8 addrspace(1)* %73, i8 addrspace(1)** %11
  %74 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %75 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 3
  %76 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %75, align 8
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %78 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %76, i64 0, i64 0
  store i8 addrspace(1)* %77, i8 addrspace(1)* addrspace(1)* %78
  %79 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %79
  %80 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74 to i8 addrspace(1)*
  %81 = getelementptr i8, i8 addrspace(1)* %80, i64 1297036692682702852
  store i8 addrspace(1)* %81, i8 addrspace(1)** %12
  %82 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %83 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 3
  %84 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %83, align 8
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %86 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 0
  store i8 addrspace(1)* %85, i8 addrspace(1)* addrspace(1)* %86
  %87 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %87
  %88 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82 to i8 addrspace(1)*
  %89 = getelementptr i8, i8 addrspace(1)* %88, i64 1297036692682702852
  store i8 addrspace(1)* %89, i8 addrspace(1)** %13
  %90 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %91 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 3
  %92 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %91, align 8
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %94 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %92, i64 0, i64 0
  store i8 addrspace(1)* %93, i8 addrspace(1)* addrspace(1)* %94
  %95 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %95
  %96 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90 to i8 addrspace(1)*
  %97 = getelementptr i8, i8 addrspace(1)* %96, i64 1297036692682702852
  store i8 addrspace(1)* %97, i8 addrspace(1)** %14
  %98 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %99 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 3
  %100 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %99, align 8
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %102 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 0
  store i8 addrspace(1)* %101, i8 addrspace(1)* addrspace(1)* %102
  %103 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %103
  %104 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %98 to i8 addrspace(1)*
  %105 = getelementptr i8, i8 addrspace(1)* %104, i64 1297036692682702852
  store i8 addrspace(1)* %105, i8 addrspace(1)** %15
  %106 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %107 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  %108 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %107, align 8
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %110 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %108, i64 0, i64 0
  store i8 addrspace(1)* %109, i8 addrspace(1)* addrspace(1)* %110
  %111 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %111
  %112 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106 to i8 addrspace(1)*
  %113 = getelementptr i8, i8 addrspace(1)* %112, i64 1297036692682702852
  store i8 addrspace(1)* %113, i8 addrspace(1)** %16
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %114), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !13
  %115 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %116 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %115, i64 0, i32 3
  %117 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %116, align 8
  %118 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %119 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 0
  store i8 addrspace(1)* %118, i8 addrspace(1)* addrspace(1)* %119
  %120 = zext i1 1 to i64
  %121 = or i64 %120, 72057594037927936
  %122 = getelementptr i8, i8 addrspace(1)* null, i64 %121
  %123 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 1
  store i8 addrspace(1)* %122, i8 addrspace(1)* addrspace(1)* %123
  %124 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  %125 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 2
  store i8 addrspace(1)* %124, i8 addrspace(1)* addrspace(1)* %125
  %126 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %115, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %126
  %127 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %115 to i8 addrspace(1)*
  %128 = getelementptr i8, i8 addrspace(1)* %127, i64 1297036692682702852
  store i8 addrspace(1)* %128, i8 addrspace(1)** %18
  %129 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %130 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %129, i64 0, i32 3
  %131 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %130, align 8
  %132 = zext i1 0 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133
  %135 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 0
  store i8 addrspace(1)* %134, i8 addrspace(1)* addrspace(1)* %135
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %137 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 1
  store i8 addrspace(1)* %136, i8 addrspace(1)* addrspace(1)* %137
  %138 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %139 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 2
  store i8 addrspace(1)* %138, i8 addrspace(1)* addrspace(1)* %139
  %140 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %129, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %140
  %141 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %129 to i8 addrspace(1)*
  %142 = getelementptr i8, i8 addrspace(1)* %141, i64 1297036692682702852
  store i8 addrspace(1)* %142, i8 addrspace(1)** %19
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %143), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  ret void
144:
  %145 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %145)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 4, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
