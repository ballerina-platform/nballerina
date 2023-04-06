@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %22, label %15
15:
  %16 = call ptr addrspace(1) @_B_f(i1 1), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  %18 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %17), !dbg !12
  %19 = extractvalue {ptr addrspace(1), i1} %18, 1
  br i1 %19, label %31, label %24
20:
  %21 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !23
  unreachable
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !10
  unreachable
24:
  %25 = extractvalue {ptr addrspace(1), i1} %18, 0
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  %27 = addrspacecast ptr addrspace(1) %26 to ptr
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 144115188075855872
  br i1 %30, label %33, label %51
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !9
  store ptr addrspace(1) %32, ptr %11
  br label %20
33:
  %34 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %26), !dbg !13
  store i64 %34, ptr %3
  %35 = load i64, ptr %3
  store i64 %35, ptr %i
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i64, ptr %i
  %41 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %40), !dbg !15
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %4
  %46 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !16
  store ptr addrspace(1) null, ptr %5
  %47 = call ptr addrspace(1) @_B_f(i1 0), !dbg !17
  store ptr addrspace(1) %47, ptr %6
  %48 = load ptr addrspace(1), ptr %6
  %49 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %48), !dbg !18
  %50 = extractvalue {ptr addrspace(1), i1} %49, 1
  br i1 %50, label %60, label %53
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !9
  store ptr addrspace(1) %52, ptr %11
  br label %20
53:
  %54 = extractvalue {ptr addrspace(1), i1} %49, 0
  store ptr addrspace(1) %54, ptr %7
  %55 = load ptr addrspace(1), ptr %7
  %56 = addrspacecast ptr addrspace(1) %55 to ptr
  %57 = ptrtoint ptr %56 to i64
  %58 = and i64 %57, 2233785415175766016
  %59 = icmp eq i64 %58, 144115188075855872
  br i1 %59, label %62, label %76
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !9
  store ptr addrspace(1) %61, ptr %11
  br label %20
62:
  %63 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %55), !dbg !19
  store i64 %63, ptr %8
  %64 = load i64, ptr %8
  store i64 %64, ptr %i
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load i64, ptr %i
  %70 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %69), !dbg !21
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %9
  %75 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !22
  store ptr addrspace(1) null, ptr %10
  ret void
76:
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 2051), !dbg !9
  store ptr addrspace(1) %77, ptr %11
  br label %20
}
define internal ptr addrspace(1) @_B_f(i1 %0) !dbg !7 {
  %isInt = alloca i1
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %13, label %5
5:
  store i1 %0, ptr %isInt
  %6 = load i1, ptr %isInt
  br i1 %6, label %7, label %11
7:
  %8 = and i64 72057594037927935, 2
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  ret ptr addrspace(1) %10
11:
  %12 = call ptr addrspace(1) @_bal_float_to_tagged(double 3.5), !dbg !26
  ret ptr addrspace(1) %12
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !24
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !25
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/13-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 17, scope: !5)
!12 = !DILocation(line: 5, column: 12, scope: !5)
!13 = !DILocation(line: 5, column: 12, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 13, scope: !5)
!18 = !DILocation(line: 8, column: 8, scope: !5)
!19 = !DILocation(line: 8, column: 8, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 0, scope: !5)
!24 = !DILocation(line: 0, column: 0, scope: !7)
!25 = !DILocation(line: 12, column: 9, scope: !7)
!26 = !DILocation(line: 17, column: 8, scope: !7)
