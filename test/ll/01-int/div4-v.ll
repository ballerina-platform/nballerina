@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i64
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i64
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca i8
  %41 = load ptr, ptr @_bal_stack_guard
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %164, label %43
43:
  %44 = call i64 @_B_div(i64 60, i64 2), !dbg !11
  store i64 %44, ptr %1
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = load i64, ptr %1
  %50 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %49), !dbg !13
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %2
  %55 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %56 = call i64 @_B_div(i64 120, i64 3), !dbg !15
  store i64 %56, ptr %4
  %57 = load i64, ptr %4
  %58 = call i64 @_B_div(i64 %57, i64 4), !dbg !16
  store i64 %58, ptr %5
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = load i64, ptr %5
  %64 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %63), !dbg !18
  %65 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %64, ptr addrspace(1) %65
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %66
  %67 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %68 = getelementptr i8, ptr addrspace(1) %67, i64 864691128455135236
  store ptr addrspace(1) %68, ptr %6
  %69 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %69), !dbg !19
  store ptr addrspace(1) null, ptr %7
  %70 = call i64 @_B_div(i64 120, i64 3), !dbg !20
  store i64 %70, ptr %8
  %71 = call i64 @_B_div(i64 16, i64 4), !dbg !21
  store i64 %71, ptr %9
  %72 = load i64, ptr %8
  %73 = load i64, ptr %9
  %74 = call i64 @_B_div(i64 %72, i64 %73), !dbg !22
  store i64 %74, ptr %10
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load i64, ptr %10
  %80 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %79), !dbg !24
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %11
  %85 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !25
  store ptr addrspace(1) null, ptr %12
  %86 = call i64 @_B_div(i64 120, i64 3), !dbg !26
  store i64 %86, ptr %13
  %87 = call i64 @_B_div(i64 16, i64 4), !dbg !27
  store i64 %87, ptr %14
  %88 = load i64, ptr %13
  %89 = load i64, ptr %14
  %90 = call i64 @_B_div(i64 %88, i64 %89), !dbg !28
  store i64 %90, ptr %15
  %91 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = load i64, ptr %15
  %96 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %95), !dbg !30
  %97 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %94, i64 0, i64 0
  store ptr addrspace(1) %96, ptr addrspace(1) %97
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  store i64 1, ptr addrspace(1) %98
  %99 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %100 = getelementptr i8, ptr addrspace(1) %99, i64 864691128455135236
  store ptr addrspace(1) %100, ptr %16
  %101 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %101), !dbg !31
  store ptr addrspace(1) null, ptr %17
  %102 = call i64 @_B_div(i64 120, i64 3), !dbg !32
  store i64 %102, ptr %18
  %103 = call i64 @_B_div(i64 16, i64 4), !dbg !33
  store i64 %103, ptr %19
  %104 = load i64, ptr %18
  %105 = load i64, ptr %19
  %106 = call i64 @_B_div(i64 %104, i64 %105), !dbg !34
  store i64 %106, ptr %20
  %107 = load i64, ptr %20
  %108 = call i64 @_B_div(i64 %107, i64 2), !dbg !35
  store i64 %108, ptr %21
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = load i64, ptr %21
  %114 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %113), !dbg !37
  %115 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %114, ptr addrspace(1) %115
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %116
  %117 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %118 = getelementptr i8, ptr addrspace(1) %117, i64 864691128455135236
  store ptr addrspace(1) %118, ptr %22
  %119 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %119), !dbg !38
  store ptr addrspace(1) null, ptr %23
  %120 = call i64 @_B_div(i64 120, i64 3), !dbg !39
  store i64 %120, ptr %24
  %121 = call i64 @_B_div(i64 16, i64 4), !dbg !40
  store i64 %121, ptr %25
  %122 = load i64, ptr %24
  %123 = load i64, ptr %25
  %124 = call i64 @_B_div(i64 %122, i64 %123), !dbg !41
  store i64 %124, ptr %26
  %125 = call i64 @_B_div(i64 10, i64 5), !dbg !42
  store i64 %125, ptr %27
  %126 = load i64, ptr %26
  %127 = load i64, ptr %27
  %128 = call i64 @_B_div(i64 %126, i64 %127), !dbg !43
  store i64 %128, ptr %28
  %129 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %129, i64 0, i32 3
  %131 = load ptr addrspace(1), ptr addrspace(1) %130, align 8
  %132 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %133 = load i64, ptr %28
  %134 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %133), !dbg !45
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %132, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %129, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %29
  %139 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !46
  store ptr addrspace(1) null, ptr %30
  %140 = call i64 @_B_div(i64 120, i64 3), !dbg !47
  store i64 %140, ptr %31
  %141 = call i64 @_B_div(i64 16, i64 4), !dbg !48
  store i64 %141, ptr %32
  %142 = load i64, ptr %31
  %143 = load i64, ptr %32
  %144 = call i64 @_B_div(i64 %142, i64 %143), !dbg !49
  store i64 %144, ptr %33
  %145 = call i64 @_B_div(i64 400, i64 20), !dbg !50
  store i64 %145, ptr %34
  %146 = call i64 @_B_div(i64 100, i64 10), !dbg !51
  store i64 %146, ptr %35
  %147 = load i64, ptr %34
  %148 = load i64, ptr %35
  %149 = call i64 @_B_div(i64 %147, i64 %148), !dbg !52
  store i64 %149, ptr %36
  %150 = load i64, ptr %33
  %151 = load i64, ptr %36
  %152 = call i64 @_B_div(i64 %150, i64 %151), !dbg !53
  store i64 %152, ptr %37
  %153 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !54
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %153, i64 0, i32 3
  %155 = load ptr addrspace(1), ptr addrspace(1) %154, align 8
  %156 = bitcast ptr addrspace(1) %155 to ptr addrspace(1)
  %157 = load i64, ptr %37
  %158 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %157), !dbg !55
  %159 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %156, i64 0, i64 0
  store ptr addrspace(1) %158, ptr addrspace(1) %159
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %153, i64 0, i32 1
  store i64 1, ptr addrspace(1) %160
  %161 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %162 = getelementptr i8, ptr addrspace(1) %161, i64 864691128455135236
  store ptr addrspace(1) %162, ptr %38
  %163 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %163), !dbg !56
  store ptr addrspace(1) null, ptr %39
  ret void
