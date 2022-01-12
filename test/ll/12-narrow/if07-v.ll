@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %8 = zext i1 1 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, i8 addrspace(1)* null, i64 %9
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* %10)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %r
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %r, !dbg !10
  call void @_B_func(i8 addrspace(1)* %12), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal void @_B_func(i8 addrspace(1)* %0) !dbg !7 {
  %r = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %x.2 = alloca double
  %5 = alloca i1
  %y.1 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %x.3 = alloca i8 addrspace(1)*
  %x.4 = alloca i64
  %7 = alloca i1
  %y.2 = alloca i8 addrspace(1)*
  %x.5 = alloca i8 addrspace(1)*
  %y.3 = alloca i8 addrspace(1)*
  %fi = alloca i8 addrspace(1)*
  %bi = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %87, label %13
13:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %r
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %x
  %15 = zext i1 1 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16
  store i8 addrspace(1)* %17, i8 addrspace(1)** %y
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %19 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %18, i64 0)
  %20 = addrspacecast i8 addrspace(1)* %19 to i8*
  %21 = ptrtoint i8* %20 to i64
  %22 = trunc i64 %21 to i1
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  %24 = icmp eq i1 %23, 1
  store i1 %24, i1* %3
  %25 = load i1, i1* %3
  br i1 %25, label %26, label %53
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %28 = addrspacecast i8 addrspace(1)* %27 to i8*
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 2233785415175766016
  %31 = lshr i64 %30, 56
  %32 = shl i64 1, %31
  %33 = and i64 %32, 130
  %34 = icmp ne i64 %33, 0
  store i1 %34, i1* %4
  %35 = load i1, i1* %4
  br i1 %35, label %36, label %38
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %37, i8 addrspace(1)** %x.1
  ret void
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %40 = call double @_bal_tagged_to_float(i8 addrspace(1)* %39)
  store double %40, double* %x.2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %42 = addrspacecast i8 addrspace(1)* %41 to i8*
  %43 = ptrtoint i8* %42 to i64
  %44 = and i64 %43, 2233785415175766016
  %45 = lshr i64 %44, 56
  %46 = shl i64 1, %45
  %47 = and i64 %46, 384
  %48 = icmp ne i64 %47, 0
  store i1 %48, i1* %5
  %49 = load i1, i1* %5
  br i1 %49, label %50, label %52
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  store i8 addrspace(1)* %51, i8 addrspace(1)** %y.1
  ret void
52:
  br label %80
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %55 = addrspacecast i8 addrspace(1)* %54 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = lshr i64 %57, 56
  %59 = shl i64 1, %58
  %60 = and i64 %59, 258
  %61 = icmp ne i64 %60, 0
  store i1 %61, i1* %6
  %62 = load i1, i1* %6
  br i1 %62, label %63, label %65
63:
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %64, i8 addrspace(1)** %x.3
  ret void
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %67 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %66)
  store i64 %67, i64* %x.4
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %69 = addrspacecast i8 addrspace(1)* %68 to i8*
  %70 = ptrtoint i8* %69 to i64
  %71 = and i64 %70, 2233785415175766016
  %72 = lshr i64 %71, 56
  %73 = shl i64 1, %72
  %74 = and i64 %73, 130
  %75 = icmp ne i64 %74, 0
  store i1 %75, i1* %7
  %76 = load i1, i1* %7
  br i1 %76, label %77, label %79
77:
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  store i8 addrspace(1)* %78, i8 addrspace(1)** %y.2
  ret void
79:
  br label %80
80:
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %81, i8 addrspace(1)** %x.5
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  store i8 addrspace(1)* %82, i8 addrspace(1)** %y.3
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %x.5
  store i8 addrspace(1)* %83, i8 addrspace(1)** %fi
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %y.3
  store i8 addrspace(1)* %84, i8 addrspace(1)** %bi
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %fi, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %85), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !12
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %bi, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !13
  ret void
87:
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %88)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func", linkageName:"_B_func", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 9, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 33, column: 4, scope: !7)
!13 = !DILocation(line: 34, column: 4, scope: !7)
