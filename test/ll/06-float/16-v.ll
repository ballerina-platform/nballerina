@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"not-float\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %nan0 = alloca double
  %nan1 = alloca double
  %pInf = alloca double
  %nInf = alloca double
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
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %82, label %34
34:
  store double 0x7FF8000000000000, double* %nan0
  store double 0x7FF8000000000000, double* %nan1
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %35 = call i8 addrspace(1)* @_B_exactEq(double 42.0, double 42.0), !dbg !16
  store i8 addrspace(1)* %35, i8 addrspace(1)** %1, !dbg !16
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !17
  %37 = call i8 addrspace(1)* @_B_exactEq(double 1.0, double 2.0), !dbg !18
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3, !dbg !18
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !19
  %39 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double 0.0), !dbg !20
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5, !dbg !20
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !21
  %41 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double -0.0), !dbg !22
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7, !dbg !22
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !23
  %43 = load double, double* %nan0, !dbg !24
  %44 = load double, double* %nan1, !dbg !24
  %45 = call i8 addrspace(1)* @_B_exactEq(double %43, double %44), !dbg !24
  store i8 addrspace(1)* %45, i8 addrspace(1)** %9, !dbg !24
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !25
  %47 = load double, double* %nan0, !dbg !26
  %48 = call i8 addrspace(1)* @_B_exactEq(double %47, double 1.0), !dbg !26
  store i8 addrspace(1)* %48, i8 addrspace(1)** %11, !dbg !26
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !27
  %50 = load double, double* %nan0, !dbg !28
  %51 = load double, double* %nInf, !dbg !28
  %52 = call i8 addrspace(1)* @_B_exactEq(double %50, double %51), !dbg !28
  store i8 addrspace(1)* %52, i8 addrspace(1)** %13, !dbg !28
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !29
  %54 = load double, double* %pInf, !dbg !30
  %55 = load double, double* %nInf, !dbg !30
  %56 = call i8 addrspace(1)* @_B_exactEq(double %54, double %55), !dbg !30
  store i8 addrspace(1)* %56, i8 addrspace(1)** %15, !dbg !30
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !31
  %58 = load double, double* %nInf, !dbg !32
  %59 = load double, double* %pInf, !dbg !32
  %60 = call i8 addrspace(1)* @_B_exactEq(double %58, double %59), !dbg !32
  store i8 addrspace(1)* %60, i8 addrspace(1)** %17, !dbg !32
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !33
  %62 = load double, double* %pInf, !dbg !34
  %63 = load double, double* %pInf, !dbg !34
  %64 = call i8 addrspace(1)* @_B_exactEq(double %62, double %63), !dbg !34
  store i8 addrspace(1)* %64, i8 addrspace(1)** %19, !dbg !34
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !35
  %66 = load double, double* %nInf, !dbg !36
  %67 = load double, double* %nInf, !dbg !36
  %68 = call i8 addrspace(1)* @_B_exactEq(double %66, double %67), !dbg !36
  store i8 addrspace(1)* %68, i8 addrspace(1)** %21, !dbg !36
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !37
  %70 = load double, double* %nInf, !dbg !38
  %71 = call i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), double %70), !dbg !38
  store i8 addrspace(1)* %71, i8 addrspace(1)** %23, !dbg !38
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !39
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !40
  %74 = call i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* %73, double 1.0), !dbg !40
  store i8 addrspace(1)* %74, i8 addrspace(1)** %25, !dbg !40
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !41
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !42
  %77 = call i8 addrspace(1)* @_B_exactEqFA(double 1.0, i8 addrspace(1)* %76), !dbg !42
  store i8 addrspace(1)* %77, i8 addrspace(1)** %27, !dbg !42
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !43
  %79 = call i8 addrspace(1)* @_bal_float_to_tagged(double 8.0), !dbg !44
  %80 = call i8 addrspace(1)* @_B_exactEqFA(double 8.0, i8 addrspace(1)* %79), !dbg !44
  store i8 addrspace(1)* %80, i8 addrspace(1)** %29, !dbg !44
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !45
  ret void
