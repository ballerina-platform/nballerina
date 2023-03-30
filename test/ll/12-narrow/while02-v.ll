@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"unreached\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %count = alloca ptr addrspace(1)
  %count.1 = alloca i64
  %count.2 = alloca i1
  %i = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca i64
  %count.3 = alloca ptr addrspace(1)
  %count.4 = alloca i64
  %count.5 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %78, label %11
11:
  %12 = and i64 72057594037927935, 3
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  store ptr addrspace(1) %14, ptr %count
  br label %15
15:
  %16 = load ptr addrspace(1), ptr %count
  %17 = addrspacecast ptr addrspace(1) %16 to ptr
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 144115188075855872
  br i1 %20, label %21, label %39
21:
  %22 = load ptr addrspace(1), ptr %count
  %23 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %22), !dbg !12
  store i64 %23, ptr %count.1
  %24 = load i64, ptr %count.1
  store i64 %24, ptr %i
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = load i64, ptr %i
  %30 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %29), !dbg !14
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !15
  store ptr addrspace(1) null, ptr %2
  %36 = load i64, ptr %count.1
  %37 = icmp sgt i64 %36, 1
  store i1 %37, ptr %3
  %38 = load i1, ptr %3
  br i1 %38, label %49, label %53
39:
  %40 = load ptr addrspace(1), ptr %count
  %41 = addrspacecast ptr addrspace(1) %40 to ptr
  %42 = ptrtoint ptr %41 to i64
  %43 = trunc i64 %42 to i1
  store i1 %43, ptr %count.2
  %44 = load ptr addrspace(1), ptr %count
  %45 = addrspacecast ptr addrspace(1) %44 to ptr
  %46 = ptrtoint ptr %45 to i64
  %47 = and i64 %46, 2233785415175766016
  %48 = icmp eq i64 %47, 144115188075855872
  br i1 %48, label %59, label %71
49:
  %50 = load i64, ptr %count.1
  %51 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %50, i64 1)
  %52 = extractvalue {i64, i1} %51, 1
  br i1 %52, label %84, label %80
53:
  %54 = zext i1 0 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, ptr addrspace(1) null, i64 %55
  store ptr addrspace(1) %56, ptr %count
  br label %57
57:
  %58 = load ptr addrspace(1), ptr %count
  store ptr addrspace(1) %58, ptr %count.3
  br label %15
59:
  %60 = load ptr addrspace(1), ptr %count
  %61 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %60), !dbg !9
  store i64 %61, ptr %count.4
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %5
  %70 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !11
  store ptr addrspace(1) null, ptr %6
  br label %71
71:
  %72 = load ptr addrspace(1), ptr %count
  %73 = addrspacecast ptr addrspace(1) %72 to ptr
  %74 = ptrtoint ptr %73 to i64
  %75 = trunc i64 %74 to i1
  store i1 %75, ptr %count.5
  ret void
76:
  %77 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %77), !dbg !17
  unreachable
78:
  %79 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %79), !dbg !8
  unreachable
80:
  %81 = extractvalue {i64, i1} %51, 0
  store i64 %81, ptr %4
  %82 = load i64, ptr %4
  %83 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %82), !dbg !16
  store ptr addrspace(1) %83, ptr %count
  br label %57
84:
  %85 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !7
  store ptr addrspace(1) %85, ptr %7
  br label %76
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/while02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 17, column: 12, scope: !5)
!10 = !DILocation(line: 19, column: 17, scope: !5)
!11 = !DILocation(line: 19, column: 6, scope: !5)
!12 = !DILocation(line: 21, column: 0, scope: !5)
!13 = !DILocation(line: 7, column: 17, scope: !5)
!14 = !DILocation(line: 7, column: 17, scope: !5)
!15 = !DILocation(line: 7, column: 6, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 21, column: 0, scope: !5)
