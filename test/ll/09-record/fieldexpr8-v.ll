@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 12, i16 12, [12 x i8] c"booleanField"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %49, label %15
15:
  %16 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %17 = zext i1 0 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  call void @_bal_mapping_init_member(i8 addrspace(1)* %16, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %19)
  %20 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %16, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %20)
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %16, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %21)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %22, i8 addrspace(1)** %r
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %24 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %23, i64 1)
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %24)
  store double %25, double* %2
  %26 = load double, double* %2
  %27 = fadd double %26, 1.0
  store double %27, double* %3
  %28 = load double, double* %3, !dbg !8
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double %28), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %31 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %30, i64 0)
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = trunc i64 %33 to i1
  store i1 %34, i1* %5
  %35 = load i1, i1* %5
  %36 = xor i1 1, %35
  store i1 %36, i1* %6
  %37 = load i1, i1* %6, !dbg !9
  %38 = zext i1 %37 to i64, !dbg !9
  %39 = or i64 %38, 72057594037927936, !dbg !9
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %42 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %41, i64 2)
  %43 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %42)
  store i64 %43, i64* %8
  %44 = load i64, i64* %8
  %45 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %44, i64 2)
  %46 = extractvalue {i64, i1} %45, 1
  br i1 %46, label %55, label %51
47:
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
51:
  %52 = extractvalue {i64, i1} %45, 0
  store i64 %52, i64* %9
  %53 = load i64, i64* %9, !dbg !10
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !10
  ret void
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %56, i8 addrspace(1)** %11
  br label %47
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/fieldexpr8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 4, scope: !5)
!9 = !DILocation(line: 14, column: 4, scope: !5)
!10 = !DILocation(line: 15, column: 4, scope: !5)
