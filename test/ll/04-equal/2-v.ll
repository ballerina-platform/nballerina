@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %31, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 1)
  %21 = zext i1 1 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  call void @_bal_mapping_init_member(i8 addrspace(1)* %20, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %23)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %25 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 -5)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %x
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = addrspacecast i8 addrspace(1)* %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 504403158265495552
  br i1 %30, label %33, label %36
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %26)
  %35 = icmp eq i64 %34, 1
  store i1 %35, i1* %2
  br label %37
36:
  store i1 0, i1* %2
  br label %37
37:
  %38 = load i1, i1* %2, !dbg !8
  %39 = zext i1 %38 to i64, !dbg !8
  %40 = or i64 %39, 72057594037927936, !dbg !8
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %43 = zext i1 1 to i64
  %44 = or i64 %43, 72057594037927936
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44
  %46 = icmp eq i8 addrspace(1)* %42, %45
  store i1 %46, i1* %4
  %47 = load i1, i1* %4, !dbg !9
  %48 = zext i1 %47 to i64, !dbg !9
  %49 = or i64 %48, 72057594037927936, !dbg !9
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %52 = icmp eq i8 addrspace(1)* %51, null
  store i1 %52, i1* %6
  %53 = load i1, i1* %6, !dbg !10
  %54 = zext i1 %53 to i64, !dbg !10
  %55 = or i64 %54, 72057594037927936, !dbg !10
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %57 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %57, i8 addrspace(1)** %8
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 -5)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %x
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %61 = addrspacecast i8 addrspace(1)* %60 to i8*
  %62 = ptrtoint i8* %61 to i64
  %63 = and i64 %62, 2233785415175766016
  %64 = icmp eq i64 %63, 504403158265495552
  br i1 %64, label %65, label %68
65:
  %66 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %60)
  %67 = icmp ne i64 %66, 1
  store i1 %67, i1* %9
  br label %69
68:
  store i1 1, i1* %9
  br label %69
69:
  %70 = load i1, i1* %9, !dbg !11
  %71 = zext i1 %70 to i64, !dbg !11
  %72 = or i64 %71, 72057594037927936, !dbg !11
  %73 = getelementptr i8, i8 addrspace(1)* null, i64 %72, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %74 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 3)
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %74, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %75)
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %74, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %76)
  %77 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %74, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %77)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %11
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %79 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %78, i64 -5)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %x
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %81 = zext i1 1 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82
  %84 = icmp ne i8 addrspace(1)* %80, %83
  store i1 %84, i1* %12
  %85 = load i1, i1* %12, !dbg !12
  %86 = zext i1 %85 to i64, !dbg !12
  %87 = or i64 %86, 72057594037927936, !dbg !12
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %90 = icmp ne i8 addrspace(1)* %89, null
  store i1 %90, i1* %14
  %91 = load i1, i1* %14, !dbg !13
  %92 = zext i1 %91 to i64, !dbg !13
  %93 = or i64 %92, 72057594037927936, !dbg !13
  %94 = getelementptr i8, i8 addrspace(1)* null, i64 %93, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-equal/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
