@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"Wednesday\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Thursday\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Saturday\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %10 = alloca i8 addrspace(1)*
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
  br i1 %52, label %60, label %70
53:
  %54 = load i64, i64* %i
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %i
  br label %36
56:
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %57)
  unreachable
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %59)
  unreachable
60:
  %61 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 2
  %62 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %61, align 8
  %63 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %62, i64 0, i64 %46
  %64 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %63, align 8
  store i8 addrspace(1)* %64, i8 addrspace(1)** %5
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %66 = addrspacecast i8 addrspace(1)* %65 to i8*
  %67 = ptrtoint i8* %66 to i64
  %68 = and i64 %67, 2233785415175766016
  %69 = icmp eq i64 %68, 720575940379279360
  br i1 %69, label %72, label %76
70:
  %71 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797)
  store i8 addrspace(1)* %71, i8 addrspace(1)** %10
  br label %56
72:
  store i8 addrspace(1)* %65, i8 addrspace(1)** %6
  %73 = load i64, i64* %i
  %74 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %73, i64 1)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %86, label %78
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %77, i8 addrspace(1)** %10
  br label %56
78:
  %79 = extractvalue {i64, i1} %74, 0
  store i64 %79, i64* %7
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %82 = load i64, i64* %7
  %83 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %82)
  %84 = call i64 @_bal_mapping_set(i8 addrspace(1)* %80, i8 addrspace(1)* %81, i8 addrspace(1)* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %88, label %89
86:
  %87 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793)
  store i8 addrspace(1)* %87, i8 addrspace(1)** %10
  br label %56
88:
  br label %53
89:
  %90 = or i64 %84, 1792
  %91 = call i8 addrspace(1)* @_bal_panic_construct(i64 %90)
  store i8 addrspace(1)* %91, i8 addrspace(1)** %10
  br label %56
}
