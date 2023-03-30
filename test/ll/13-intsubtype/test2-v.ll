@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@_Bt04root5 = external constant {i32, i32, [0 x ptr]}
@_Bt04root6 = external constant {i32, i32, [0 x ptr]}
@_Bi04root7 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %95, label %28
28:
  %29 = and i64 72057594037927935, 0
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  call void @_B04rootd(ptr addrspace(1) %31), !dbg !11
  store ptr addrspace(1) null, ptr %1
  %32 = and i64 72057594037927935, 1
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  call void @_B04rootd(ptr addrspace(1) %34), !dbg !12
  store ptr addrspace(1) null, ptr %2
  %35 = and i64 72057594037927935, 127
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  call void @_B04rootd(ptr addrspace(1) %37), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %38 = and i64 72057594037927935, 128
  %39 = or i64 2449958197289549824, %38
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  call void @_B04rootd(ptr addrspace(1) %40), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %41 = and i64 72057594037927935, -1
  %42 = or i64 2449958197289549824, %41
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  call void @_B04rootd(ptr addrspace(1) %43), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %44 = and i64 72057594037927935, -127
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  call void @_B04rootd(ptr addrspace(1) %46), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %47 = and i64 72057594037927935, -128
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  call void @_B04rootd(ptr addrspace(1) %49), !dbg !17
  store ptr addrspace(1) null, ptr %7
  %50 = and i64 72057594037927935, -129
  %51 = or i64 2449958197289549824, %50
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  call void @_B04rootd(ptr addrspace(1) %52), !dbg !18
  store ptr addrspace(1) null, ptr %8
  %53 = and i64 72057594037927935, 255
  %54 = or i64 2449958197289549824, %53
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  call void @_B04rootd(ptr addrspace(1) %55), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %56 = and i64 72057594037927935, 32767
  %57 = or i64 2449958197289549824, %56
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  call void @_B04rootd(ptr addrspace(1) %58), !dbg !20
  store ptr addrspace(1) null, ptr %10
  %59 = and i64 72057594037927935, 65535
  %60 = or i64 2449958197289549824, %59
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  call void @_B04rootd(ptr addrspace(1) %61), !dbg !21
  store ptr addrspace(1) null, ptr %11
  %62 = and i64 72057594037927935, 65536
  %63 = or i64 2449958197289549824, %62
  %64 = getelementptr i8, ptr addrspace(1) null, i64 %63
  call void @_B04rootd(ptr addrspace(1) %64), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %65 = and i64 72057594037927935, 2147483647
  %66 = or i64 2449958197289549824, %65
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  call void @_B04rootd(ptr addrspace(1) %67), !dbg !23
  store ptr addrspace(1) null, ptr %13
  %68 = and i64 72057594037927935, 2147483648
  %69 = or i64 2449958197289549824, %68
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  call void @_B04rootd(ptr addrspace(1) %70), !dbg !24
  store ptr addrspace(1) null, ptr %14
  %71 = and i64 72057594037927935, 4294967295
  %72 = or i64 2449958197289549824, %71
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  call void @_B04rootd(ptr addrspace(1) %73), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %74 = and i64 72057594037927935, 4294967296
  %75 = or i64 2449958197289549824, %74
  %76 = getelementptr i8, ptr addrspace(1) null, i64 %75
  call void @_B04rootd(ptr addrspace(1) %76), !dbg !26
  store ptr addrspace(1) null, ptr %16
  %77 = and i64 72057594037927935, -32768
  %78 = or i64 2449958197289549824, %77
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  call void @_B04rootd(ptr addrspace(1) %79), !dbg !27
  store ptr addrspace(1) null, ptr %17
  %80 = and i64 72057594037927935, -32769
  %81 = or i64 2449958197289549824, %80
  %82 = getelementptr i8, ptr addrspace(1) null, i64 %81
  call void @_B04rootd(ptr addrspace(1) %82), !dbg !28
  store ptr addrspace(1) null, ptr %18
  %83 = and i64 72057594037927935, -2147483648
  %84 = or i64 2449958197289549824, %83
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  call void @_B04rootd(ptr addrspace(1) %85), !dbg !29
  store ptr addrspace(1) null, ptr %19
  %86 = and i64 72057594037927935, -2147483649
  %87 = or i64 2449958197289549824, %86
  %88 = getelementptr i8, ptr addrspace(1) null, i64 %87
  call void @_B04rootd(ptr addrspace(1) %88), !dbg !30
  store ptr addrspace(1) null, ptr %20
  call void @_B04rootd(ptr addrspace(1) null), !dbg !31
  store ptr addrspace(1) null, ptr %21
  %89 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !32
  call void @_B04rootd(ptr addrspace(1) %89), !dbg !33
  store ptr addrspace(1) null, ptr %22
  %90 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 288230376151711744
  call void @_B04rootd(ptr addrspace(1) %91), !dbg !34
  store ptr addrspace(1) null, ptr %23
  %92 = zext i1 1 to i64
  %93 = or i64 %92, 72057594037927936
  %94 = getelementptr i8, ptr addrspace(1) null, i64 %93
  call void @_B04rootd(ptr addrspace(1) %94), !dbg !35
  store ptr addrspace(1) null, ptr %24
  ret void
