@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
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
  br i1 %18, label %30, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %21 = zext i1 1 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  call void @_bal_mapping_init_member(i8 addrspace(1)* %20, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %23)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %x
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 504403158265495552
  br i1 %29, label %32, label %35
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  %34 = icmp eq i64 %33, 1
  store i1 %34, i1* %2
  br label %36
35:
  store i1 0, i1* %2
  br label %36
36:
  %37 = load i1, i1* %2, !dbg !8
  %38 = zext i1 %37 to i64, !dbg !8
  %39 = or i64 %38, 72057594037927936, !dbg !8
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %42 = zext i1 1 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  %45 = icmp eq i8 addrspace(1)* %41, %44
  store i1 %45, i1* %4
  %46 = load i1, i1* %4, !dbg !9
  %47 = zext i1 %46 to i64, !dbg !9
  %48 = or i64 %47, 72057594037927936, !dbg !9
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %51 = icmp eq i8 addrspace(1)* %50, null
  store i1 %51, i1* %6
  %52 = load i1, i1* %6, !dbg !10
  %53 = zext i1 %52 to i64, !dbg !10
  %54 = or i64 %53, 72057594037927936, !dbg !10
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %56 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %8
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %57, i8 addrspace(1)** %x
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %59 = addrspacecast i8 addrspace(1)* %58 to i8*
  %60 = ptrtoint i8* %59 to i64
  %61 = and i64 %60, 2233785415175766016
  %62 = icmp eq i64 %61, 504403158265495552
  br i1 %62, label %63, label %66
63:
  %64 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %58)
  %65 = icmp ne i64 %64, 1
  store i1 %65, i1* %9
  br label %67
66:
  store i1 1, i1* %9
  br label %67
67:
  %68 = load i1, i1* %9, !dbg !11
  %69 = zext i1 %68 to i64, !dbg !11
  %70 = or i64 %69, 72057594037927936, !dbg !11
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %72 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %72, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %73)
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %72, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %74)
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %72, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %75)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %11
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %76, i8 addrspace(1)** %x
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %78 = zext i1 1 to i64
  %79 = or i64 %78, 72057594037927936
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79
  %81 = icmp ne i8 addrspace(1)* %77, %80
  store i1 %81, i1* %12
  %82 = load i1, i1* %12, !dbg !12
  %83 = zext i1 %82 to i64, !dbg !12
  %84 = or i64 %83, 72057594037927936, !dbg !12
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %85), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %87 = icmp ne i8 addrspace(1)* %86, null
  store i1 %87, i1* %14
  %88 = load i1, i1* %14, !dbg !13
  %89 = zext i1 %88 to i64, !dbg !13
  %90 = or i64 %89, 72057594037927936, !dbg !13
  %91 = getelementptr i8, i8 addrspace(1)* null, i64 %90, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !13
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
