@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [8 x i8] c"1E+6144\00", align 8
@.dec2 = internal unnamed_addr constant [7 x i8] c"1.2E+3\00", align 8
@_Bi04root0 = external constant {i32}
@.dec3 = internal unnamed_addr constant [10 x i8] c"2.345E+32\00", align 8
@_Bi04root1 = external constant {i32}
@.dec4 = internal unnamed_addr constant [3 x i8] c"12\00", align 8
@.dec5 = internal unnamed_addr constant [7 x i8] c"1.2E+2\00", align 8
@.dec6 = internal unnamed_addr constant [8 x i8] c"1.21E+3\00", align 8
@.dec7 = internal unnamed_addr constant [4 x i8] c"1.1\00", align 8
@.dec8 = internal unnamed_addr constant [7 x i8] c"2.1E+2\00", align 8
@.dec9 = internal unnamed_addr constant [7 x i8] c"4.2E+3\00", align 8
@.dec10 = internal unnamed_addr constant [5 x i8] c"3E+2\00", align 8
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@.dec11 = internal unnamed_addr constant [4 x i8] c"1.2\00", align 8
@.dec12 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@_Bi04root4 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define internal i8 addrspace(1)* @_B_bar(i8 addrspace(1)* %0) !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %a
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  ret i8 addrspace(1)* %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %a1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %a2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %r = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %arr = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %arr1 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %arr2 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %m1 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %m2 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8
  %38 = load i8*, i8** @_bal_stack_guard
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %77, label %40
40:
  %41 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %41, i8 addrspace(1)** %a1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %a1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !11
  %43 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %43, i8 addrspace(1)** %a2
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %a2, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  %45 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec2 to i8*)), !dbg !13
  %46 = call i8 addrspace(1)* @_B_bar(i8 addrspace(1)* %45), !dbg !13
  store i8 addrspace(1)* %46, i8 addrspace(1)** %3, !dbg !13
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  %48 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %49 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([10 x i8]* @.dec3 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %48, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* %49)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %5
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %50, i8 addrspace(1)** %r
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %52 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %51, i64 0)
  %53 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %51, i8 addrspace(1)* %52)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %6
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %6, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !15
  %55 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 3)
  %56 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %55, i64 0, i32 3
  %57 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %56, align 8
  %58 = bitcast i8* addrspace(1)* %57 to [0 x i8 addrspace(1)*] addrspace(1)*
  %59 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec4 to i8*))
  %60 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 0
  store i8 addrspace(1)* %59, i8 addrspace(1)* addrspace(1)* %60
  %61 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec5 to i8*))
  %62 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 1
  store i8 addrspace(1)* %61, i8 addrspace(1)* addrspace(1)* %62
  %63 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec6 to i8*))
  %64 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 2
  store i8 addrspace(1)* %63, i8 addrspace(1)* addrspace(1)* %64
  %65 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %55, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %65
  %66 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %55 to i8 addrspace(1)*
  %67 = getelementptr i8, i8 addrspace(1)* %66, i64 1297036692682702852
  store i8 addrspace(1)* %67, i8 addrspace(1)** %8
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %68, i8 addrspace(1)** %arr
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %70 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %69, i64 72057594037927928)
  %71 = bitcast i8 addrspace(1)* %70 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %72 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %71, i64 0, i32 1
  %73 = load i64, i64 addrspace(1)* %72, align 8
  %74 = icmp ult i64 0, %73
  br i1 %74, label %79, label %93
75:
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  call void @_bal_panic(i8 addrspace(1)* %76)
  unreachable
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %78)
  unreachable
79:
  %80 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %71, i64 0, i32 0
  %81 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %80, align 8
  %82 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %81, i64 0, i32 1
  %83 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %82, align 8
  %84 = call i8 addrspace(1)* %83(i8 addrspace(1)* %69, i64 0)
  %85 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %69, i8 addrspace(1)* %84)
  store i8 addrspace(1)* %85, i8 addrspace(1)** %9
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !16
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %88 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %87, i64 72057594037927928)
  %89 = bitcast i8 addrspace(1)* %88 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %90 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %89, i64 0, i32 1
  %91 = load i64, i64 addrspace(1)* %90, align 8
  %92 = icmp ult i64 1, %91
  br i1 %92, label %95, label %109
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 8197), !dbg !10
  store i8 addrspace(1)* %94, i8 addrspace(1)** %36
  br label %75
