@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %28, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  %17 = zext i1 0 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  call void @_bal_mapping_init_member(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %19)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %r
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %22 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %21)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %m
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %24 = call i64 @_bal_mapping_set(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475883924911219), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475965865163128))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %34
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %32 = call i64 @_bal_mapping_set(i8 addrspace(1)* %31, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475883924911219), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %42
34:
  %35 = or i64 %24, 3072
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 %35), !dbg !7
  store i8 addrspace(1)* %36, i8 addrspace(1)** %10
  br label %26
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %40 = call i64 @_bal_mapping_set(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %52
42:
  %43 = or i64 %32, 3328
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 %43), !dbg !7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %10
  br label %26
45:
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %47 = zext i1 1 to i64
  %48 = or i64 %47, 72057594037927936
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48
  %50 = call i64 @_bal_mapping_set(i8 addrspace(1)* %46, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %55, label %80
52:
  %53 = or i64 %40, 3584
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 %53), !dbg !7
  store i8 addrspace(1)* %54, i8 addrspace(1)** %10
  br label %26
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %57 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %56, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %58 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %57)
  store i64 %58, i64* %2
  %59 = load i64, i64* %2, !dbg !8
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %62 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %61, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  %63 = addrspacecast i8 addrspace(1)* %62 to i8*
  %64 = ptrtoint i8* %63 to i64
  %65 = trunc i64 %64 to i1
  store i1 %65, i1* %4
  %66 = load i1, i1* %4, !dbg !9
  %67 = zext i1 %66 to i64, !dbg !9
  %68 = or i64 %67, 72057594037927936, !dbg !9
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %71 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %70, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475883924911219))
  store i8 addrspace(1)* %71, i8 addrspace(1)** %6
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %6, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %75 = call i1 @_bal_exact_eq(i8 addrspace(1)* %73, i8 addrspace(1)* %74)
  store i1 %75, i1* %8
  %76 = load i1, i1* %8, !dbg !11
  %77 = zext i1 %76 to i64, !dbg !11
  %78 = or i64 %77, 72057594037927936, !dbg !11
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !11
  ret void
80:
  %81 = or i64 %50, 3840
  %82 = call i8 addrspace(1)* @_bal_panic_construct(i64 %81), !dbg !7
  store i8 addrspace(1)* %82, i8 addrspace(1)** %10
  br label %26
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-rest/mutate2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 16, column: 4, scope: !5)
!9 = !DILocation(line: 17, column: 4, scope: !5)
!10 = !DILocation(line: 18, column: 4, scope: !5)
!11 = !DILocation(line: 19, column: 4, scope: !5)
