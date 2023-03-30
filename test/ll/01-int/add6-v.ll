@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
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
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i64
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca i8
  %44 = load ptr, ptr @_bal_stack_guard
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %173, label %46
46:
  %47 = call i64 @_B_add(i64 -3, i64 -5), !dbg !11
  store i64 %47, ptr %1
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load i64, ptr %1
  %53 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %52), !dbg !13
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %2
  %58 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %59 = call i64 @_B_add(i64 -3, i64 -5), !dbg !15
  store i64 %59, ptr %4
  %60 = load i64, ptr %4
  %61 = call i64 @_B_add(i64 %60, i64 -11), !dbg !16
  store i64 %61, ptr %5
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i64, ptr %5
  %67 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %66), !dbg !18
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %6
  %72 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !19
  store ptr addrspace(1) null, ptr %7
  %73 = call i64 @_B_add(i64 -3, i64 -5), !dbg !20
  store i64 %73, ptr %8
  %74 = call i64 @_B_add(i64 -5, i64 -9), !dbg !21
  store i64 %74, ptr %9
  %75 = load i64, ptr %8
  %76 = load i64, ptr %9
  %77 = call i64 @_B_add(i64 %75, i64 %76), !dbg !22
  store i64 %77, ptr %10
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load i64, ptr %10
  %83 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %82), !dbg !24
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %11
  %88 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %88), !dbg !25
  store ptr addrspace(1) null, ptr %12
  %89 = call i64 @_B_add(i64 -3, i64 -5), !dbg !26
  store i64 %89, ptr %13
  %90 = call i64 @_B_add(i64 -5, i64 -9), !dbg !27
  store i64 %90, ptr %14
  %91 = load i64, ptr %13
  %92 = load i64, ptr %14
  %93 = call i64 @_B_add(i64 %91, i64 %92), !dbg !28
  store i64 %93, ptr %15
  %94 = load i64, ptr %15
  %95 = call i64 @_B_add(i64 %94, i64 -12), !dbg !29
  store i64 %95, ptr %16
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = load i64, ptr %16
  %101 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %100), !dbg !31
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %17
  %106 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !32
  store ptr addrspace(1) null, ptr %18
  %107 = call i64 @_B_add(i64 -3, i64 -5), !dbg !33
  store i64 %107, ptr %19
  %108 = call i64 @_B_add(i64 -5, i64 -9), !dbg !34
  store i64 %108, ptr %20
  %109 = load i64, ptr %19
  %110 = load i64, ptr %20
  %111 = call i64 @_B_add(i64 %109, i64 %110), !dbg !35
  store i64 %111, ptr %21
  %112 = call i64 @_B_add(i64 -4, i64 -7), !dbg !36
  store i64 %112, ptr %22
  %113 = load i64, ptr %21
  %114 = load i64, ptr %22
  %115 = call i64 @_B_add(i64 %113, i64 %114), !dbg !37
  store i64 %115, ptr %23
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load i64, ptr %23
  %121 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %120), !dbg !39
  %122 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %121, ptr addrspace(1) %122
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %123
  %124 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %125 = getelementptr i8, ptr addrspace(1) %124, i64 864691128455135236
  store ptr addrspace(1) %125, ptr %24
  %126 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %126), !dbg !40
  store ptr addrspace(1) null, ptr %25
  %127 = call i64 @_B_add(i64 -3, i64 -5), !dbg !41
  store i64 %127, ptr %26
  %128 = call i64 @_B_add(i64 -5, i64 -9), !dbg !42
  store i64 %128, ptr %27
  %129 = load i64, ptr %26
  %130 = load i64, ptr %27
  %131 = call i64 @_B_add(i64 %129, i64 %130), !dbg !43
  store i64 %131, ptr %28
  %132 = call i64 @_B_add(i64 -4, i64 -7), !dbg !44
  store i64 %132, ptr %29
  %133 = load i64, ptr %29
  %134 = call i64 @_B_add(i64 %133, i64 -5), !dbg !45
  store i64 %134, ptr %30
  %135 = load i64, ptr %28
  %136 = load i64, ptr %30
  %137 = call i64 @_B_add(i64 %135, i64 %136), !dbg !46
  store i64 %137, ptr %31
  %138 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !47
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 3
  %140 = load ptr addrspace(1), ptr addrspace(1) %139, align 8
  %141 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %142 = load i64, ptr %31
  %143 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %142), !dbg !48
  %144 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %141, i64 0, i64 0
  store ptr addrspace(1) %143, ptr addrspace(1) %144
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 1
  store i64 1, ptr addrspace(1) %145
  %146 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %147 = getelementptr i8, ptr addrspace(1) %146, i64 864691128455135236
  store ptr addrspace(1) %147, ptr %32
  %148 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %148), !dbg !49
  store ptr addrspace(1) null, ptr %33
  %149 = call i64 @_B_add(i64 -3, i64 -5), !dbg !50
  store i64 %149, ptr %34
  %150 = call i64 @_B_add(i64 -5, i64 -9), !dbg !51
  store i64 %150, ptr %35
  %151 = load i64, ptr %34
  %152 = load i64, ptr %35
  %153 = call i64 @_B_add(i64 %151, i64 %152), !dbg !52
  store i64 %153, ptr %36
  %154 = call i64 @_B_add(i64 -4, i64 -7), !dbg !53
  store i64 %154, ptr %37
  %155 = call i64 @_B_add(i64 -23, i64 -50), !dbg !54
  store i64 %155, ptr %38
  %156 = load i64, ptr %37
  %157 = load i64, ptr %38
  %158 = call i64 @_B_add(i64 %156, i64 %157), !dbg !55
  store i64 %158, ptr %39
  %159 = load i64, ptr %36
  %160 = load i64, ptr %39
  %161 = call i64 @_B_add(i64 %159, i64 %160), !dbg !56
  store i64 %161, ptr %40
  %162 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !57
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 3
  %164 = load ptr addrspace(1), ptr addrspace(1) %163, align 8
  %165 = bitcast ptr addrspace(1) %164 to ptr addrspace(1)
  %166 = load i64, ptr %40
  %167 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %166), !dbg !58
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %165, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %41
  %172 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !59
  store ptr addrspace(1) null, ptr %42
  ret void