95:
  %96 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %89, i64 0, i32 0
  %97 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %96, align 8
  %98 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %97, i64 0, i32 1
  %99 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %98, align 8
  %100 = call i8 addrspace(1)* %99(i8 addrspace(1)* %87, i64 1)
  %101 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %87, i8 addrspace(1)* %100)
  store i8 addrspace(1)* %101, i8 addrspace(1)** %11
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %102), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !17
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %104 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %103, i64 72057594037927928)
  %105 = bitcast i8 addrspace(1)* %104 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %106 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %105, i64 0, i32 1
  %107 = load i64, i64 addrspace(1)* %106, align 8
  %108 = icmp ult i64 2, %107
  br i1 %108, label %111, label %159
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 8453), !dbg !10
  store i8 addrspace(1)* %110, i8 addrspace(1)** %36
  br label %75
111:
  %112 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %105, i64 0, i32 0
  %113 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %112, align 8
  %114 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %113, i64 0, i32 1
  %115 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %114, align 8
  %116 = call i8 addrspace(1)* %115(i8 addrspace(1)* %103, i64 2)
  %117 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %103, i8 addrspace(1)* %116)
  store i8 addrspace(1)* %117, i8 addrspace(1)** %13
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %118), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !18
  %119 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 2)
  %120 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %119, i64 0, i32 3
  %121 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %120, align 8
  %122 = bitcast i8* addrspace(1)* %121 to [0 x i8 addrspace(1)*] addrspace(1)*
  %123 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec7 to i8*))
  %124 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %122, i64 0, i64 0
  store i8 addrspace(1)* %123, i8 addrspace(1)* addrspace(1)* %124
  %125 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec8 to i8*))
  %126 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %122, i64 0, i64 1
  store i8 addrspace(1)* %125, i8 addrspace(1)* addrspace(1)* %126
  %127 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %119, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %127
  %128 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %119 to i8 addrspace(1)*
  %129 = getelementptr i8, i8 addrspace(1)* %128, i64 1297036692682702852
  store i8 addrspace(1)* %129, i8 addrspace(1)** %15
  %130 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 2)
  %131 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %130, i64 0, i32 3
  %132 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %131, align 8
  %133 = bitcast i8* addrspace(1)* %132 to [0 x i8 addrspace(1)*] addrspace(1)*
  %134 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec9 to i8*))
  %135 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %133, i64 0, i64 0
  store i8 addrspace(1)* %134, i8 addrspace(1)* addrspace(1)* %135
  %136 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec10 to i8*))
  %137 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %133, i64 0, i64 1
  store i8 addrspace(1)* %136, i8 addrspace(1)* addrspace(1)* %137
  %138 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %130, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %138
  %139 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %130 to i8 addrspace(1)*
  %140 = getelementptr i8, i8 addrspace(1)* %139, i64 1297036692682702852
  store i8 addrspace(1)* %140, i8 addrspace(1)** %16
  %141 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root2, i64 2)
  %142 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %141, i64 0, i32 3
  %143 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %142, align 8
  %144 = bitcast i8* addrspace(1)* %143 to [0 x i8 addrspace(1)*] addrspace(1)*
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %146 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 0
  store i8 addrspace(1)* %145, i8 addrspace(1)* addrspace(1)* %146
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %148 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 1
  store i8 addrspace(1)* %147, i8 addrspace(1)* addrspace(1)* %148
  %149 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %141, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %149
  %150 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %141 to i8 addrspace(1)*
  %151 = getelementptr i8, i8 addrspace(1)* %150, i64 1297036692682702852
  store i8 addrspace(1)* %151, i8 addrspace(1)** %17
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  store i8 addrspace(1)* %152, i8 addrspace(1)** %arr1
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %arr1
  %154 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %153, i64 72057594037927928)
  %155 = bitcast i8 addrspace(1)* %154 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %156 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %155, i64 0, i32 1
  %157 = load i64, i64 addrspace(1)* %156, align 8
  %158 = icmp ult i64 0, %157
  br i1 %158, label %161, label %175
