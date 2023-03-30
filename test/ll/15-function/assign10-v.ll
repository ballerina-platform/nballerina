@_bal_stack_guard = external global ptr
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B0m4root9functionssum}, align 8
@_Bi04root0 = external constant {i32}
@.func1 = internal unnamed_addr constant {ptr} {ptr @_B0m4root9functionsfoo}, align 8
@.func2 = internal unnamed_addr constant {ptr} {ptr @_B_foo}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_B0m4root9functionssum(i64, i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_B0m4root9functionsfoo(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %f = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %97, label %16
16:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr %x
  %17 = load ptr addrspace(1), ptr %x
  %18 = ptrtoint ptr addrspace(1) %17 to i64
  %19 = and i64 %18, 72057594037927928
  %20 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %19
  %21 = addrspacecast ptr addrspace(1) %20 to ptr
  %22 = bitcast ptr %21 to ptr
  %23 = getelementptr inbounds {ptr}, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23
  %25 = call i64 %24(i64 1, i64 2), !dbg !11
  store i64 %25, ptr %1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %1
  %31 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %30), !dbg !13
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %2
  %36 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !14
  store ptr addrspace(1) null, ptr %3
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr %y
  %37 = load ptr addrspace(1), ptr %y
  %38 = ptrtoint ptr addrspace(1) %37 to i64
  %39 = and i64 %38, 72057594037927928
  %40 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %39
  %41 = addrspacecast ptr addrspace(1) %40 to ptr
  %42 = bitcast ptr %41 to ptr
  %43 = getelementptr inbounds {ptr}, ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43
  %45 = call i64 %44(i64 2, i64 2), !dbg !15
  store i64 %45, ptr %4
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i64, ptr %4
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !17
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %5
  %56 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !18
  store ptr addrspace(1) null, ptr %6
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr %f
  %57 = load ptr addrspace(1), ptr %f
  %58 = ptrtoint ptr addrspace(1) %57 to i64
  %59 = and i64 %58, 72057594037927928
  %60 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %59
  %61 = addrspacecast ptr addrspace(1) %60 to ptr
  %62 = bitcast ptr %61 to ptr
  %63 = getelementptr inbounds {ptr}, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63
  %65 = call i64 %64(i64 1), !dbg !19
  store i64 %65, ptr %7
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i64, ptr %7
  %71 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %70), !dbg !21
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %8
  %76 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !22
  store ptr addrspace(1) null, ptr %9
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), ptr %f
  %77 = load ptr addrspace(1), ptr %f
  %78 = ptrtoint ptr addrspace(1) %77 to i64
  %79 = and i64 %78, 72057594037927928
  %80 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %79
  %81 = addrspacecast ptr addrspace(1) %80 to ptr
  %82 = bitcast ptr %81 to ptr
  %83 = getelementptr inbounds {ptr}, ptr %82, i32 0, i32 0
  %84 = load ptr, ptr %83
  %85 = call i64 %84(i64 1), !dbg !23
  store i64 %85, ptr %10
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load i64, ptr %10
  %91 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %90), !dbg !25
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %11
  %96 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !26
  store ptr addrspace(1) null, ptr %12
  ret void
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %98), !dbg !10
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %i
  %8 = load i64, ptr %i
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %8, i64 2)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !29
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 4612), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !28
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !27
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/assign10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 18, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 16, scope: !5)
!11 = !DILocation(line: 8, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 15, scope: !5)
!18 = !DILocation(line: 10, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 15, scope: !5)
!20 = !DILocation(line: 13, column: 15, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 4, scope: !5)
!23 = !DILocation(line: 15, column: 15, scope: !5)
!24 = !DILocation(line: 15, column: 15, scope: !5)
!25 = !DILocation(line: 15, column: 15, scope: !5)
!26 = !DILocation(line: 15, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 18, column: 9, scope: !7)
!29 = !DILocation(line: 20, column: 0, scope: !7)
