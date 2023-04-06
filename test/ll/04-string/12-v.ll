@_bal_stack_guard = external global ptr
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 5, [20 x i8] c"\E0\B9\80\E0\B8\88\E0\B8\A1\E0\B8\AA\E0\B9\8C\00\00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_Bb0m4lang6stringlength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_string_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %name = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %name2 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %name3 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i8
  %21 = load ptr, ptr @_bal_stack_guard
  %22 = icmp ult ptr %20, %21
  br i1 %22, label %121, label %23
23:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr %name
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load ptr addrspace(1), ptr %name
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %1
  %33 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %34 = load ptr addrspace(1), ptr %name
  %35 = call i64 @_Bb0m4lang6stringlength(ptr addrspace(1) %34), !dbg !11
  store i64 %35, ptr %3
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i64, ptr %3
  %41 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %40), !dbg !13
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %4
  %46 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !14
  store ptr addrspace(1) null, ptr %5
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr %name2
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = load ptr addrspace(1), ptr %name2
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %6
  %56 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %57 = load ptr addrspace(1), ptr %name
  %58 = load ptr addrspace(1), ptr %name2
  %59 = call i1 @_bal_string_eq(ptr addrspace(1) %57, ptr addrspace(1) %58), !dbg !17
  store i1 %59, ptr %8
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load i1, ptr %8
  %65 = zext i1 %64 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %9
  %72 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !19
  store ptr addrspace(1) null, ptr %10
  %73 = load ptr addrspace(1), ptr %name
  %74 = load ptr addrspace(1), ptr %name2
  %75 = call i1 @_bal_string_eq(ptr addrspace(1) %73, ptr addrspace(1) %74), !dbg !20
  %76 = xor i1 %75, 1
  store i1 %76, ptr %11
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i1, ptr %11
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, ptr addrspace(1) null, i64 %83
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %12
  %89 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !22
  store ptr addrspace(1) null, ptr %13
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187969552539978), ptr %name3
  %90 = load ptr addrspace(1), ptr %name3
  store ptr addrspace(1) %90, ptr %_
  %91 = load ptr addrspace(1), ptr %name
  %92 = icmp eq ptr addrspace(1) %91, getelementptr(i8, ptr addrspace(1) null, i64 2738187969552539978)
  store i1 %92, ptr %14
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i1, ptr %14
  %98 = zext i1 %97 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, ptr addrspace(1) null, i64 %99
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %15
  %105 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %106 = load ptr addrspace(1), ptr %name
  %107 = icmp ne ptr addrspace(1) %106, getelementptr(i8, ptr addrspace(1) null, i64 2738187969552539978)
  store i1 %107, ptr %17
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i1, ptr %17
  %113 = zext i1 %112 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, ptr addrspace(1) null, i64 %114
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %18
  %120 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !26
  store ptr addrspace(1) null, ptr %19
  ret void
121:
  %122 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %122), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 7, column: 20, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 20, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 20, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 15, scope: !5)
!24 = !DILocation(line: 14, column: 4, scope: !5)
!25 = !DILocation(line: 15, column: 15, scope: !5)
!26 = !DILocation(line: 15, column: 4, scope: !5)
