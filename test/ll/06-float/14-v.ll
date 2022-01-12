@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"not-float\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %nan0 = alloca double
  %1 = alloca double
  %nan1 = alloca double
  %2 = alloca double
  %pInf = alloca double
  %3 = alloca double
  %nInf = alloca double
  %4 = alloca double
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
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8
  %36 = load i8*, i8** @_bal_stack_guard
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %91, label %38
38:
  store double 0x7FF8000000000000, double* %1
  %39 = load double, double* %1
  store double %39, double* %nan0
  store double 0x7FF8000000000000, double* %2
  %40 = load double, double* %2
  store double %40, double* %nan1
  store double 0x7FF0000000000000, double* %3
  %41 = load double, double* %3
  store double %41, double* %pInf
  store double 0xFFF0000000000000, double* %4
  %42 = load double, double* %4
  store double %42, double* %nInf
  %43 = call i8 addrspace(1)* @_B_eq(double 42.0, double 42.0), !dbg !14
  store i8 addrspace(1)* %43, i8 addrspace(1)** %5, !dbg !14
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %45 = call i8 addrspace(1)* @_B_eq(double 1.0, double 2.0), !dbg !16
  store i8 addrspace(1)* %45, i8 addrspace(1)** %7, !dbg !16
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %47 = call i8 addrspace(1)* @_B_eq(double 0.0, double 0.0), !dbg !18
  store i8 addrspace(1)* %47, i8 addrspace(1)** %9, !dbg !18
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %49 = call i8 addrspace(1)* @_B_eq(double 0.0, double -0.0), !dbg !20
  store i8 addrspace(1)* %49, i8 addrspace(1)** %11, !dbg !20
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %51 = load double, double* %nan0, !dbg !22
  %52 = load double, double* %nan1, !dbg !22
  %53 = call i8 addrspace(1)* @_B_eq(double %51, double %52), !dbg !22
  store i8 addrspace(1)* %53, i8 addrspace(1)** %13, !dbg !22
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %55 = load double, double* %nan0, !dbg !24
  %56 = call i8 addrspace(1)* @_B_eq(double %55, double 1.0), !dbg !24
  store i8 addrspace(1)* %56, i8 addrspace(1)** %15, !dbg !24
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %58 = load double, double* %nan0, !dbg !26
  %59 = load double, double* %nInf, !dbg !26
  %60 = call i8 addrspace(1)* @_B_eq(double %58, double %59), !dbg !26
  store i8 addrspace(1)* %60, i8 addrspace(1)** %17, !dbg !26
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %62 = load double, double* %pInf, !dbg !28
  %63 = load double, double* %nInf, !dbg !28
  %64 = call i8 addrspace(1)* @_B_eq(double %62, double %63), !dbg !28
  store i8 addrspace(1)* %64, i8 addrspace(1)** %19, !dbg !28
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %66 = load double, double* %nInf, !dbg !30
  %67 = load double, double* %pInf, !dbg !30
  %68 = call i8 addrspace(1)* @_B_eq(double %66, double %67), !dbg !30
  store i8 addrspace(1)* %68, i8 addrspace(1)** %21, !dbg !30
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %70 = load double, double* %pInf, !dbg !32
  %71 = load double, double* %pInf, !dbg !32
  %72 = call i8 addrspace(1)* @_B_eq(double %70, double %71), !dbg !32
  store i8 addrspace(1)* %72, i8 addrspace(1)** %23, !dbg !32
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %74 = load double, double* %nInf, !dbg !34
  %75 = load double, double* %nInf, !dbg !34
  %76 = call i8 addrspace(1)* @_B_eq(double %74, double %75), !dbg !34
  store i8 addrspace(1)* %76, i8 addrspace(1)** %25, !dbg !34
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %78 = call i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), double 1.0), !dbg !36
  store i8 addrspace(1)* %78, i8 addrspace(1)** %27, !dbg !36
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !37
  %80 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !38
  %81 = call i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* %80, double 1.0), !dbg !38
  store i8 addrspace(1)* %81, i8 addrspace(1)** %29, !dbg !38
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !39
  %83 = zext i1 0 to i64, !dbg !40
  %84 = or i64 %83, 72057594037927936, !dbg !40
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84, !dbg !40
  %86 = call i8 addrspace(1)* @_B_eqFA(double 0.0, i8 addrspace(1)* %85), !dbg !40
  store i8 addrspace(1)* %86, i8 addrspace(1)** %31, !dbg !40
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !41
  %88 = call i8 addrspace(1)* @_bal_float_to_tagged(double 8.0), !dbg !42
  %89 = call i8 addrspace(1)* @_B_eqFA(double 8.0, i8 addrspace(1)* %88), !dbg !42
  store i8 addrspace(1)* %89, i8 addrspace(1)** %33, !dbg !42
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %90), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !43
  ret void