159:
  %160 = call i8 addrspace(1)* @_bal_panic_construct(i64 8709), !dbg !10
  store i8 addrspace(1)* %160, i8 addrspace(1)** %36
  br label %75
161:
  %162 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %155, i64 0, i32 0
  %163 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %162, align 8
  %164 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %163, i64 0, i32 1
  %165 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %164, align 8
  %166 = call i8 addrspace(1)* %165(i8 addrspace(1)* %153, i64 0)
  %167 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %153, i8 addrspace(1)* %166)
  store i8 addrspace(1)* %167, i8 addrspace(1)** %18
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  store i8 addrspace(1)* %168, i8 addrspace(1)** %arr2
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %arr2
  %170 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %169, i64 72057594037927928)
  %171 = bitcast i8 addrspace(1)* %170 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %172 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %171, i64 0, i32 1
  %173 = load i64, i64 addrspace(1)* %172, align 8
  %174 = icmp ult i64 0, %173
  br i1 %174, label %177, label %191
175:
  %176 = call i8 addrspace(1)* @_bal_panic_construct(i64 9477), !dbg !10
  store i8 addrspace(1)* %176, i8 addrspace(1)** %36
  br label %75
177:
  %178 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %171, i64 0, i32 0
  %179 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %178, align 8
  %180 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %179, i64 0, i32 1
  %181 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %180, align 8
  %182 = call i8 addrspace(1)* %181(i8 addrspace(1)* %169, i64 0)
  %183 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %169, i8 addrspace(1)* %182)
  store i8 addrspace(1)* %183, i8 addrspace(1)** %19
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %184), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !19
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %arr2
  %186 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %185, i64 72057594037927928)
  %187 = bitcast i8 addrspace(1)* %186 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %188 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %187, i64 0, i32 1
  %189 = load i64, i64 addrspace(1)* %188, align 8
  %190 = icmp ult i64 1, %189
  br i1 %190, label %193, label %207
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 9733), !dbg !10
  store i8 addrspace(1)* %192, i8 addrspace(1)** %36
  br label %75
193:
  %194 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %187, i64 0, i32 0
  %195 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %194, align 8
  %196 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %195, i64 0, i32 1
  %197 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %196, align 8
  %198 = call i8 addrspace(1)* %197(i8 addrspace(1)* %185, i64 1)
  %199 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %185, i8 addrspace(1)* %198)
  store i8 addrspace(1)* %199, i8 addrspace(1)** %21
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %200), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !20
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %arr1
  %202 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %201, i64 72057594037927928)
  %203 = bitcast i8 addrspace(1)* %202 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %204 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %203, i64 0, i32 1
  %205 = load i64, i64 addrspace(1)* %204, align 8
  %206 = icmp ult i64 1, %205
  br i1 %206, label %209, label %255
207:
  %208 = call i8 addrspace(1)* @_bal_panic_construct(i64 9989), !dbg !10
  store i8 addrspace(1)* %208, i8 addrspace(1)** %36
  br label %75
