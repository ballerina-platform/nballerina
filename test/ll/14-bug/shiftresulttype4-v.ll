@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %x1 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %y2 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %z3 = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %x11 = alloca i64
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %y22 = alloca i64
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %z33 = alloca i64
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %119, label %22
22:
  store i64 250, ptr %x
  store i64 500, ptr %y
  store i64 1000000000, ptr %z
  %23 = load i64, ptr %x
  %24 = and i64 63, 1
  %25 = ashr i64 %23, %24
  store i64 %25, ptr %1
  %26 = load i64, ptr %1
  store i64 %26, ptr %x1
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i64, ptr %x1
  %32 = and i64 72057594037927935, %31
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %2
  %39 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !10
  store ptr addrspace(1) null, ptr %3
  %40 = load i64, ptr %y
  %41 = and i64 63, 1
  %42 = ashr i64 %40, %41
  store i64 %42, ptr %4
  %43 = load i64, ptr %4
  store i64 %43, ptr %y2
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load i64, ptr %y2
  %49 = and i64 72057594037927935, %48
  %50 = or i64 2449958197289549824, %49
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %5
  %56 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !12
  store ptr addrspace(1) null, ptr %6
  %57 = load i64, ptr %z
  %58 = and i64 63, 1
  %59 = ashr i64 %57, %58
  store i64 %59, ptr %7
  %60 = load i64, ptr %7
  store i64 %60, ptr %z3
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = load i64, ptr %z3
  %66 = and i64 72057594037927935, %65
  %67 = or i64 2449958197289549824, %66
  %68 = getelementptr i8, ptr addrspace(1) null, i64 %67
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %8
  %73 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !14
  store ptr addrspace(1) null, ptr %9
  %74 = load i64, ptr %x
  %75 = and i64 63, 1
  %76 = shl i64 %74, %75
  store i64 %76, ptr %10
  %77 = load i64, ptr %10
  store i64 %77, ptr %x11
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load i64, ptr %x11
  %83 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %82), !dbg !16
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %11
  %88 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %88), !dbg !17
  store ptr addrspace(1) null, ptr %12
  %89 = load i64, ptr %y
  %90 = and i64 63, 1
  %91 = shl i64 %89, %90
  store i64 %91, ptr %13
  %92 = load i64, ptr %13
  store i64 %92, ptr %y22
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i64, ptr %y22
  %98 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %97), !dbg !19
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %14
  %103 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !20
  store ptr addrspace(1) null, ptr %15
  %104 = load i64, ptr %z
  %105 = and i64 63, 1
  %106 = shl i64 %104, %105
  store i64 %106, ptr %16
  %107 = load i64, ptr %16
  store i64 %107, ptr %z33
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i64, ptr %z33
  %113 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %112), !dbg !22
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %17
  %118 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !23
  store ptr addrspace(1) null, ptr %18
  ret void
119:
  %120 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %120), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/shiftresulttype4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 15, scope: !5)
!12 = !DILocation(line: 11, column: 4, scope: !5)
!13 = !DILocation(line: 14, column: 15, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 17, column: 15, scope: !5)
!16 = !DILocation(line: 17, column: 15, scope: !5)
!17 = !DILocation(line: 17, column: 4, scope: !5)
!18 = !DILocation(line: 20, column: 15, scope: !5)
!19 = !DILocation(line: 20, column: 15, scope: !5)
!20 = !DILocation(line: 20, column: 4, scope: !5)
!21 = !DILocation(line: 23, column: 15, scope: !5)
!22 = !DILocation(line: 23, column: 15, scope: !5)
!23 = !DILocation(line: 23, column: 4, scope: !5)
