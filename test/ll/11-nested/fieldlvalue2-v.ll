@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %33, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097), i8 addrspace(1)* %18)
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %19 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %19, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* %20)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %21, i8 addrspace(1)** %a
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %23 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %22, i64 0)
  %24 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %22, i8 addrspace(1)* %23)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %26 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %25, i64 0)
  %27 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %26)
  store i64 %27, i64* %4
  %28 = load i64, i64* %4
  %29 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %28, i64 4)
  %30 = extractvalue {i64, i1} %29, 1
  br i1 %30, label %42, label %35
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = extractvalue {i64, i1} %29, 0
  store i64 %36, i64* %5
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %38 = load i64, i64* %5
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38)
  %40 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %37, i64 0, i8 addrspace(1)* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %54
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %12
  br label %31
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %46 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %45, i64 0)
  %47 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %45, i8 addrspace(1)* %46)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %49 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %48, i64 0)
  %50 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %49)
  store i64 %50, i64* %7
  %51 = load i64, i64* %7
  %52 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %51, i64 2)
  %53 = extractvalue {i64, i1} %52, 1
  br i1 %53, label %64, label %57
54:
  %55 = or i64 %40, 3328
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 %55), !dbg !7
  store i8 addrspace(1)* %56, i8 addrspace(1)** %12
  br label %31
57:
  %58 = extractvalue {i64, i1} %52, 0
  store i64 %58, i64* %8
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %60 = load i64, i64* %8
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60)
  %62 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %59, i64 0, i8 addrspace(1)* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %66, label %75
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %12
  br label %31
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %68 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %67, i64 0)
  %69 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %67, i8 addrspace(1)* %68)
  store i8 addrspace(1)* %69, i8 addrspace(1)** %9
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %71 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %70, i64 0)
  %72 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %71)
  store i64 %72, i64* %10
  %73 = load i64, i64* %10, !dbg !8
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %73), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %74), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !8
  ret void
75:
  %76 = or i64 %62, 3584
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 %76), !dbg !7
  store i8 addrspace(1)* %77, i8 addrspace(1)** %12
  br label %31
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fieldlvalue2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