95:
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %96), !dbg !10
  unreachable
}
define void @_B04rootd(ptr addrspace(1) %0) !dbg !7 {
  %n = alloca ptr addrspace(1)
  %s = alloca ptr addrspace(1)
  %n.1 = alloca i64
  %n.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %n.3 = alloca i64
  %n.4 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %n.5 = alloca i64
  %n.6 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %n.7 = alloca i64
  %n.8 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %n.9 = alloca i64
  %n.10 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %n.11 = alloca i64
  %n.12 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %s.1 = alloca ptr addrspace(1)
  %s.2 = alloca ptr addrspace(1)
  %n.13 = alloca i64
  %n.14 = alloca ptr addrspace(1)
  %s.3 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %102, label %13
13:
  store ptr addrspace(1) %0, ptr %n
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr %s
  %14 = load ptr addrspace(1), ptr %n
  %15 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %14), !dbg !38
  br i1 %15, label %16, label %22
16:
  %17 = load ptr addrspace(1), ptr %n
  %18 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %17), !dbg !39
  store i64 %18, ptr %n.1
  %19 = load ptr addrspace(1), ptr %s
  %20 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441210483)), !dbg !40
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %21, ptr %s
  br label %22
22:
  %23 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %23, ptr %n.2
  %24 = load ptr addrspace(1), ptr %n
  %25 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %24), !dbg !41
  br i1 %25, label %26, label %32
26:
  %27 = load ptr addrspace(1), ptr %n
  %28 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %27), !dbg !42
  store i64 %28, ptr %n.3
  %29 = load ptr addrspace(1), ptr %s
  %30 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %29, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573428035955)), !dbg !43
  store ptr addrspace(1) %30, ptr %3
  %31 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %31, ptr %s
  br label %32
32:
  %33 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %33, ptr %n.4
  %34 = load ptr addrspace(1), ptr %n
  %35 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %34), !dbg !44
  br i1 %35, label %36, label %42
36:
  %37 = load ptr addrspace(1), ptr %n
  %38 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %37), !dbg !45
  store i64 %38, ptr %n.5
  %39 = load ptr addrspace(1), ptr %s
  %40 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %39, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573427774323)), !dbg !46
  store ptr addrspace(1) %40, ptr %4
  %41 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %41, ptr %s
  br label %42
42:
  %43 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %43, ptr %n.6
  %44 = load ptr addrspace(1), ptr %n
  %45 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %44), !dbg !47
  br i1 %45, label %46, label %52
46:
  %47 = load ptr addrspace(1), ptr %n
  %48 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %47), !dbg !48
  store i64 %48, ptr %n.7
  %49 = load ptr addrspace(1), ptr %s
  %50 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %49, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441210485)), !dbg !49
  store ptr addrspace(1) %50, ptr %5
  %51 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %51, ptr %s
  br label %52
52:
  %53 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %53, ptr %n.8
  %54 = load ptr addrspace(1), ptr %n
  %55 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %54), !dbg !50
  br i1 %55, label %56, label %62
56:
  %57 = load ptr addrspace(1), ptr %n
  %58 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %57), !dbg !51
  store i64 %58, ptr %n.9
  %59 = load ptr addrspace(1), ptr %s
  %60 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %59, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573428035957)), !dbg !52
  store ptr addrspace(1) %60, ptr %6
  %61 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %61, ptr %s
  br label %62
62:
  %63 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %63, ptr %n.10
  %64 = load ptr addrspace(1), ptr %n
  %65 = call i1 @_bal_type_contains(ptr @_Bt04root5, ptr addrspace(1) %64), !dbg !53
  br i1 %65, label %66, label %72
