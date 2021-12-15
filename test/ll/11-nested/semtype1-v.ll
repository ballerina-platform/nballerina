@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"atomicType\00\00"}, align 8
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
@_Bi04root6 = external constant {i32}
@.str13 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 15, [20 x i8] c"subtypeDataList\00\00\00\00\00"}, align 8
@_Bt04root7 = external constant {i32, i32, [0 x i8*]}
@_Be04root4 = external constant i32
@_Bt04root8 = external constant {i32, i32, [0 x i8*]}
@_Be04root2 = external constant i32
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)*, i32*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %mat = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %bdd = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %semType = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %semType.1 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %list = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %st = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %st.1 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %atom = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %atom.1 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %t = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %t.1 = alloca i8 addrspace(1)*
  %names = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %159, label %28
28:
  %29 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 2)
  %30 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29, i64 0, i32 3
  %31 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %30, align 8
  %32 = bitcast i8* addrspace(1)* %31 to [0 x i8 addrspace(1)*] addrspace(1)*
  %33 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %32, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* addrspace(1)* %33
  %34 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %32, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* addrspace(1)* %34
  %35 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %35
  %36 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29 to i8 addrspace(1)*
  %37 = getelementptr i8, i8 addrspace(1)* %36, i64 1297036692682702852
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1
  %38 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 2)
  %39 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %38, i64 0, i32 3
  %40 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %39, align 8
  %41 = bitcast i8* addrspace(1)* %40 to [0 x i8 addrspace(1)*] addrspace(1)*
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 256)
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 0
  store i8 addrspace(1)* %42, i8 addrspace(1)* addrspace(1)* %43
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 256)
  %45 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 1
  store i8 addrspace(1)* %44, i8 addrspace(1)* addrspace(1)* %45
  %46 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %38, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %46
  %47 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %38 to i8 addrspace(1)*
  %48 = getelementptr i8, i8 addrspace(1)* %47, i64 1297036692682702852
  store i8 addrspace(1)* %48, i8 addrspace(1)** %2
  %49 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root2, i64 3)
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179694), i8 addrspace(1)* %50)
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289653618), i8 addrspace(1)* %51)
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_mapping_init_member(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742382452), i8 addrspace(1)* %52)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %3
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %53, i8 addrspace(1)** %mat
  %54 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root3, i64 2)
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %mat
  %56 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %55)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %54, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %56)
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %54, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475961216429673), i8 addrspace(1)* %57)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %4
  %58 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root4, i64 4)
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_mapping_init_member(i8 addrspace(1)* %58, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541171954785), i8 addrspace(1)* %59)
  %60 = zext i1 1 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61
  call void @_bal_mapping_init_member(i8 addrspace(1)* %58, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541288801644), i8 addrspace(1)* %62)
  %63 = zext i1 0 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  call void @_bal_mapping_init_member(i8 addrspace(1)* %58, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098306584869366125), i8 addrspace(1)* %65)
  %66 = zext i1 0 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67
  call void @_bal_mapping_init_member(i8 addrspace(1)* %58, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944087087474), i8 addrspace(1)* %68)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %5
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %69, i8 addrspace(1)** %bdd
  %70 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root5, i64 1)
  %71 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70, i64 0, i32 3
  %72 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %71, align 8
  %73 = bitcast i8* addrspace(1)* %72 to [0 x i8 addrspace(1)*] addrspace(1)*
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %bdd
  %75 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %74)
  %76 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 0
  store i8 addrspace(1)* %75, i8 addrspace(1)* addrspace(1)* %76
  %77 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %77
  %78 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70 to i8 addrspace(1)*
  %79 = getelementptr i8, i8 addrspace(1)* %78, i64 1297036692682702852
  store i8 addrspace(1)* %79, i8 addrspace(1)** %6
  %80 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root6, i64 3)
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %80, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621229665), i8 addrspace(1)* %81)
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 262144)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %80, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037604723), i8 addrspace(1)* %82)
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_mapping_init_member(i8 addrspace(1)* %80, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str13 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %83)
  store i8 addrspace(1)* %80, i8 addrspace(1)** %7
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %84, i8 addrspace(1)** %semType
  %85 = zext i1 0 to i64, !dbg !8
  %86 = or i64 %85, 72057594037927936, !dbg !8
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %semType
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = lshr i64 %91, 56
  %93 = shl i64 1, %92
  %94 = and i64 %93, 524296
  %95 = icmp ne i64 %94, 0
  store i1 %95, i1* %9
  %96 = load i1, i1* %9
  br i1 %96, label %97, label %156
