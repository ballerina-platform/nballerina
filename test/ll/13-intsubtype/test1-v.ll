@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
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
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %25, label %24
24:
  call void @_B04rootd(i64 0), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B04rootd(i64 1), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B04rootd(i64 127), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B04rootd(i64 128), !dbg !14
  store ptr addrspace(1) null, ptr %4
  call void @_B04rootd(i64 -1), !dbg !15
  store ptr addrspace(1) null, ptr %5
  call void @_B04rootd(i64 -127), !dbg !16
  store ptr addrspace(1) null, ptr %6
  call void @_B04rootd(i64 -128), !dbg !17
  store ptr addrspace(1) null, ptr %7
  call void @_B04rootd(i64 -129), !dbg !18
  store ptr addrspace(1) null, ptr %8
  call void @_B04rootd(i64 255), !dbg !19
  store ptr addrspace(1) null, ptr %9
  call void @_B04rootd(i64 32767), !dbg !20
  store ptr addrspace(1) null, ptr %10
  call void @_B04rootd(i64 65535), !dbg !21
  store ptr addrspace(1) null, ptr %11
  call void @_B04rootd(i64 65536), !dbg !22
  store ptr addrspace(1) null, ptr %12
  call void @_B04rootd(i64 2147483647), !dbg !23
  store ptr addrspace(1) null, ptr %13
  call void @_B04rootd(i64 2147483648), !dbg !24
  store ptr addrspace(1) null, ptr %14
  call void @_B04rootd(i64 4294967295), !dbg !25
  store ptr addrspace(1) null, ptr %15
  call void @_B04rootd(i64 4294967296), !dbg !26
  store ptr addrspace(1) null, ptr %16
  call void @_B04rootd(i64 -32768), !dbg !27
  store ptr addrspace(1) null, ptr %17
  call void @_B04rootd(i64 -32769), !dbg !28
  store ptr addrspace(1) null, ptr %18
  call void @_B04rootd(i64 -2147483648), !dbg !29
  store ptr addrspace(1) null, ptr %19
  call void @_B04rootd(i64 -2147483649), !dbg !30
  store ptr addrspace(1) null, ptr %20
  ret void
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !10
  unreachable
}
define void @_B04rootd(i64 %0) !dbg !7 {
  %n = alloca i64
  %s = alloca ptr addrspace(1)
  %n.1 = alloca i64
  %n.2 = alloca i64
  %2 = alloca ptr addrspace(1)
  %n.3 = alloca i64
  %n.4 = alloca i64
  %3 = alloca ptr addrspace(1)
  %n.5 = alloca i64
  %n.6 = alloca i64
  %4 = alloca ptr addrspace(1)
  %n.7 = alloca i64
  %n.8 = alloca i64
  %5 = alloca ptr addrspace(1)
  %n.9 = alloca i64
  %n.10 = alloca i64
  %6 = alloca ptr addrspace(1)
  %n.11 = alloca i64
  %n.12 = alloca i64
  %7 = alloca ptr addrspace(1)
  %s.1 = alloca ptr addrspace(1)
  %s.2 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %96, label %13
13:
  store i64 %0, ptr %n
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr %s
  %14 = load i64, ptr %n
  %15 = icmp sle i64 -128, %14
  %16 = icmp sge i64 127, %14
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %23
18:
  %19 = load i64, ptr %n
  store i64 %19, ptr %n.1
  %20 = load ptr addrspace(1), ptr %s
  %21 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441210483)), !dbg !33
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %22, ptr %s
  br label %23
23:
  %24 = load i64, ptr %n
  store i64 %24, ptr %n.2
  %25 = load i64, ptr %n
  %26 = icmp sle i64 -32768, %25
  %27 = icmp sge i64 32767, %25
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %34
29:
  %30 = load i64, ptr %n
  store i64 %30, ptr %n.3
  %31 = load ptr addrspace(1), ptr %s
  %32 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %31, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573428035955)), !dbg !34
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %33, ptr %s
  br label %34
34:
  %35 = load i64, ptr %n
  store i64 %35, ptr %n.4
  %36 = load i64, ptr %n
  %37 = icmp sle i64 -2147483648, %36
  %38 = icmp sge i64 2147483647, %36
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %45
40:
  %41 = load i64, ptr %n
  store i64 %41, ptr %n.5
  %42 = load ptr addrspace(1), ptr %s
  %43 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %42, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573427774323)), !dbg !35
  store ptr addrspace(1) %43, ptr %4
  %44 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %44, ptr %s
  br label %45
45:
  %46 = load i64, ptr %n
  store i64 %46, ptr %n.6
  %47 = load i64, ptr %n
  %48 = icmp sle i64 0, %47
  %49 = icmp sge i64 255, %47
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %56
51:
  %52 = load i64, ptr %n
  store i64 %52, ptr %n.7
  %53 = load ptr addrspace(1), ptr %s
  %54 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %53, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441210485)), !dbg !36
  store ptr addrspace(1) %54, ptr %5
  %55 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %55, ptr %s
  br label %56
56:
  %57 = load i64, ptr %n
  store i64 %57, ptr %n.8
  %58 = load i64, ptr %n
  %59 = icmp sle i64 0, %58
  %60 = icmp sge i64 65535, %58
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %67
62:
  %63 = load i64, ptr %n
  store i64 %63, ptr %n.9
  %64 = load ptr addrspace(1), ptr %s
  %65 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %64, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573428035957)), !dbg !37
  store ptr addrspace(1) %65, ptr %6
  %66 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %66, ptr %s
  br label %67
67:
  %68 = load i64, ptr %n
  store i64 %68, ptr %n.10
  %69 = load i64, ptr %n
  %70 = icmp sle i64 0, %69
  %71 = icmp sge i64 4294967295, %69
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %78
73:
  %74 = load i64, ptr %n
  store i64 %74, ptr %n.11
  %75 = load ptr addrspace(1), ptr %s
  %76 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %75, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573427774325)), !dbg !38
  store ptr addrspace(1) %76, ptr %7
  %77 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %77, ptr %s
  br label %78
78:
  %79 = load i64, ptr %n
  store i64 %79, ptr %n.12
  %80 = load ptr addrspace(1), ptr %s
  %81 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %80), !dbg !39
  br i1 %81, label %82, label %84
82:
  %83 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %83, ptr %s.1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432114793), ptr %s
  br label %84
84:
  %85 = load ptr addrspace(1), ptr %s
  store ptr addrspace(1) %85, ptr %s.2
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !40
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load ptr addrspace(1), ptr %s
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %8
  %95 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !41
  store ptr addrspace(1) null, ptr %9
  ret void
96:
  %97 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %97), !dbg !32
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
!31 = !DILocation(line: 0, column: 0, scope: !7)
!32 = !DILocation(line: 26, column: 16, scope: !7)
!33 = !DILocation(line: 29, column: 10, scope: !7)
!34 = !DILocation(line: 32, column: 10, scope: !7)
!35 = !DILocation(line: 35, column: 10, scope: !7)
!36 = !DILocation(line: 38, column: 10, scope: !7)
!37 = !DILocation(line: 41, column: 10, scope: !7)
!38 = !DILocation(line: 44, column: 10, scope: !7)
!39 = !DILocation(line: 46, column: 9, scope: !7)
!40 = !DILocation(line: 49, column: 15, scope: !7)
!41 = !DILocation(line: 49, column: 4, scope: !7)
