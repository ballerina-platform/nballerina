@_bal_stack_guard = external global ptr
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B_foo}, align 8
@_Bi04root0 = external constant {i32}
@.func1 = internal unnamed_addr constant {ptr} {ptr @_B_bar}, align 8
@.func2 = internal unnamed_addr constant {ptr} {ptr @_B_notFoo}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %f = alloca ptr addrspace(1)
  %x = alloca i1
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %y = alloca i1
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %b2 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i8
  %23 = load ptr, ptr @_bal_stack_guard
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %158, label %25
25:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr %f
  %26 = load ptr addrspace(1), ptr %f
  %27 = ptrtoint ptr addrspace(1) %26 to i64
  %28 = and i64 %27, 72057594037927928
  %29 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %28
  %30 = addrspacecast ptr addrspace(1) %29 to ptr
  %31 = bitcast ptr %30 to ptr
  %32 = getelementptr inbounds {ptr}, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32
  %34 = call i1 %33(), !dbg !17
  store i1 %34, ptr %1
  %35 = load i1, ptr %1
  store i1 %35, ptr %x
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i1, ptr %x
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %2
  %48 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !19
  store ptr addrspace(1) null, ptr %3
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr %b
  %49 = load ptr addrspace(1), ptr %b
  %50 = ptrtoint ptr addrspace(1) %49 to i64
  %51 = and i64 %50, 72057594037927928
  %52 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %51
  %53 = addrspacecast ptr addrspace(1) %52 to ptr
  %54 = bitcast ptr %53 to ptr
  %55 = getelementptr inbounds {ptr}, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55
  %57 = call i1 %56(i64 1, i64 2), !dbg !20
  store i1 %57, ptr %4
  %58 = load i1, ptr %4
  store i1 %58, ptr %y
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = load i1, ptr %y
  %64 = zext i1 %63 to i64
  %65 = or i64 %64, 72057594037927936
  %66 = getelementptr i8, ptr addrspace(1) null, i64 %65
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %66, ptr addrspace(1) %67
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %68
  %69 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %70 = getelementptr i8, ptr addrspace(1) %69, i64 864691128455135236
  store ptr addrspace(1) %70, ptr %5
  %71 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %71), !dbg !22
  store ptr addrspace(1) null, ptr %6
  %72 = load ptr addrspace(1), ptr %b
  %73 = ptrtoint ptr addrspace(1) %72 to i64
  %74 = and i64 %73, 72057594037927928
  %75 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %74
  %76 = addrspacecast ptr addrspace(1) %75 to ptr
  %77 = bitcast ptr %76 to ptr
  %78 = getelementptr inbounds {ptr}, ptr %77, i32 0, i32 0
  %79 = load ptr, ptr %78
  %80 = call i1 %79(i64 2, i64 1), !dbg !23
  store i1 %80, ptr %7
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = load i1, ptr %7
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, ptr addrspace(1) null, i64 %87
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %8
  %93 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !25
  store ptr addrspace(1) null, ptr %9
  %94 = call i1 @_B_FB(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), i64 1, i64 2), !dbg !26
  store i1 %94, ptr %10
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load i1, ptr %10
  %100 = zext i1 %99 to i64
  %101 = or i64 %100, 72057594037927936
  %102 = getelementptr i8, ptr addrspace(1) null, i64 %101
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %11
  %107 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !28
  store ptr addrspace(1) null, ptr %12
  %108 = call i1 @_B_FB(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), i64 1, i64 2), !dbg !29
  store i1 %108, ptr %13
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = load i1, ptr %13
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %14
  %121 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !31
  store ptr addrspace(1) null, ptr %15
  %122 = call i1 @_B_FB(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), i64 2, i64 1), !dbg !32
  store i1 %122, ptr %16
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i1, ptr %16
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, ptr addrspace(1) null, i64 %129
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %17
  %135 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !34
  store ptr addrspace(1) null, ptr %18
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr %b2
  %136 = load ptr addrspace(1), ptr %b2
  %137 = ptrtoint ptr addrspace(1) %136 to i64
  %138 = and i64 %137, 72057594037927928
  %139 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %138
  %140 = addrspacecast ptr addrspace(1) %139 to ptr
  %141 = bitcast ptr %140 to ptr
  %142 = getelementptr inbounds {ptr}, ptr %141, i32 0, i32 0
  %143 = load ptr, ptr %142
  %144 = call i1 %143(i64 2, i64 1), !dbg !35
  store i1 %144, ptr %19
  %145 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 3
  %147 = load ptr addrspace(1), ptr addrspace(1) %146, align 8
  %148 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %149 = load i1, ptr %19
  %150 = zext i1 %149 to i64
  %151 = or i64 %150, 72057594037927936
  %152 = getelementptr i8, ptr addrspace(1) null, i64 %151
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %148, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %20
  %157 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !37
  store ptr addrspace(1) null, ptr %21
  ret void
