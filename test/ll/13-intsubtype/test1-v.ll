@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
@_Bt04root2 = external constant {i32, i32, [0 x i8*]}
@_Bt04root3 = external constant {i32, i32, [0 x i8*]}
@_Bt04root4 = external constant {i32, i32, [0 x i8*]}
@_Bt04root5 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}*, i64) readonly
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
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
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %25, label %24
24:
  call void @_B04rootd(i64 0), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B04rootd(i64 1), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B04rootd(i64 127), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  call void @_B04rootd(i64 128), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  call void @_B04rootd(i64 -1), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  call void @_B04rootd(i64 -127), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  call void @_B04rootd(i64 -128), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  call void @_B04rootd(i64 -129), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  call void @_B04rootd(i64 255), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !18
  call void @_B04rootd(i64 32767), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  call void @_B04rootd(i64 65535), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !20
  call void @_B04rootd(i64 65536), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  call void @_B04rootd(i64 2147483647), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !22
  call void @_B04rootd(i64 2147483648), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  call void @_B04rootd(i64 4294967295), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !24
  call void @_B04rootd(i64 4294967296), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  call void @_B04rootd(i64 -32768), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !26
  call void @_B04rootd(i64 -32769), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  call void @_B04rootd(i64 -2147483648), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !28
  call void @_B04rootd(i64 -2147483649), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
define void @_B04rootd(i64 %0) !dbg !7 {
  %n = alloca i64
  %s = alloca i8 addrspace(1)*
  %2 = alloca i1
  %n.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %n.2 = alloca i64
  %4 = alloca i1
  %n.3 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %n.4 = alloca i64
  %6 = alloca i1
  %n.5 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %n.6 = alloca i64
  %8 = alloca i1
  %n.7 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %n.8 = alloca i64
  %10 = alloca i1
  %n.9 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %n.10 = alloca i64
  %12 = alloca i1
  %n.11 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %n.12 = alloca i64
  %14 = alloca i1
  %s.1 = alloca i8 addrspace(1)*
  %s.2 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %88, label %19
19:
  store i64 %0, i64* %n
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247), i8 addrspace(1)** %s
  %20 = load i64, i64* %n
  %21 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root0, i64 %20)
  store i1 %21, i1* %2
  %22 = load i1, i1* %2
  br i1 %22, label %23, label %28
23:
  %24 = load i64, i64* %n
  store i64 %24, i64* %n.1
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %26 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %25, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630850163))
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %27, i8 addrspace(1)** %s
  br label %28
28:
  %29 = load i64, i64* %n
  store i64 %29, i64* %n.2
  %30 = load i64, i64* %n.2
  %31 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root1, i64 %30)
  store i1 %31, i1* %4
  %32 = load i1, i1* %4
  br i1 %32, label %33, label %38
33:
  %34 = load i64, i64* %n.2
  store i64 %34, i64* %n.3
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %36 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %35, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617675635))
  store i8 addrspace(1)* %36, i8 addrspace(1)** %5
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %37, i8 addrspace(1)** %s
  br label %38
38:
  %39 = load i64, i64* %n.2
  store i64 %39, i64* %n.4
  %40 = load i64, i64* %n.4
  %41 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root2, i64 %40)
  store i1 %41, i1* %6
  %42 = load i1, i1* %6
  br i1 %42, label %43, label %48
43:
  %44 = load i64, i64* %n.4
  store i64 %44, i64* %n.5
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %46 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %45, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617414003))
  store i8 addrspace(1)* %46, i8 addrspace(1)** %7
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %47, i8 addrspace(1)** %s
  br label %48
48:
  %49 = load i64, i64* %n.4
  store i64 %49, i64* %n.6
  %50 = load i64, i64* %n.6
  %51 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root3, i64 %50)
  store i1 %51, i1* %8
  %52 = load i1, i1* %8
  br i1 %52, label %53, label %58
53:
  %54 = load i64, i64* %n.6
  store i64 %54, i64* %n.7
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %56 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %55, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630850165))
  store i8 addrspace(1)* %56, i8 addrspace(1)** %9
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  store i8 addrspace(1)* %57, i8 addrspace(1)** %s
  br label %58
58:
  %59 = load i64, i64* %n.6
  store i64 %59, i64* %n.8
  %60 = load i64, i64* %n.8
  %61 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root4, i64 %60)
  store i1 %61, i1* %10
  %62 = load i1, i1* %10
  br i1 %62, label %63, label %68
63:
  %64 = load i64, i64* %n.8
  store i64 %64, i64* %n.9
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %66 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %65, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617675637))
  store i8 addrspace(1)* %66, i8 addrspace(1)** %11
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %67, i8 addrspace(1)** %s
  br label %68
68:
  %69 = load i64, i64* %n.8
  store i64 %69, i64* %n.10
  %70 = load i64, i64* %n.10
  %71 = call i1 @_bal_type_contains_int({i32, i32, [0 x i8*]}* @_Bt04root5, i64 %70)
  store i1 %71, i1* %12
  %72 = load i1, i1* %12
  br i1 %72, label %73, label %78
73:
  %74 = load i64, i64* %n.10
  store i64 %74, i64* %n.11
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %76 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %75, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617414005))
  store i8 addrspace(1)* %76, i8 addrspace(1)** %13
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  store i8 addrspace(1)* %77, i8 addrspace(1)** %s
  br label %78
78:
  %79 = load i64, i64* %n.10
  store i64 %79, i64* %n.12
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %81 = icmp eq i8 addrspace(1)* %80, getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247)
  store i1 %81, i1* %14
  %82 = load i1, i1* %14
  br i1 %82, label %83, label %85
83:
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %84, i8 addrspace(1)** %s.1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473), i8 addrspace(1)** %s
  br label %85
85:
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %86, i8 addrspace(1)** %s.2
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !31
  ret void
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !30
  call void @_bal_panic(i8 addrspace(1)* %89)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/test1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"d", linkageName:"_B04rootd", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 12, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 4, scope: !5)
!20 = !DILocation(line: 14, column: 4, scope: !5)
!21 = !DILocation(line: 15, column: 4, scope: !5)
!22 = !DILocation(line: 16, column: 4, scope: !5)
!23 = !DILocation(line: 17, column: 4, scope: !5)
!24 = !DILocation(line: 18, column: 4, scope: !5)
!25 = !DILocation(line: 19, column: 4, scope: !5)
!26 = !DILocation(line: 20, column: 4, scope: !5)
!27 = !DILocation(line: 21, column: 4, scope: !5)
!28 = !DILocation(line: 22, column: 4, scope: !5)
!29 = !DILocation(line: 23, column: 4, scope: !5)
!30 = !DILocation(line: 0, column: 0, scope: !7)
!31 = !DILocation(line: 49, column: 4, scope: !7)