91:
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %92)
  unreachable
}
define internal i8 addrspace(1)* @_B_eq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %b1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %28, label %9
9:
  store double %0, double* %f1
  store double %1, double* %f2
  %10 = load double, double* %f1, !dbg !45
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double %10), !dbg !45
  %12 = load double, double* %f2, !dbg !45
  %13 = call i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* %11, double %12), !dbg !45
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3, !dbg !45
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %14, i8 addrspace(1)** %b1
  %15 = load double, double* %f1, !dbg !46
  %16 = load double, double* %f2, !dbg !46
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double %16), !dbg !46
  %18 = call i8 addrspace(1)* @_B_eqFA(double %15, i8 addrspace(1)* %17), !dbg !46
  store i8 addrspace(1)* %18, i8 addrspace(1)** %4, !dbg !46
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %19, i8 addrspace(1)** %b2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %22 = call i1 @_bal_string_eq(i8 addrspace(1)* %20, i8 addrspace(1)* %21)
  %23 = xor i1 %22, 1
  store i1 %23, i1* %5
  %24 = load i1, i1* %5
  br i1 %24, label %25, label %26
25:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089)
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %27
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 7428), !dbg !44
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
}
define internal i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* %0, double %1) !dbg !9 {
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
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 9732), !dbg !47
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %10)
  %26 = call i1 @_bal_float_eq(double %25, double %11)
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
  %38 = call i1 @_bal_float_eq(double %37, double %31)
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
define internal i8 addrspace(1)* @_B_eqFA(double %0, i8 addrspace(1)* %1) !dbg !11 {
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
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 12804), !dbg !48
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  %26 = call i1 @_bal_float_eq(double %25, double %10)
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
  %38 = call i1 @_bal_float_eq(double %37, double %30)
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
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 29, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"eqAF", linkageName:"_B_eqAF", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"eqFA", linkageName:"_B_eqFA", scope: !1, file: !1, line: 50, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 11, column: 15, scope: !5)
!15 = !DILocation(line: 11, column: 4, scope: !5)
!16 = !DILocation(line: 12, column: 15, scope: !5)
!17 = !DILocation(line: 12, column: 4, scope: !5)
!18 = !DILocation(line: 13, column: 15, scope: !5)
!19 = !DILocation(line: 13, column: 4, scope: !5)
!20 = !DILocation(line: 14, column: 15, scope: !5)
!21 = !DILocation(line: 14, column: 4, scope: !5)
!22 = !DILocation(line: 15, column: 15, scope: !5)
!23 = !DILocation(line: 15, column: 4, scope: !5)
!24 = !DILocation(line: 16, column: 15, scope: !5)
!25 = !DILocation(line: 16, column: 4, scope: !5)
!26 = !DILocation(line: 17, column: 15, scope: !5)
!27 = !DILocation(line: 17, column: 4, scope: !5)
!28 = !DILocation(line: 18, column: 15, scope: !5)
!29 = !DILocation(line: 18, column: 4, scope: !5)
!30 = !DILocation(line: 19, column: 15, scope: !5)
!31 = !DILocation(line: 19, column: 4, scope: !5)
!32 = !DILocation(line: 20, column: 15, scope: !5)
!33 = !DILocation(line: 20, column: 4, scope: !5)
!34 = !DILocation(line: 21, column: 15, scope: !5)
!35 = !DILocation(line: 21, column: 4, scope: !5)
!36 = !DILocation(line: 23, column: 15, scope: !5)
!37 = !DILocation(line: 23, column: 4, scope: !5)
!38 = !DILocation(line: 24, column: 15, scope: !5)
!39 = !DILocation(line: 24, column: 4, scope: !5)
!40 = !DILocation(line: 25, column: 15, scope: !5)
!41 = !DILocation(line: 25, column: 4, scope: !5)
!42 = !DILocation(line: 26, column: 15, scope: !5)
!43 = !DILocation(line: 26, column: 4, scope: !5)
!44 = !DILocation(line: 0, column: 0, scope: !7)
!45 = !DILocation(line: 30, column: 16, scope: !7)
!46 = !DILocation(line: 31, column: 16, scope: !7)
!47 = !DILocation(line: 0, column: 0, scope: !9)
!48 = !DILocation(line: 0, column: 0, scope: !11)
