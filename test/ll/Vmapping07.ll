@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"Wednesday\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Thursday\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Saturday\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i64 @_Barray__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
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
  br i1 %13, label %58, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 56)
  %16 = bitcast i8 addrspace(1)* %15 to [7 x i8 addrspace(1)*] addrspace(1)*
  %17 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857938253), i8 addrspace(1)* addrspace(1)* %17
  %18 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3060584505835615572), i8 addrspace(1)* addrspace(1)* %18
  %19 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %19
  %20 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %20
  %21 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 4
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857611334), i8 addrspace(1)* addrspace(1)* %21
  %22 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 5
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %22
  %23 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 6
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795), i8 addrspace(1)* addrspace(1)* %23
  %24 = bitcast [7 x i8 addrspace(1)*] addrspace(1)* %16 to [0 x i8 addrspace(1)*] addrspace(1)*
  %25 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  store i64 7, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 7, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %24, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %29
  %30 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702848
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %31, i8 addrspace(1)** %days
  %32 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %33, i8 addrspace(1)** %dayNumber
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %35 = call i64 @_Barray__length(i8 addrspace(1)* %34)
  store i64 %35, i64* %3
  store i64 0, i64* %i
  br label %36
36:
  %37 = load i64, i64* %i
  %38 = load i64, i64* %3
  %39 = icmp slt i64 %37, %38
  store i1 %39, i1* %4
  %40 = load i1, i1* %4
  br i1 %40, label %45, label %41
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %43 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %42, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795))
  store i8 addrspace(1)* %43, i8 addrspace(1)** %8
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
45:
  %46 = load i64, i64* %i
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 72057594037927935)
  %49 = bitcast i8 addrspace(1)* %48 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %50 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 0
  %51 = load i64, i64 addrspace(1)* %50, align 8
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %59, label %69
53:
  %54 = load i64, i64* %i
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %i
  br label %36
56:
  %57 = load i64, i64* %10
  call void @_bal_panic(i64 %57)
  unreachable
58:
  call void @_bal_panic(i64 772)
  unreachable
59:
  %60 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 2
  %61 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %60, align 8
  %62 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %61, i64 0, i64 %46
  %63 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %62, align 8
  store i8 addrspace(1)* %63, i8 addrspace(1)** %5
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %65 = addrspacecast i8 addrspace(1)* %64 to i8*
  %66 = ptrtoint i8* %65 to i64
  %67 = and i64 %66, 2233785415175766016
  %68 = icmp eq i64 %67, 720575940379279360
  br i1 %68, label %70, label %74
69:
  store i64 1797, i64* %10
  br label %56
70:
  store i8 addrspace(1)* %64, i8 addrspace(1)** %6
  %71 = load i64, i64* %i
  %72 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %71, i64 1)
  %73 = extractvalue {i64, i1} %72, 1
  br i1 %73, label %83, label %75
74:
  store i64 1795, i64* %10
  br label %56
75:
  %76 = extractvalue {i64, i1} %72, 0
  store i64 %76, i64* %7
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %79 = load i64, i64* %7
  %80 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %79)
  %81 = call i64 @_bal_mapping_set(i8 addrspace(1)* %77, i8 addrspace(1)* %78, i8 addrspace(1)* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %84, label %85
83:
  store i64 1793, i64* %10
  br label %56
84:
  br label %53
85:
  %86 = or i64 %81, 1792
  store i64 %86, i64* %10
  br label %56
}
