@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [4 x i8] c"1.5\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"3\00", align 8
@.dec2 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"2.5\00", align 8
@.dec4 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i64 @_bal_array_generic_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
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
  br i1 %24, label %144, label %25
25:
  %26 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %27 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  %28 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %27, align 8
  %29 = bitcast i8* addrspace(1)* %28 to [0 x i8 addrspace(1)*] addrspace(1)*
  %30 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec0 to i8*))
  %31 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %29, i64 0, i64 0
  store i8 addrspace(1)* %30, i8 addrspace(1)* addrspace(1)* %31
  %32 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %32
  %33 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %26 to i8 addrspace(1)*
  %34 = getelementptr i8, i8 addrspace(1)* %33, i64 1297036692682702852
  store i8 addrspace(1)* %34, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %35, i8 addrspace(1)** %x
  %36 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %37 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %36, i64 0, i32 3
  %38 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %37, align 8
  %39 = bitcast i8* addrspace(1)* %38 to [0 x i8 addrspace(1)*] addrspace(1)*
  %40 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  %41 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %39, i64 0, i64 0
  store i8 addrspace(1)* %40, i8 addrspace(1)* addrspace(1)* %41
  %42 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %36, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %42
  %43 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %36 to i8 addrspace(1)*
  %44 = getelementptr i8, i8 addrspace(1)* %43, i64 1297036692682702852
  store i8 addrspace(1)* %44, i8 addrspace(1)** %2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %45, i8 addrspace(1)** %y
  %46 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %47 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %46, i64 0, i32 3
  %48 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %47, align 8
  %49 = bitcast i8* addrspace(1)* %48 to [0 x i8 addrspace(1)*] addrspace(1)*
  %50 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  %51 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %50, i8 addrspace(1)* addrspace(1)* %51
  %52 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %46, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %52
  %53 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %46 to i8 addrspace(1)*
  %54 = getelementptr i8, i8 addrspace(1)* %53, i64 1297036692682702852
  store i8 addrspace(1)* %54, i8 addrspace(1)** %3
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %55, i8 addrspace(1)** %z
  %56 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 2)
  %57 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %56, i64 0, i32 3
  %58 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %57, align 8
  %59 = bitcast i8* addrspace(1)* %58 to [0 x i8 addrspace(1)*] addrspace(1)*
  %60 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  %61 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 0
  store i8 addrspace(1)* %60, i8 addrspace(1)* addrspace(1)* %61
  %62 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  %63 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 1
  store i8 addrspace(1)* %62, i8 addrspace(1)* addrspace(1)* %63
  %64 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %56, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %64
  %65 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %56 to i8 addrspace(1)*
  %66 = getelementptr i8, i8 addrspace(1)* %65, i64 1297036692682702852
  store i8 addrspace(1)* %66, i8 addrspace(1)** %4
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %67, i8 addrspace(1)** %a1
  %68 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 2)
  %69 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %68, i64 0, i32 3
  %70 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %69, align 8
  %71 = bitcast i8* addrspace(1)* %70 to [0 x i8 addrspace(1)*] addrspace(1)*
  %72 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec4 to i8*))
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %71, i64 0, i64 0
  store i8 addrspace(1)* %72, i8 addrspace(1)* addrspace(1)* %73
  %74 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  %75 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %71, i64 0, i64 1
  store i8 addrspace(1)* %74, i8 addrspace(1)* addrspace(1)* %75
  %76 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %68, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %76
  %77 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %68 to i8 addrspace(1)*
  %78 = getelementptr i8, i8 addrspace(1)* %77, i64 1297036692682702852
  store i8 addrspace(1)* %78, i8 addrspace(1)** %5
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %79, i8 addrspace(1)** %a2
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %82 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %80, i8 addrspace(1)* %81)
  %83 = icmp eq i64 %82, 0
  store i1 %83, i1* %6
  %84 = load i1, i1* %6, !dbg !8
  %85 = zext i1 %84 to i64, !dbg !8
  %86 = or i64 %85, 72057594037927936, !dbg !8
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %90 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %88, i8 addrspace(1)* %89)
  %91 = icmp eq i64 %90, 2
  store i1 %91, i1* %8
  %92 = load i1, i1* %8, !dbg !9
  %93 = zext i1 %92 to i64, !dbg !9
  %94 = or i64 %93, 72057594037927936, !dbg !9
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %98 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %96, i8 addrspace(1)* %97)
  %99 = icmp ule i64 %98, 1
  store i1 %99, i1* %10
  %100 = load i1, i1* %10, !dbg !10
  %101 = zext i1 %100 to i64, !dbg !10
  %102 = or i64 %101, 72057594037927936, !dbg !10
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !10
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %106 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %104, i8 addrspace(1)* %105)
  %107 = icmp sge i64 %106, 1
  store i1 %107, i1* %12
  %108 = load i1, i1* %12, !dbg !11
  %109 = zext i1 %108 to i64, !dbg !11
  %110 = or i64 %109, 72057594037927936, !dbg !11
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !11
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %114 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %112, i8 addrspace(1)* %113)
  %115 = icmp sge i64 %114, 1
  store i1 %115, i1* %14
  %116 = load i1, i1* %14, !dbg !12
  %117 = zext i1 %116 to i64, !dbg !12
  %118 = or i64 %117, 72057594037927936, !dbg !12
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %119), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !12
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %122 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %120, i8 addrspace(1)* %121)
  %123 = icmp ule i64 %122, 1
  store i1 %123, i1* %16
  %124 = load i1, i1* %16, !dbg !13
  %125 = zext i1 %124 to i64, !dbg !13
  %126 = or i64 %125, 72057594037927936, !dbg !13
  %127 = getelementptr i8, i8 addrspace(1)* null, i64 %126, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %127), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !13
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %130 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %128, i8 addrspace(1)* %129)
  %131 = icmp eq i64 %130, 0
  store i1 %131, i1* %18
  %132 = load i1, i1* %18, !dbg !14
  %133 = zext i1 %132 to i64, !dbg !14
  %134 = or i64 %133, 72057594037927936, !dbg !14
  %135 = getelementptr i8, i8 addrspace(1)* null, i64 %134, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %135), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !14
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %138 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %136, i8 addrspace(1)* %137)
  %139 = icmp sge i64 %138, 1
  store i1 %139, i1* %20
  %140 = load i1, i1* %20, !dbg !15
  %141 = zext i1 %140 to i64, !dbg !15
  %142 = or i64 %141, 72057594037927936, !dbg !15
  %143 = getelementptr i8, i8 addrspace(1)* null, i64 %142, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %143), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !15
  ret void
144:
  %145 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %145)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 15, column: 4, scope: !5)
