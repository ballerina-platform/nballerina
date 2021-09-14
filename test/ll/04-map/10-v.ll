@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"Wednesday\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Thursday\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Saturday\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
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
  br i1 %13, label %59, label %14
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
  %25 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 7, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  store i64 7, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %24, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %30
  %31 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702848
  store i8 addrspace(1)* %31, i8 addrspace(1)** %1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %32, i8 addrspace(1)** %days
  %33 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8386559, i64 0)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %34, i8 addrspace(1)** %dayNumber
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %36 = call i64 @_Barray__length(i8 addrspace(1)* %35)
  store i64 %36, i64* %3
  store i64 0, i64* %i
  br label %37
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %3
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %4
  %41 = load i1, i1* %4
  br i1 %41, label %46, label %42
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %44 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %43, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795))
  store i8 addrspace(1)* %44, i8 addrspace(1)** %8
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
46:
  %47 = load i64, i64* %i
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %49 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %48, i64 72057594037927935)
  %50 = bitcast i8 addrspace(1)* %49 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %51 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 1
  %52 = load i64, i64 addrspace(1)* %51, align 8
  %53 = icmp ult i64 %47, %52
  br i1 %53, label %61, label %71
54:
  %55 = load i64, i64* %i
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %i
  br label %37
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %58)
  unreachable
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %60)
  unreachable
61:
  %62 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 3
  %63 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %62, align 8
  %64 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 %47
  %65 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %64, align 8
  store i8 addrspace(1)* %65, i8 addrspace(1)** %5
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %67 = addrspacecast i8 addrspace(1)* %66 to i8*
  %68 = ptrtoint i8* %67 to i64
  %69 = and i64 %68, 2233785415175766016
  %70 = icmp eq i64 %69, 720575940379279360
  br i1 %70, label %73, label %77
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %10
  br label %57
73:
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  %74 = load i64, i64* %i
  %75 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %74, i64 1)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %87, label %79
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051)
  store i8 addrspace(1)* %78, i8 addrspace(1)** %10
  br label %57
79:
  %80 = extractvalue {i64, i1} %75, 0
  store i64 %80, i64* %7
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %83 = load i64, i64* %7
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83)
  %85 = call i64 @_bal_mapping_set(i8 addrspace(1)* %81, i8 addrspace(1)* %82, i8 addrspace(1)* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %90
87:
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049)
  store i8 addrspace(1)* %88, i8 addrspace(1)** %10
  br label %57
89:
  br label %54
90:
  %91 = or i64 %85, 2048
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 %91)
  store i8 addrspace(1)* %92, i8 addrspace(1)** %10
  br label %57
}
