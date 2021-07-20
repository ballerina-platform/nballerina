@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 6, [7 x i8] c"Monday\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 7, [7 x i8] c"Tuesday"}, align 8
@.str2 = internal unnamed_addr constant {i8, [15 x i8]} {i8 9, [15 x i8] c"Wednesday\00\00\00\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i8, [15 x i8]} {i8 8, [15 x i8] c"Thursday\00\00\00\00\00\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i8, [7 x i8]} {i8 6, [7 x i8] c"Friday\00"}, align 8
@.str5 = internal unnamed_addr constant {i8, [15 x i8]} {i8 8, [15 x i8] c"Saturday\00\00\00\00\00\00\00"}, align 8
@.str6 = internal unnamed_addr constant {i8, [7 x i8]} {i8 6, [7 x i8] c"Sunday\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i64 @_Barray__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %days = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %dayNumber = alloca i8 addrspace(1)*
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %82, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 56)
  %16 = bitcast i8 addrspace(1)* %15 to [7 x i8 addrspace(1)*] addrspace(1)*
  %17 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %18 = addrspacecast i8* %17 to i8 addrspace(1)*
  %19 = getelementptr i8, i8 addrspace(1)* %18, i64 720575940379279360
  %20 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 0
  store i8 addrspace(1)* %19, i8 addrspace(1)* addrspace(1)* %20
  %21 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %22 = addrspacecast i8* %21 to i8 addrspace(1)*
  %23 = getelementptr i8, i8 addrspace(1)* %22, i64 720575940379279360
  %24 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 1
  store i8 addrspace(1)* %23, i8 addrspace(1)* addrspace(1)* %24
  %25 = bitcast {i8, [15 x i8]}* @.str2 to i8*
  %26 = addrspacecast i8* %25 to i8 addrspace(1)*
  %27 = getelementptr i8, i8 addrspace(1)* %26, i64 720575940379279360
  %28 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 2
  store i8 addrspace(1)* %27, i8 addrspace(1)* addrspace(1)* %28
  %29 = bitcast {i8, [15 x i8]}* @.str3 to i8*
  %30 = addrspacecast i8* %29 to i8 addrspace(1)*
  %31 = getelementptr i8, i8 addrspace(1)* %30, i64 720575940379279360
  %32 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 3
  store i8 addrspace(1)* %31, i8 addrspace(1)* addrspace(1)* %32
  %33 = bitcast {i8, [7 x i8]}* @.str4 to i8*
  %34 = addrspacecast i8* %33 to i8 addrspace(1)*
  %35 = getelementptr i8, i8 addrspace(1)* %34, i64 720575940379279360
  %36 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 4
  store i8 addrspace(1)* %35, i8 addrspace(1)* addrspace(1)* %36
  %37 = bitcast {i8, [15 x i8]}* @.str5 to i8*
  %38 = addrspacecast i8* %37 to i8 addrspace(1)*
  %39 = getelementptr i8, i8 addrspace(1)* %38, i64 720575940379279360
  %40 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 5
  store i8 addrspace(1)* %39, i8 addrspace(1)* addrspace(1)* %40
  %41 = bitcast {i8, [7 x i8]}* @.str6 to i8*
  %42 = addrspacecast i8* %41 to i8 addrspace(1)*
  %43 = getelementptr i8, i8 addrspace(1)* %42, i64 720575940379279360
  %44 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 6
  store i8 addrspace(1)* %43, i8 addrspace(1)* addrspace(1)* %44
  %45 = bitcast [7 x i8 addrspace(1)*] addrspace(1)* %16 to [0 x i8 addrspace(1)*] addrspace(1)*
  %46 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %47 = bitcast i8 addrspace(1)* %46 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 0
  store i64 7, i64 addrspace(1)* %48
  %49 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 1
  store i64 7, i64 addrspace(1)* %49
  %50 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %45, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50
  %51 = getelementptr i8, i8 addrspace(1)* %46, i64 1297036692682702848
  store i8 addrspace(1)* %51, i8 addrspace(1)** %1
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %52, i8 addrspace(1)** %days
  %53 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %2
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %54, i8 addrspace(1)** %dayNumber
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %56 = call i64 @_Barray__length(i8 addrspace(1)* %55)
  store i64 %56, i64* %3
  store i64 0, i64* %i
  br label %57
57:
  %58 = load i64, i64* %i
  %59 = load i64, i64* %3
  %60 = icmp slt i64 %58, %59
  store i1 %60, i1* %4
  %61 = load i1, i1* %4
  br i1 %61, label %69, label %62
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %64 = bitcast {i8, [7 x i8]}* @.str6 to i8*
  %65 = addrspacecast i8* %64 to i8 addrspace(1)*
  %66 = getelementptr i8, i8 addrspace(1)* %65, i64 720575940379279360
  %67 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %63, i8 addrspace(1)* %66)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %8
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_Bio__println(i8 addrspace(1)* %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
69:
  %70 = load i64, i64* %i
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %72 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %71, i64 72057594037927935)
  %73 = bitcast i8 addrspace(1)* %72 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %74 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 0
  %75 = load i64, i64 addrspace(1)* %74, align 8
  %76 = icmp ult i64 %70, %75
  br i1 %76, label %83, label %93
77:
  %78 = load i64, i64* %i
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %i
  br label %57
80:
  %81 = load i64, i64* %10
  call void @_bal_panic(i64 %81)
  unreachable
82:
  call void @_bal_panic(i64 772)
  unreachable
83:
  %84 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 2
  %85 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %84, align 8
  %86 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %85, i64 0, i64 %70
  %87 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %86, align 8
  store i8 addrspace(1)* %87, i8 addrspace(1)** %5
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = icmp eq i64 %91, 720575940379279360
  br i1 %92, label %94, label %98
93:
  store i64 1797, i64* %10
  br label %80
94:
  store i8 addrspace(1)* %88, i8 addrspace(1)** %6
  %95 = load i64, i64* %i
  %96 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %95, i64 1)
  %97 = extractvalue {i64, i1} %96, 1
  br i1 %97, label %105, label %99
98:
  store i64 1795, i64* %10
  br label %80
99:
  %100 = extractvalue {i64, i1} %96, 0
  store i64 %100, i64* %7
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %103 = load i64, i64* %7
  %104 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %103)
  call void @_bal_mapping_set(i8 addrspace(1)* %101, i8 addrspace(1)* %102, i8 addrspace(1)* %104)
  br label %77
105:
  store i64 1793, i64* %10
  br label %80
}