173:
  %174 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %174), !dbg !10
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %9 = load i64, ptr %x
  %10 = load i64, ptr %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !62
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !60
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !61
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !60
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 15, scope: !5)
!14 = !DILocation(line: 4, column: 4, scope: !5)
!15 = !DILocation(line: 5, column: 19, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 15, scope: !5)
!19 = !DILocation(line: 5, column: 4, scope: !5)
!20 = !DILocation(line: 6, column: 19, scope: !5)
!21 = !DILocation(line: 6, column: 36, scope: !5)
!22 = !DILocation(line: 6, column: 15, scope: !5)
!23 = !DILocation(line: 6, column: 15, scope: !5)
!24 = !DILocation(line: 6, column: 15, scope: !5)
!25 = !DILocation(line: 6, column: 4, scope: !5)
!26 = !DILocation(line: 7, column: 23, scope: !5)
!27 = !DILocation(line: 7, column: 40, scope: !5)
!28 = !DILocation(line: 7, column: 19, scope: !5)
!29 = !DILocation(line: 7, column: 15, scope: !5)
!30 = !DILocation(line: 7, column: 15, scope: !5)
!31 = !DILocation(line: 7, column: 15, scope: !5)
!32 = !DILocation(line: 7, column: 4, scope: !5)
!33 = !DILocation(line: 8, column: 23, scope: !5)
!34 = !DILocation(line: 8, column: 40, scope: !5)
!35 = !DILocation(line: 8, column: 19, scope: !5)
!36 = !DILocation(line: 8, column: 58, scope: !5)
!37 = !DILocation(line: 8, column: 15, scope: !5)
!38 = !DILocation(line: 8, column: 15, scope: !5)
!39 = !DILocation(line: 8, column: 15, scope: !5)
!40 = !DILocation(line: 8, column: 4, scope: !5)
!41 = !DILocation(line: 9, column: 23, scope: !5)
!42 = !DILocation(line: 9, column: 40, scope: !5)
!43 = !DILocation(line: 9, column: 19, scope: !5)
!44 = !DILocation(line: 9, column: 62, scope: !5)
!45 = !DILocation(line: 9, column: 58, scope: !5)
!46 = !DILocation(line: 9, column: 15, scope: !5)
!47 = !DILocation(line: 9, column: 15, scope: !5)
!48 = !DILocation(line: 9, column: 15, scope: !5)
!49 = !DILocation(line: 9, column: 4, scope: !5)
!50 = !DILocation(line: 10, column: 23, scope: !5)
!51 = !DILocation(line: 10, column: 40, scope: !5)
!52 = !DILocation(line: 10, column: 19, scope: !5)
!53 = !DILocation(line: 10, column: 62, scope: !5)
!54 = !DILocation(line: 10, column: 79, scope: !5)
!55 = !DILocation(line: 10, column: 58, scope: !5)
!56 = !DILocation(line: 10, column: 15, scope: !5)
!57 = !DILocation(line: 10, column: 15, scope: !5)
!58 = !DILocation(line: 10, column: 15, scope: !5)
!59 = !DILocation(line: 10, column: 4, scope: !5)
!60 = !DILocation(line: 0, column: 0, scope: !7)
!61 = !DILocation(line: 13, column: 9, scope: !7)
!62 = !DILocation(line: 15, column: 0, scope: !7)