209:
  %210 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %203, i64 0, i32 0
  %211 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %210, align 8
  %212 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %211, i64 0, i32 1
  %213 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %212, align 8
  %214 = call i8 addrspace(1)* %213(i8 addrspace(1)* %201, i64 1)
  %215 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %201, i8 addrspace(1)* %214)
  store i8 addrspace(1)* %215, i8 addrspace(1)** %23
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !21
  %217 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %216), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %217), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !21
  %218 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root3, i64 2)
  %219 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec11 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %218, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376), i8 addrspace(1)* %219)
  %220 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec5 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %218, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848632), i8 addrspace(1)* %220)
  store i8 addrspace(1)* %218, i8 addrspace(1)** %25
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  store i8 addrspace(1)* %221, i8 addrspace(1)** %m1
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %223 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %222, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376))
  %224 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %222, i8 addrspace(1)* %223)
  store i8 addrspace(1)* %224, i8 addrspace(1)** %26
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %225), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !22
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %227 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %226, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848632))
  %228 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %226, i8 addrspace(1)* %227)
  store i8 addrspace(1)* %228, i8 addrspace(1)** %28
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %28, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %229), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !23
  %230 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 2)
  %231 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %230, i64 0, i32 3
  %232 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %231, align 8
  %233 = bitcast i8* addrspace(1)* %232 to [0 x i8 addrspace(1)*] addrspace(1)*
  %234 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  %235 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %233, i64 0, i64 0
  store i8 addrspace(1)* %234, i8 addrspace(1)* addrspace(1)* %235
  %236 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec12 to i8*))
  %237 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %233, i64 0, i64 1
  store i8 addrspace(1)* %236, i8 addrspace(1)* addrspace(1)* %237
  %238 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %230, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %238
  %239 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %230 to i8 addrspace(1)*
  %240 = getelementptr i8, i8 addrspace(1)* %239, i64 1297036692682702852
  store i8 addrspace(1)* %240, i8 addrspace(1)** %30
  %241 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root4, i64 1)
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  call void @_bal_mapping_init_member(i8 addrspace(1)* %241, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376), i8 addrspace(1)* %242)
  store i8 addrspace(1)* %241, i8 addrspace(1)** %31
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  store i8 addrspace(1)* %243, i8 addrspace(1)** %m2
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %245 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %244, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376))
  %246 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %244, i8 addrspace(1)* %245)
  store i8 addrspace(1)* %246, i8 addrspace(1)** %32
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  %248 = addrspacecast i8 addrspace(1)* %247 to i8*
  %249 = ptrtoint i8* %248 to i64
  %250 = and i64 %249, 2233785415175766016
  %251 = lshr i64 %250, 56
  %252 = shl i64 1, %251
  %253 = and i64 %252, 262148
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %257, label %265
255:
  %256 = call i8 addrspace(1)* @_bal_panic_construct(i64 10501), !dbg !10
  store i8 addrspace(1)* %256, i8 addrspace(1)** %36
  br label %75
257:
  store i8 addrspace(1)* %247, i8 addrspace(1)** %33
  %258 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  store i8 addrspace(1)* %258, i8 addrspace(1)** %x
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %260 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %259, i64 72057594037927928)
  %261 = bitcast i8 addrspace(1)* %260 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %262 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %261, i64 0, i32 1
  %263 = load i64, i64 addrspace(1)* %262, align 8
  %264 = icmp ult i64 0, %263
  br i1 %264, label %267, label %275
265:
  %266 = call i8 addrspace(1)* @_bal_panic_construct(i64 12291), !dbg !10
  store i8 addrspace(1)* %266, i8 addrspace(1)** %36
  br label %75
267:
  %268 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %261, i64 0, i32 0
  %269 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %268, align 8
  %270 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %269, i64 0, i32 1
  %271 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %270, align 8
  %272 = call i8 addrspace(1)* %271(i8 addrspace(1)* %259, i64 0)
  %273 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %259, i8 addrspace(1)* %272)
  store i8 addrspace(1)* %273, i8 addrspace(1)** %34
  %274 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %274), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !24
  ret void
275:
  %276 = call i8 addrspace(1)* @_bal_panic_construct(i64 12549), !dbg !10
  store i8 addrspace(1)* %276, i8 addrspace(1)** %36
  br label %75
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/any1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 13, column: 4, scope: !7)
!12 = !DILocation(line: 25, column: 4, scope: !7)
!13 = !DILocation(line: 26, column: 15, scope: !7)
!14 = !DILocation(line: 26, column: 4, scope: !7)
!15 = !DILocation(line: 29, column: 4, scope: !7)
!16 = !DILocation(line: 32, column: 4, scope: !7)
!17 = !DILocation(line: 33, column: 4, scope: !7)
!18 = !DILocation(line: 34, column: 4, scope: !7)
!19 = !DILocation(line: 38, column: 4, scope: !7)
!20 = !DILocation(line: 39, column: 4, scope: !7)
!21 = !DILocation(line: 41, column: 4, scope: !7)
!22 = !DILocation(line: 44, column: 4, scope: !7)
!23 = !DILocation(line: 45, column: 4, scope: !7)
!24 = !DILocation(line: 49, column: 4, scope: !7)
