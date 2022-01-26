@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
@_Bt04root2 = external constant {i32, i32, [0 x i8*]}
@_Bt04root3 = external constant {i32, i32, [0 x i8*]}
@_Bt04root4 = external constant {i32, i32, [0 x i8*]}
@_Bt04root5 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
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
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %54, label %28
28:
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !10
  call void @_B04rootd(i8 addrspace(1)* %29), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_B04rootd(i8 addrspace(1)* %30), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 127), !dbg !12
  call void @_B04rootd(i8 addrspace(1)* %31), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 128), !dbg !13
  call void @_B04rootd(i8 addrspace(1)* %32), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !14
  call void @_B04rootd(i8 addrspace(1)* %33), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -127), !dbg !15
  call void @_B04rootd(i8 addrspace(1)* %34), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -128), !dbg !16
  call void @_B04rootd(i8 addrspace(1)* %35), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -129), !dbg !17
  call void @_B04rootd(i8 addrspace(1)* %36), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 255), !dbg !18
  call void @_B04rootd(i8 addrspace(1)* %37), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !18
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 32767), !dbg !19
  call void @_B04rootd(i8 addrspace(1)* %38), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 65535), !dbg !20
  call void @_B04rootd(i8 addrspace(1)* %39), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !20
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 65536), !dbg !21
  call void @_B04rootd(i8 addrspace(1)* %40), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2147483647), !dbg !22
  call void @_B04rootd(i8 addrspace(1)* %41), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !22
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2147483648), !dbg !23
  call void @_B04rootd(i8 addrspace(1)* %42), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4294967295), !dbg !24
  call void @_B04rootd(i8 addrspace(1)* %43), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !24
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4294967296), !dbg !25
  call void @_B04rootd(i8 addrspace(1)* %44), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -32768), !dbg !26
  call void @_B04rootd(i8 addrspace(1)* %45), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !26
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -32769), !dbg !27
  call void @_B04rootd(i8 addrspace(1)* %46), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -2147483648), !dbg !28
  call void @_B04rootd(i8 addrspace(1)* %47), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !28
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -2147483649), !dbg !29
  call void @_B04rootd(i8 addrspace(1)* %48), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  call void @_B04rootd(i8 addrspace(1)* null), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !30
  %49 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !31
  call void @_B04rootd(i8 addrspace(1)* %49), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %50 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*)), !dbg !32
  call void @_B04rootd(i8 addrspace(1)* %50), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !32
  %51 = zext i1 1 to i64, !dbg !33
  %52 = or i64 %51, 72057594037927936, !dbg !33
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52, !dbg !33
  call void @_B04rootd(i8 addrspace(1)* %53), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  ret void
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %55)
  unreachable
}
define void @_B04rootd(i8 addrspace(1)* %0) !dbg !7 {
  %n = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %2 = alloca i1
  %n.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %n.2 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %n.3 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %n.4 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %n.5 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %n.6 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %n.7 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %n.8 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %n.9 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %n.10 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %n.11 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %n.12 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %s.1 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %n.13 = alloca i64
  %n.14 = alloca i8 addrspace(1)*
  %s.2 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %107, label %20
20:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %n
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247), i8 addrspace(1)** %s
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %22 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %21)
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  br i1 %23, label %24, label %30
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %26 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  store i64 %26, i64* %n.1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %28 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630850163))
  store i8 addrspace(1)* %28, i8 addrspace(1)** %3
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %29, i8 addrspace(1)** %s
  br label %30
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  store i8 addrspace(1)* %31, i8 addrspace(1)** %n.2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %n.2
  %33 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %32)
  store i1 %33, i1* %4
  %34 = load i1, i1* %4
  br i1 %34, label %35, label %41
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %n.2
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %36)
  store i64 %37, i64* %n.3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %39 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617675635))
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %40, i8 addrspace(1)** %s
  br label %41
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %n.2
  store i8 addrspace(1)* %42, i8 addrspace(1)** %n.4
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %n.4
  %44 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root2, i8 addrspace(1)* %43)
  store i1 %44, i1* %6
  %45 = load i1, i1* %6
  br i1 %45, label %46, label %52
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %n.4
  %48 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %47)
  store i64 %48, i64* %n.5
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %50 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617414003))
  store i8 addrspace(1)* %50, i8 addrspace(1)** %7
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %51, i8 addrspace(1)** %s
  br label %52
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %n.4
  store i8 addrspace(1)* %53, i8 addrspace(1)** %n.6
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %n.6
  %55 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root3, i8 addrspace(1)* %54)
  store i1 %55, i1* %8
  %56 = load i1, i1* %8
  br i1 %56, label %57, label %63
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %n.6
  %59 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %58)
  store i64 %59, i64* %n.7
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %61 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %60, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630850165))
  store i8 addrspace(1)* %61, i8 addrspace(1)** %9
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  store i8 addrspace(1)* %62, i8 addrspace(1)** %s
  br label %63
63:
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %n.6
  store i8 addrspace(1)* %64, i8 addrspace(1)** %n.8
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %n.8
  %66 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root4, i8 addrspace(1)* %65)
  store i1 %66, i1* %10
  %67 = load i1, i1* %10
  br i1 %67, label %68, label %74
68:
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %n.8
  %70 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %69)
  store i64 %70, i64* %n.9
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %72 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %71, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617675637))
  store i8 addrspace(1)* %72, i8 addrspace(1)** %11
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %73, i8 addrspace(1)** %s
  br label %74
74:
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %n.8
  store i8 addrspace(1)* %75, i8 addrspace(1)** %n.10
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %n.10
  %77 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root5, i8 addrspace(1)* %76)
  store i1 %77, i1* %12
  %78 = load i1, i1* %12
  br i1 %78, label %79, label %85
79:
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %n.10
  %81 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %80)
  store i64 %81, i64* %n.11
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %83 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %82, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543617414005))
  store i8 addrspace(1)* %83, i8 addrspace(1)** %13
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  store i8 addrspace(1)* %84, i8 addrspace(1)** %s
  br label %85
85:
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %n.10
  store i8 addrspace(1)* %86, i8 addrspace(1)** %n.12
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %88 = icmp eq i8 addrspace(1)* %87, getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247)
  store i1 %88, i1* %14
  %89 = load i1, i1* %14
  br i1 %89, label %90, label %104
90:
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %91, i8 addrspace(1)** %s.1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %n.12
  %93 = addrspacecast i8 addrspace(1)* %92 to i8*
  %94 = ptrtoint i8* %93 to i64
  %95 = and i64 %94, 2233785415175766016
  %96 = icmp eq i64 %95, 504403158265495552
  store i1 %96, i1* %15
  %97 = load i1, i1* %15
  br i1 %97, label %98, label %101
98:
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %n.12
  %100 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %99)
  store i64 %100, i64* %n.13
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473), i8 addrspace(1)** %s
  br label %103
101:
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %n.12
  store i8 addrspace(1)* %102, i8 addrspace(1)** %n.14
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622082145), i8 addrspace(1)** %s
  br label %103
103:
  br label %104
104:
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %105, i8 addrspace(1)** %s.2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !35
  ret void
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %108)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/test2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"d", linkageName:"_B04rootd", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
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
!30 = !DILocation(line: 24, column: 4, scope: !5)
!31 = !DILocation(line: 25, column: 4, scope: !5)
!32 = !DILocation(line: 26, column: 4, scope: !5)
!33 = !DILocation(line: 27, column: 4, scope: !5)
!34 = !DILocation(line: 0, column: 0, scope: !7)
!35 = !DILocation(line: 58, column: 4, scope: !7)