97:
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %semType
  store i8 addrspace(1)* %98, i8 addrspace(1)** %semType.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3060307463215345507)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !9
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %semType.1
  %100 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %99, i64 2)
  %101 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %99, i8 addrspace(1)* %100)
  store i8 addrspace(1)* %101, i8 addrspace(1)** %11
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %103 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %102)
  store i8 addrspace(1)* %103, i8 addrspace(1)** %list
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %list
  %105 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %104, i64 72057594037927928)
  %106 = bitcast i8 addrspace(1)* %105 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %107 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  %108 = load i64, i64 addrspace(1)* %107, align 8
  %109 = icmp ult i64 0, %108
  br i1 %109, label %161, label %172
110:
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %st
  %112 = call i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)* %111, i32* @_Be04root4)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %st.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703330)), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !10
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %st.1
  %114 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %113, i64 0)
  %115 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %113, i8 addrspace(1)* %114)
  store i8 addrspace(1)* %115, i8 addrspace(1)** %15
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  store i8 addrspace(1)* %116, i8 addrspace(1)** %atom
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %atom
  %118 = addrspacecast i8 addrspace(1)* %117 to i8*
  %119 = ptrtoint i8* %118 to i64
  %120 = and i64 %119, 2233785415175766016
  %121 = lshr i64 %120, 56
  %122 = shl i64 1, %121
  %123 = and i64 %122, 524296
  %124 = icmp ne i64 %123, 0
  store i1 %124, i1* %16
  %125 = load i1, i1* %16
  br i1 %125, label %126, label %154
126:
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %atom
  store i8 addrspace(1)* %127, i8 addrspace(1)** %atom.1
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %atom.1
  %129 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %128, i64 1)
  %130 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %129)
  store i64 %130, i64* %17
  %131 = load i64, i64* %17, !dbg !11
  %132 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %131), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %132), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !11
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %atom.1
  %134 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %133, i64 0)
  %135 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %133, i8 addrspace(1)* %134)
  store i8 addrspace(1)* %135, i8 addrspace(1)** %19
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  store i8 addrspace(1)* %136, i8 addrspace(1)** %t
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %t
  %138 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root8, i8 addrspace(1)* %137)
  store i1 %138, i1* %20
  %139 = load i1, i1* %20
  br i1 %139, label %140, label %153
140:
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %t
  %142 = call i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)* %141, i32* @_Be04root2)
  store i8 addrspace(1)* %142, i8 addrspace(1)** %t.1
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %t.1
  %144 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %143, i64 0)
  %145 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %143, i8 addrspace(1)* %144)
  store i8 addrspace(1)* %145, i8 addrspace(1)** %21
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  store i8 addrspace(1)* %146, i8 addrspace(1)** %names
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %names
  %148 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %147, i64 72057594037927928)
  %149 = bitcast i8 addrspace(1)* %148 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %150 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %149, i64 0, i32 1
  %151 = load i64, i64 addrspace(1)* %150, align 8
  %152 = icmp ult i64 0, %151
  br i1 %152, label %174, label %181
153:
  br label %154
154:
  br label %155
155:
  br label %156
156:
  ret void
157:
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %24
  call void @_bal_panic(i8 addrspace(1)* %158)
  unreachable
159:
  %160 = call i8 addrspace(1)* @_bal_panic_construct(i64 29956), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %160)
  unreachable
161:
  %162 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %106, i64 0, i32 0
  %163 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %162, align 8
  %164 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %163, i64 0, i32 1
  %165 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %164, align 8
  %166 = call i8 addrspace(1)* %165(i8 addrspace(1)* %104, i64 0)
  %167 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %104, i8 addrspace(1)* %166)
  store i8 addrspace(1)* %167, i8 addrspace(1)** %12
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %168, i8 addrspace(1)** %st
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %st
  %170 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root7, i8 addrspace(1)* %169)
  store i1 %170, i1* %13
  %171 = load i1, i1* %13
  br i1 %171, label %110, label %155
172:
  %173 = call i8 addrspace(1)* @_bal_panic_construct(i64 35333), !dbg !7
  store i8 addrspace(1)* %173, i8 addrspace(1)** %24
  br label %157
174:
  %175 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %149, i64 0, i32 0
  %176 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %175, align 8
  %177 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %176, i64 0, i32 1
  %178 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %177, align 8
  %179 = call i8 addrspace(1)* %178(i8 addrspace(1)* %147, i64 0)
  store i8 addrspace(1)* %179, i8 addrspace(1)** %22
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %180), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !12
  br label %153
181:
  %182 = call i8 addrspace(1)* @_bal_panic_construct(i64 37637), !dbg !7
  store i8 addrspace(1)* %182, i8 addrspace(1)** %24
  br label %157
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/semtype1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 117, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 134, column: 4, scope: !5)
!9 = !DILocation(line: 136, column: 8, scope: !5)
!10 = !DILocation(line: 140, column: 12, scope: !5)
!11 = !DILocation(line: 143, column: 16, scope: !5)
!12 = !DILocation(line: 147, column: 20, scope: !5)
