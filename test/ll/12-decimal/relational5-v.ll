@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec2 = internal unnamed_addr constant [2 x i8] c"3\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"1.5\00", align 8
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i64 @_bal_array_generic_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %d2 = alloca i8 addrspace(1)*
  %d3 = alloca i8 addrspace(1)*
  %d15 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %z = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %a1 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %a2 = alloca i8 addrspace(1)*
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
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %148, label %25
25:
  %26 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %26, i8 addrspace(1)** %d1
  %27 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %27, i8 addrspace(1)** %d2
  %28 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %28, i8 addrspace(1)** %d3
  %29 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %29, i8 addrspace(1)** %d15
  %30 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %31 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %30, i64 0, i32 3
  %32 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %31, align 8
  %33 = bitcast i8* addrspace(1)* %32 to [0 x i8 addrspace(1)*] addrspace(1)*
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %d15
  %35 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %33, i64 0, i64 0
  store i8 addrspace(1)* %34, i8 addrspace(1)* addrspace(1)* %35
  %36 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %36
  %37 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %30 to i8 addrspace(1)*
  %38 = getelementptr i8, i8 addrspace(1)* %37, i64 1297036692682702852
  store i8 addrspace(1)* %38, i8 addrspace(1)** %1
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %39, i8 addrspace(1)** %x
  %40 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %41 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %40, i64 0, i32 3
  %42 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %41, align 8
  %43 = bitcast i8* addrspace(1)* %42 to [0 x i8 addrspace(1)*] addrspace(1)*
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %d3
  %45 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %43, i64 0, i64 0
  store i8 addrspace(1)* %44, i8 addrspace(1)* addrspace(1)* %45
  %46 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %40, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %46
  %47 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %40 to i8 addrspace(1)*
  %48 = getelementptr i8, i8 addrspace(1)* %47, i64 1297036692682702852
  store i8 addrspace(1)* %48, i8 addrspace(1)** %2
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %49, i8 addrspace(1)** %y
  %50 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %51 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %50, i64 0, i32 3
  %52 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %51, align 8
  %53 = bitcast i8* addrspace(1)* %52 to [0 x i8 addrspace(1)*] addrspace(1)*
  %54 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  %55 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %53, i64 0, i64 0
  store i8 addrspace(1)* %54, i8 addrspace(1)* addrspace(1)* %55
  %56 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %50, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %56
  %57 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %50 to i8 addrspace(1)*
  %58 = getelementptr i8, i8 addrspace(1)* %57, i64 1297036692682702852
  store i8 addrspace(1)* %58, i8 addrspace(1)** %3
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %59, i8 addrspace(1)** %z
  %60 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 2)
  %61 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %60, i64 0, i32 3
  %62 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %61, align 8
  %63 = bitcast i8* addrspace(1)* %62 to [0 x i8 addrspace(1)*] addrspace(1)*
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %65 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 0
  store i8 addrspace(1)* %64, i8 addrspace(1)* addrspace(1)* %65
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %67 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 1
  store i8 addrspace(1)* %66, i8 addrspace(1)* addrspace(1)* %67
  %68 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %60, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %68
  %69 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %60 to i8 addrspace(1)*
  %70 = getelementptr i8, i8 addrspace(1)* %69, i64 1297036692682702852
  store i8 addrspace(1)* %70, i8 addrspace(1)** %4
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %71, i8 addrspace(1)** %a1
  %72 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 2)
  %73 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %72, i64 0, i32 3
  %74 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %73, align 8
  %75 = bitcast i8* addrspace(1)* %74 to [0 x i8 addrspace(1)*] addrspace(1)*
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %77 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 0
  store i8 addrspace(1)* %76, i8 addrspace(1)* addrspace(1)* %77
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %d3
  %79 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 1
  store i8 addrspace(1)* %78, i8 addrspace(1)* addrspace(1)* %79
  %80 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %72, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %80
  %81 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %72 to i8 addrspace(1)*
  %82 = getelementptr i8, i8 addrspace(1)* %81, i64 1297036692682702852
  store i8 addrspace(1)* %82, i8 addrspace(1)** %5
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %83, i8 addrspace(1)** %a2
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %86 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %84, i8 addrspace(1)* %85)
  %87 = icmp eq i64 %86, 0
  store i1 %87, i1* %6
  %88 = load i1, i1* %6, !dbg !8
  %89 = zext i1 %88 to i64, !dbg !8
  %90 = or i64 %89, 72057594037927936, !dbg !8
  %91 = getelementptr i8, i8 addrspace(1)* null, i64 %90, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %94 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %92, i8 addrspace(1)* %93)
  %95 = icmp eq i64 %94, 2
  store i1 %95, i1* %8
  %96 = load i1, i1* %8, !dbg !9
  %97 = zext i1 %96 to i64, !dbg !9
  %98 = or i64 %97, 72057594037927936, !dbg !9
  %99 = getelementptr i8, i8 addrspace(1)* null, i64 %98, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %102 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  %103 = icmp ule i64 %102, 1
  store i1 %103, i1* %10
  %104 = load i1, i1* %10, !dbg !10
  %105 = zext i1 %104 to i64, !dbg !10
  %106 = or i64 %105, 72057594037927936, !dbg !10
  %107 = getelementptr i8, i8 addrspace(1)* null, i64 %106, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %107), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !10
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %110 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %108, i8 addrspace(1)* %109)
  %111 = icmp sge i64 %110, 1
  store i1 %111, i1* %12
  %112 = load i1, i1* %12, !dbg !11
  %113 = zext i1 %112 to i64, !dbg !11
  %114 = or i64 %113, 72057594037927936, !dbg !11
  %115 = getelementptr i8, i8 addrspace(1)* null, i64 %114, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %115), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !11
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %118 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %116, i8 addrspace(1)* %117)
  %119 = icmp sge i64 %118, 1
  store i1 %119, i1* %14
  %120 = load i1, i1* %14, !dbg !12
  %121 = zext i1 %120 to i64, !dbg !12
  %122 = or i64 %121, 72057594037927936, !dbg !12
  %123 = getelementptr i8, i8 addrspace(1)* null, i64 %122, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %123), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !12
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %126 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %124, i8 addrspace(1)* %125)
  %127 = icmp ule i64 %126, 1
  store i1 %127, i1* %16
  %128 = load i1, i1* %16, !dbg !13
  %129 = zext i1 %128 to i64, !dbg !13
  %130 = or i64 %129, 72057594037927936, !dbg !13
  %131 = getelementptr i8, i8 addrspace(1)* null, i64 %130, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %131), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !13
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %134 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %132, i8 addrspace(1)* %133)
  %135 = icmp eq i64 %134, 0
  store i1 %135, i1* %18
  %136 = load i1, i1* %18, !dbg !14
  %137 = zext i1 %136 to i64, !dbg !14
  %138 = or i64 %137, 72057594037927936, !dbg !14
  %139 = getelementptr i8, i8 addrspace(1)* null, i64 %138, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %139), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !14
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %142 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %140, i8 addrspace(1)* %141)
  %143 = icmp sge i64 %142, 1
  store i1 %143, i1* %20
  %144 = load i1, i1* %20, !dbg !15
  %145 = zext i1 %144 to i64, !dbg !15
  %146 = or i64 %145, 72057594037927936, !dbg !15
  %147 = getelementptr i8, i8 addrspace(1)* null, i64 %146, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %147), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !15
  ret void
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %149)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
!9 = !DILocation(line: 13, column: 4, scope: !5)
!10 = !DILocation(line: 14, column: 4, scope: !5)
!11 = !DILocation(line: 15, column: 4, scope: !5)
!12 = !DILocation(line: 16, column: 4, scope: !5)
!13 = !DILocation(line: 17, column: 4, scope: !5)
!14 = !DILocation(line: 18, column: 4, scope: !5)
!15 = !DILocation(line: 19, column: 4, scope: !5)
