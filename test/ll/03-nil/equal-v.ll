@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
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
  %x = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %87, label %19
19:
  call void @_B_makeNil(), !dbg !13
  store ptr addrspace(1) null, ptr %1
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = zext i1 1 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %2
  %31 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !15
  store ptr addrspace(1) null, ptr %3
  call void @_B_makeNil(), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = zext i1 1 to i64
  %37 = or i64 %36, 72057594037927936
  %38 = getelementptr i8, ptr addrspace(1) null, i64 %37
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %5
  %43 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = zext i1 0 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %7
  %55 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !20
  store ptr addrspace(1) null, ptr %8
  store ptr addrspace(1) null, ptr %x
  %56 = load ptr addrspace(1), ptr %x
  %57 = icmp eq ptr addrspace(1) %56, null
  store i1 %57, ptr %9
  %58 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %60 = load ptr addrspace(1), ptr addrspace(1) %59, align 8
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = load i1, ptr %9
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %61, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %10
  %70 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !22
  store ptr addrspace(1) null, ptr %11
  %71 = call ptr addrspace(1) @_B_makeNilAny(), !dbg !23
  store ptr addrspace(1) %71, ptr %12
  %72 = load ptr addrspace(1), ptr %12
  %73 = icmp ne ptr addrspace(1) %72, null
  store i1 %73, ptr %13
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load i1, ptr %13
  %79 = zext i1 %78 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %14
  %86 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !25
  store ptr addrspace(1) null, ptr %15
  ret void
87:
  %88 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %88), !dbg !12
  unreachable
}
define internal void @_B_makeNil() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !26
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !27
  unreachable
}
define internal ptr addrspace(1) @_B_makeNilAny() !dbg !9 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret ptr addrspace(1) null
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !28
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !29
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-nil/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"makeNil", linkageName:"_B_makeNil", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"makeNilAny", linkageName:"_B_makeNilAny", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 0, column: 0, scope: !7)
!27 = !DILocation(line: 13, column: 9, scope: !7)
!28 = !DILocation(line: 0, column: 0, scope: !9)
!29 = !DILocation(line: 17, column: 9, scope: !9)
