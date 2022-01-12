@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
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
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %57, label %18
18:
  %19 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %20 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %19 to i8 addrspace(1)*
  %21 = getelementptr i8, i8 addrspace(1)* %20, i64 1297036692682702852
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %22 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %23)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %2
  %24 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root2, i64 1)
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_mapping_init_member(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %25)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3
  %26 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root3, i64 1)
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_mapping_init_member(i8 addrspace(1)* %26, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %27)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %4
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %28, i8 addrspace(1)** %r
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %30 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %29, i64 0)
  %31 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %33 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %32, i64 0)
  %34 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %32, i8 addrspace(1)* %33)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %6
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %36 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %35, i64 0)
  %37 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %35, i8 addrspace(1)* %36)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %7
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !8
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 11), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %38, i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %41 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %40, i64 0)
  %42 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %40, i8 addrspace(1)* %41)
  store i8 addrspace(1)* %42, i8 addrspace(1)** %9
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %44 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %43, i64 0)
  %45 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %10
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %47 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %46, i64 0)
  %48 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %46, i8 addrspace(1)* %47)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %11
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927928)
  %51 = bitcast i8 addrspace(1)* %50 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %52 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 0, %53
  br i1 %54, label %59, label %62
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  call void @_bal_panic(i8 addrspace(1)* %56)
  unreachable
57:
  %58 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %58)
  unreachable
59:
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 4)
  %61 = icmp ne i8 addrspace(1)* %60, null
  br i1 %61, label %64, label %70
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 4613), !dbg !7
  store i8 addrspace(1)* %63, i8 addrspace(1)** %14
  br label %55
64:
  %65 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %51, i64 0, i32 3
  %66 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %65, align 8
  %67 = bitcast i8* addrspace(1)* %66 to [0 x i64] addrspace(1)*
  %68 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %67, i64 0, i64 0
  %69 = load i64, i64 addrspace(1)* %68, align 8
  store i64 %69, i64* %12
  br label %76
70:
  %71 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %51, i64 0, i32 0
  %72 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %71, align 8
  %73 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %72, i64 0, i32 3
  %74 = load i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64)** %73, align 8
  %75 = call i64 %74(i8 addrspace(1)* %49, i64 0)
  store i64 %75, i64* %12
  br label %76
76:
  %77 = load i64, i64* %12, !dbg !9
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !9
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/methodcall2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 17, column: 12, scope: !5)
!9 = !DILocation(line: 18, column: 4, scope: !5)