158:
  %159 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %159), !dbg !16
  unreachable
}
define internal i1 @_B_foo() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i1 1
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !38
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !39
  unreachable
}
define internal i1 @_B_notFoo() !dbg !9 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i1 0
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !40
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !41
  unreachable
}
define internal i1 @_B_bar(i64 %0, i64 %1) !dbg !11 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  %8 = load i64, ptr %a
  %9 = load i64, ptr %b
  %10 = icmp sgt i64 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 7684), !dbg !42
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !43
  unreachable
}
define internal i1 @_B_FB(ptr addrspace(1) %0, ptr addrspace(1) %1, i64 %2, i64 %3) !dbg !13 {
  %a = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %x = alloca i64
  %y = alloca i64
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %39, label %11
11:
  store ptr addrspace(1) %0, ptr %a
  store ptr addrspace(1) %1, ptr %b
  store i64 %2, ptr %x
  store i64 %3, ptr %y
  %12 = load ptr addrspace(1), ptr %a
  %13 = ptrtoint ptr addrspace(1) %12 to i64
  %14 = and i64 %13, 72057594037927928
  %15 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %14
  %16 = addrspacecast ptr addrspace(1) %15 to ptr
  %17 = bitcast ptr %16 to ptr
  %18 = getelementptr inbounds {ptr}, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18
  %20 = call i1 %19(), !dbg !46
  store i1 %20, ptr %5
  %21 = load i1, ptr %5
  br i1 %21, label %22, label %23
22:
  store i1 1, ptr %7
  br label %37
23:
  %24 = load i64, ptr %x
  %25 = load i64, ptr %y
  %26 = load ptr addrspace(1), ptr %b
  %27 = ptrtoint ptr addrspace(1) %26 to i64
  %28 = and i64 %27, 72057594037927928
  %29 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %28
  %30 = addrspacecast ptr addrspace(1) %29 to ptr
  %31 = bitcast ptr %30 to ptr
  %32 = getelementptr inbounds {ptr}, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32
  %34 = call i1 %33(i64 %24, i64 %25), !dbg !47
  store i1 %34, ptr %6
  %35 = load i1, ptr %6
  br i1 %35, label %22, label %36
36:
  store i1 0, ptr %7
  br label %37
37:
  %38 = load i1, ptr %7
  ret i1 %38
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 8708), !dbg !44
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !45
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/assign1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"notFoo", linkageName:"_B_notFoo", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"FB", linkageName:"_B_FB", scope: !1, file: !1, line: 34, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = !DILocation(line: 0, column: 0, scope: !5)
!16 = !DILocation(line: 5, column: 16, scope: !5)
!17 = !DILocation(line: 7, column: 16, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 16, scope: !5)
!21 = !DILocation(line: 12, column: 15, scope: !5)
!22 = !DILocation(line: 12, column: 4, scope: !5)
!23 = !DILocation(line: 13, column: 15, scope: !5)
!24 = !DILocation(line: 13, column: 15, scope: !5)
!25 = !DILocation(line: 13, column: 4, scope: !5)
!26 = !DILocation(line: 14, column: 15, scope: !5)
!27 = !DILocation(line: 14, column: 15, scope: !5)
!28 = !DILocation(line: 14, column: 4, scope: !5)
!29 = !DILocation(line: 15, column: 15, scope: !5)
!30 = !DILocation(line: 15, column: 15, scope: !5)
!31 = !DILocation(line: 15, column: 4, scope: !5)
!32 = !DILocation(line: 16, column: 15, scope: !5)
!33 = !DILocation(line: 16, column: 15, scope: !5)
!34 = !DILocation(line: 16, column: 4, scope: !5)
!35 = !DILocation(line: 19, column: 15, scope: !5)
!36 = !DILocation(line: 19, column: 15, scope: !5)
!37 = !DILocation(line: 19, column: 4, scope: !5)
!38 = !DILocation(line: 0, column: 0, scope: !7)
!39 = !DILocation(line: 22, column: 9, scope: !7)
!40 = !DILocation(line: 0, column: 0, scope: !9)
!41 = !DILocation(line: 26, column: 9, scope: !9)
!42 = !DILocation(line: 0, column: 0, scope: !11)
!43 = !DILocation(line: 30, column: 9, scope: !11)
!44 = !DILocation(line: 0, column: 0, scope: !13)
!45 = !DILocation(line: 34, column: 9, scope: !13)
!46 = !DILocation(line: 35, column: 11, scope: !13)
!47 = !DILocation(line: 35, column: 18, scope: !13)