82:
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %83)
  unreachable
}
define internal i8 addrspace(1)* @_B_exactEq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %b1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %b3 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %43, label %11
11:
  store double %0, double* %f1
  store double %1, double* %f2
  %12 = load double, double* %f1, !dbg !47
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double %12), !dbg !47
  %14 = load double, double* %f2, !dbg !47
  %15 = call i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* %13, double %14), !dbg !47
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3, !dbg !47
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %16, i8 addrspace(1)** %b1
  %17 = load double, double* %f1, !dbg !48
  %18 = load double, double* %f2, !dbg !48
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double %18), !dbg !48
  %20 = call i8 addrspace(1)* @_B_exactEqFA(double %17, i8 addrspace(1)* %19), !dbg !48
  store i8 addrspace(1)* %20, i8 addrspace(1)** %4, !dbg !48
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %21, i8 addrspace(1)** %b2
  %22 = load double, double* %f1, !dbg !49
  %23 = call i8 addrspace(1)* @_bal_float_to_tagged(double %22), !dbg !49
  %24 = load double, double* %f2, !dbg !49
  %25 = call i8 addrspace(1)* @_bal_float_to_tagged(double %24), !dbg !49
  %26 = call i8 addrspace(1)* @_B_exactEqAA(i8 addrspace(1)* %23, i8 addrspace(1)* %25), !dbg !49
  store i8 addrspace(1)* %26, i8 addrspace(1)** %5, !dbg !49
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %27, i8 addrspace(1)** %b3
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %30 = call i1 @_bal_string_eq(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  %31 = xor i1 %30, 1
  store i1 %31, i1* %6
  %32 = load i1, i1* %6
  br i1 %32, label %33, label %34
33:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848353)
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %b3
  %37 = call i1 @_bal_string_eq(i8 addrspace(1)* %35, i8 addrspace(1)* %36)
  %38 = xor i1 %37, 1
  store i1 %38, i1* %7
  %39 = load i1, i1* %7
  br i1 %39, label %40, label %41
40:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848609)
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %42
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 7428), !dbg !46
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
}
define internal i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* %0, double %1) !dbg !9 {
  %f1 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %22, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %f1
  store double %1, double* %f2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %11 = load double, double* %f2
  %12 = addrspacecast i8 addrspace(1)* %10 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %24, label %27
16:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090)
17:
  %18 = load i1, i1* %eq
  br i1 %18, label %19, label %20
19:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780)
20:
  br label %21
21:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030)
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 10756), !dbg !50
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %10)
  %26 = call i1 @_bal_float_exact_eq(double %25, double %11)
  store i1 %26, i1* %3
  br label %28
27:
  store i1 0, i1* %3
  br label %28
28:
  %29 = load i1, i1* %3
  store i1 %29, i1* %eq
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %31 = load double, double* %f2
  %32 = addrspacecast i8 addrspace(1)* %30 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 576460752303423488
  br i1 %35, label %36, label %40
36:
  %37 = call double @_bal_tagged_to_float(i8 addrspace(1)* %30)
  %38 = call i1 @_bal_float_exact_eq(double %37, double %31)
  %39 = xor i1 %38, 1
  store i1 %39, i1* %4
  br label %41
40:
  store i1 1, i1* %4
  br label %41
41:
  %42 = load i1, i1* %4
  store i1 %42, i1* %neEq
  %43 = load i1, i1* %eq
  %44 = load i1, i1* %neEq
  %45 = icmp eq i1 %43, %44
  store i1 %45, i1* %5
  %46 = load i1, i1* %5
  br i1 %46, label %16, label %17
}
define internal i8 addrspace(1)* @_B_exactEqFA(double %0, i8 addrspace(1)* %1) !dbg !11 {
  %f1 = alloca double
  %f2 = alloca i8 addrspace(1)*
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %22, label %9
9:
  store double %0, double* %f1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %f2
  %10 = load double, double* %f1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %24, label %27
16:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091)
17:
  %18 = load i1, i1* %eq
  br i1 %18, label %19, label %20
19:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780)
20:
  br label %21
21:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030)
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 13828), !dbg !51
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  %26 = call i1 @_bal_float_exact_eq(double %25, double %10)
  store i1 %26, i1* %3
  br label %28
27:
  store i1 0, i1* %3
  br label %28
28:
  %29 = load i1, i1* %3
  store i1 %29, i1* %eq
  %30 = load double, double* %f1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 576460752303423488
  br i1 %35, label %36, label %40