164:
  %165 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %165), !dbg !10
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %9 = load i64, ptr %x
  %10 = load i64, ptr %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !59
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !57
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !58
  unreachable
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 3842), !dbg !57
  store ptr addrspace(1) %17, ptr %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %25, label %22
22:
  %23 = sdiv i64 %9, %10
  store i64 %23, ptr %3
  %24 = load i64, ptr %3
  ret i64 %24
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !57
  store ptr addrspace(1) %26, ptr %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/div4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"div", linkageName:"_B_div", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 19, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 4, scope: !5)
!20 = !DILocation(line: 7, column: 19, scope: !5)
!21 = !DILocation(line: 7, column: 32, scope: !5)
!22 = !DILocation(line: 7, column: 15, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 15, scope: !5)
!25 = !DILocation(line: 7, column: 4, scope: !5)
!26 = !DILocation(line: 8, column: 19, scope: !5)
!27 = !DILocation(line: 8, column: 32, scope: !5)
!28 = !DILocation(line: 8, column: 15, scope: !5)
!29 = !DILocation(line: 8, column: 15, scope: !5)
!30 = !DILocation(line: 8, column: 15, scope: !5)
!31 = !DILocation(line: 8, column: 4, scope: !5)
!32 = !DILocation(line: 9, column: 23, scope: !5)
!33 = !DILocation(line: 9, column: 36, scope: !5)
!34 = !DILocation(line: 9, column: 19, scope: !5)
!35 = !DILocation(line: 9, column: 15, scope: !5)
!36 = !DILocation(line: 9, column: 15, scope: !5)
!37 = !DILocation(line: 9, column: 15, scope: !5)
!38 = !DILocation(line: 9, column: 4, scope: !5)
!39 = !DILocation(line: 10, column: 23, scope: !5)
!40 = !DILocation(line: 10, column: 36, scope: !5)
!41 = !DILocation(line: 10, column: 19, scope: !5)
!42 = !DILocation(line: 10, column: 49, scope: !5)
!43 = !DILocation(line: 10, column: 15, scope: !5)
!44 = !DILocation(line: 10, column: 15, scope: !5)
!45 = !DILocation(line: 10, column: 15, scope: !5)
!46 = !DILocation(line: 10, column: 4, scope: !5)
!47 = !DILocation(line: 11, column: 23, scope: !5)
!48 = !DILocation(line: 11, column: 36, scope: !5)
!49 = !DILocation(line: 11, column: 19, scope: !5)
!50 = !DILocation(line: 11, column: 53, scope: !5)
!51 = !DILocation(line: 11, column: 67, scope: !5)
!52 = !DILocation(line: 11, column: 49, scope: !5)
!53 = !DILocation(line: 11, column: 15, scope: !5)
!54 = !DILocation(line: 11, column: 15, scope: !5)
!55 = !DILocation(line: 11, column: 15, scope: !5)
!56 = !DILocation(line: 11, column: 4, scope: !5)
!57 = !DILocation(line: 0, column: 0, scope: !7)
!58 = !DILocation(line: 14, column: 9, scope: !7)
!59 = !DILocation(line: 16, column: 0, scope: !7)