66:
  %67 = load ptr addrspace(1), ptr %n
  %68 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %67), !dbg !54
  store i64 %68, ptr %n.11
  %69 = load ptr addrspace(1), ptr %s
  %70 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %69, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573427774325)), !dbg !55
  store ptr addrspace(1) %70, ptr %7
  %71 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %71, ptr %s
  br label %72
72:
  %73 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %73, ptr %n.12
  %74 = load ptr addrspace(1), ptr %s
  %75 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %74), !dbg !56
  br i1 %75, label %76, label %83
76:
  %77 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %77, ptr %s.1
  %78 = load ptr addrspace(1), ptr %n
  %79 = addrspacecast ptr addrspace(1) %78 to ptr
  %80 = ptrtoint ptr %79 to i64
  %81 = and i64 %80, 2233785415175766016
  %82 = icmp eq i64 %81, 144115188075855872
  br i1 %82, label %95, label %98
83:
  %84 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %84, ptr %s.2
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !58
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = load ptr addrspace(1), ptr %s
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %8
  %94 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !59
  store ptr addrspace(1) null, ptr %9
  ret void
95:
  %96 = load ptr addrspace(1), ptr %n
  %97 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %96), !dbg !57
  store i64 %97, ptr %n.13
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432114793), ptr %s
  br label %100
98:
  %99 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %99, ptr %n.14
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432442465), ptr %s
  br label %100
100:
  %101 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %101, ptr %s.3
  br label %83
102:
  %103 = call ptr addrspace(1) @_bal_panic_construct(i64 7684), !dbg !36
  call void @_bal_panic(ptr addrspace(1) %103), !dbg !37
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
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 4, scope: !5)
!21 = !DILocation(line: 14, column: 4, scope: !5)
!22 = !DILocation(line: 15, column: 4, scope: !5)
!23 = !DILocation(line: 16, column: 4, scope: !5)
!24 = !DILocation(line: 17, column: 4, scope: !5)
!25 = !DILocation(line: 18, column: 4, scope: !5)
!26 = !DILocation(line: 19, column: 4, scope: !5)
!27 = !DILocation(line: 20, column: 4, scope: !5)
!28 = !DILocation(line: 21, column: 4, scope: !5)
!29 = !DILocation(line: 22, column: 4, scope: !5)
!30 = !DILocation(line: 23, column: 4, scope: !5)
!31 = !DILocation(line: 24, column: 4, scope: !5)
!32 = !DILocation(line: 25, column: 4, scope: !5)
!33 = !DILocation(line: 25, column: 4, scope: !5)
!34 = !DILocation(line: 26, column: 4, scope: !5)
!35 = !DILocation(line: 27, column: 4, scope: !5)
!36 = !DILocation(line: 0, column: 0, scope: !7)
!37 = !DILocation(line: 30, column: 16, scope: !7)
!38 = !DILocation(line: 32, column: 9, scope: !7)
!39 = !DILocation(line: 32, column: 9, scope: !7)
!40 = !DILocation(line: 33, column: 10, scope: !7)
!41 = !DILocation(line: 35, column: 9, scope: !7)
!42 = !DILocation(line: 35, column: 9, scope: !7)
!43 = !DILocation(line: 36, column: 10, scope: !7)
!44 = !DILocation(line: 38, column: 10, scope: !7)
!45 = !DILocation(line: 38, column: 10, scope: !7)
!46 = !DILocation(line: 39, column: 10, scope: !7)
!47 = !DILocation(line: 41, column: 9, scope: !7)
!48 = !DILocation(line: 41, column: 9, scope: !7)
!49 = !DILocation(line: 42, column: 10, scope: !7)
!50 = !DILocation(line: 44, column: 9, scope: !7)
!51 = !DILocation(line: 44, column: 9, scope: !7)
!52 = !DILocation(line: 45, column: 10, scope: !7)
!53 = !DILocation(line: 47, column: 9, scope: !7)
!54 = !DILocation(line: 47, column: 9, scope: !7)
!55 = !DILocation(line: 48, column: 10, scope: !7)
!56 = !DILocation(line: 50, column: 9, scope: !7)
!57 = !DILocation(line: 56, column: 8, scope: !7)
!58 = !DILocation(line: 58, column: 15, scope: !7)
!59 = !DILocation(line: 58, column: 4, scope: !7)