36:
  %37 = call double @_bal_tagged_to_float(i8 addrspace(1)* %31)
  %38 = call i1 @_bal_float_exact_eq(double %37, double %30)
  %39 = xor i1 %38, 1
  store i1 %39, i1* %4
  br label %41
40:
  store i1 1, i1* %4
  br label %41
41:
  %42 = load i1, i1* %4
  store i1 %42, i1* %neEq
  %43 = load i1, i1* %eq
  %44 = load i1, i1* %neEq
  %45 = icmp eq i1 %43, %44
  store i1 %45, i1* %5
  %46 = load i1, i1* %5
  br i1 %46, label %16, label %17
}
define internal i8 addrspace(1)* @_B_exactEqAA(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !13 {
  %f1 = alloca i8 addrspace(1)*
  %f2 = alloca i8 addrspace(1)*
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %29, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %f1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %f2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %12 = call i1 @_bal_exact_eq(i8 addrspace(1)* %10, i8 addrspace(1)* %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %16 = call i1 @_bal_exact_eq(i8 addrspace(1)* %14, i8 addrspace(1)* %15)
  %17 = xor i1 %16, 1
  store i1 %17, i1* %4
  %18 = load i1, i1* %4
  store i1 %18, i1* %neEq
  %19 = load i1, i1* %eq
  %20 = load i1, i1* %neEq
  %21 = icmp eq i1 %19, %20
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  br i1 %22, label %23, label %24
23:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901092)
24:
  %25 = load i1, i1* %eq
  br i1 %25, label %26, label %27
26:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780)
27:
  br label %28
28:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030)
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 16900), !dbg !52
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"exactEq", linkageName:"_B_exactEq", scope: !1, file: !1, line: 29, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"exactEqAF", linkageName:"_B_exactEqAF", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"exactEqFA", linkageName:"_B_exactEqFA", scope: !1, file: !1, line: 54, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"exactEqAA", linkageName:"_B_exactEqAA", scope: !1, file: !1, line: 66, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = !DILocation(line: 0, column: 0, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 15, scope: !5)
!21 = !DILocation(line: 13, column: 4, scope: !5)
!22 = !DILocation(line: 14, column: 15, scope: !5)
!23 = !DILocation(line: 14, column: 4, scope: !5)
!24 = !DILocation(line: 15, column: 15, scope: !5)
!25 = !DILocation(line: 15, column: 4, scope: !5)
!26 = !DILocation(line: 16, column: 15, scope: !5)
!27 = !DILocation(line: 16, column: 4, scope: !5)
!28 = !DILocation(line: 17, column: 15, scope: !5)
!29 = !DILocation(line: 17, column: 4, scope: !5)
!30 = !DILocation(line: 18, column: 15, scope: !5)
!31 = !DILocation(line: 18, column: 4, scope: !5)
!32 = !DILocation(line: 19, column: 15, scope: !5)
!33 = !DILocation(line: 19, column: 4, scope: !5)
!34 = !DILocation(line: 20, column: 15, scope: !5)
!35 = !DILocation(line: 20, column: 4, scope: !5)
!36 = !DILocation(line: 21, column: 15, scope: !5)
!37 = !DILocation(line: 21, column: 4, scope: !5)
!38 = !DILocation(line: 23, column: 15, scope: !5)
!39 = !DILocation(line: 23, column: 4, scope: !5)
!40 = !DILocation(line: 24, column: 15, scope: !5)
!41 = !DILocation(line: 24, column: 4, scope: !5)
!42 = !DILocation(line: 25, column: 15, scope: !5)
!43 = !DILocation(line: 25, column: 4, scope: !5)
!44 = !DILocation(line: 26, column: 15, scope: !5)
!45 = !DILocation(line: 26, column: 4, scope: !5)
!46 = !DILocation(line: 0, column: 0, scope: !7)
!47 = !DILocation(line: 30, column: 16, scope: !7)
!48 = !DILocation(line: 31, column: 16, scope: !7)
!49 = !DILocation(line: 32, column: 16, scope: !7)
!50 = !DILocation(line: 0, column: 0, scope: !9)
!51 = !DILocation(line: 0, column: 0, scope: !11)
!52 = !DILocation(line: 0, column: 0, scope: !13)
