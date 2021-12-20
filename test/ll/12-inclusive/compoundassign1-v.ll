@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i64 @_bal_mapping_inexact_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca double
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %31, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %16)
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %17)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %r
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %20 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %19, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %21 = call double @_bal_tagged_to_float(i8 addrspace(1)* %20)
  store double %21, double* %2
  %22 = load double, double* %2
  %23 = fadd double %22, 1.0
  store double %23, double* %3
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %25 = load double, double* %3
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double %25)
  %27 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %40
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %35 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %34, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102))
  %36 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  store i64 %36, i64* %4
  %37 = load i64, i64* %4
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %37, i64 2)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %50, label %43
40:
  %41 = or i64 %27, 2560
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 %41), !dbg !7
  store i8 addrspace(1)* %42, i8 addrspace(1)** %10
  br label %29
43:
  %44 = extractvalue {i64, i1} %38, 0
  store i64 %44, i64* %5
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %46 = load i64, i64* %5
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %46)
  %48 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %45, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %52, label %63
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %51, i8 addrspace(1)** %10
  br label %29
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %54 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %53, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %55 = call double @_bal_tagged_to_float(i8 addrspace(1)* %54)
  store double %55, double* %6
  %56 = load double, double* %6, !dbg !8
  %57 = call i8 addrspace(1)* @_bal_float_to_tagged(double %56), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %59 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %58, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102))
  %60 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %59)
  store i64 %60, i64* %8
  %61 = load i64, i64* %8, !dbg !9
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  ret void
63:
  %64 = or i64 %48, 2816
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 %64), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %10
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/compoundassign1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
!9 = !DILocation(line: 13, column: 4, scope: !5)
