@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %14, label %7
7:
  %8 = and i64 72057594037927935, 2
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  call void @_B_foo(ptr addrspace(1) %10), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_foo(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !12
  store ptr addrspace(1) null, ptr %2
  %11 = zext i1 1 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  call void @_B_foo(ptr addrspace(1) %13), !dbg !13
  store ptr addrspace(1) null, ptr %3
  ret void
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !10
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %102, label %22
22:
  store ptr addrspace(1) %0, ptr %x
  %23 = load ptr addrspace(1), ptr %x
  %24 = addrspacecast ptr addrspace(1) %23 to ptr
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 144115188075855872
  br i1 %27, label %28, label %34
28:
  %29 = load ptr addrspace(1), ptr %x
  %30 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %29), !dbg !24
  store i64 %30, ptr %x.1
  %31 = load i64, ptr %x.1
  %32 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %31, i64 1)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %117, label %104
34:
  %35 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %35, ptr %x.2
  %36 = load ptr addrspace(1), ptr %x.2
  %37 = addrspacecast ptr addrspace(1) %36 to ptr
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 2233785415175766016
  %40 = icmp eq i64 %39, 360287970189639680
  br i1 %40, label %41, label %58
41:
  %42 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %42, ptr %5
  %43 = load ptr addrspace(1), ptr %5
  %44 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441204268)), !dbg !20
  store ptr addrspace(1) %44, ptr %7
  %45 = load ptr addrspace(1), ptr %7
  %46 = load ptr addrspace(1), ptr %5
  %47 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %45, ptr addrspace(1) %46), !dbg !21
  store ptr addrspace(1) %47, ptr %8
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load ptr addrspace(1), ptr %8
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %9
  %57 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !23
  store ptr addrspace(1) null, ptr %10
  br label %98
58:
  %59 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %59, ptr %6
  %60 = load ptr addrspace(1), ptr %6
  %61 = addrspacecast ptr addrspace(1) %60 to ptr
  %62 = ptrtoint ptr %61 to i64
  %63 = and i64 %62, 2233785415175766016
  %64 = icmp eq i64 %63, 72057594037927936
  br i1 %64, label %65, label %85
65:
  %66 = load ptr addrspace(1), ptr %6
  %67 = addrspacecast ptr addrspace(1) %66 to ptr
  %68 = ptrtoint ptr %67 to i64
  %69 = trunc i64 %68 to i1
  store i1 %69, ptr %11
  %70 = load i1, ptr %11
  %71 = xor i1 1, %70
  store i1 %71, ptr %13
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load i1, ptr %13
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %14
  %84 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !19
  store ptr addrspace(1) null, ptr %15
  br label %97
85:
  %86 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %86, ptr %12
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load ptr addrspace(1), ptr %12
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %16
  %96 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !17
  store ptr addrspace(1) null, ptr %17
  br label %97
97:
  br label %98
98:
  br label %99
99:
  ret void
100:
  %101 = load ptr addrspace(1), ptr %18
  call void @_bal_panic(ptr addrspace(1) %101), !dbg !28
  unreachable
102:
  %103 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %103), !dbg !15
  unreachable
104:
  %105 = extractvalue {i64, i1} %32, 0
  store i64 %105, ptr %2
  %106 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = load i64, ptr %2
  %111 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %110), !dbg !26
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %109, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 1
  store i64 1, ptr addrspace(1) %113
  %114 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 864691128455135236
  store ptr addrspace(1) %115, ptr %3
  %116 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %116), !dbg !27
  store ptr addrspace(1) null, ptr %4
  br label %99
117:
  %118 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !14
  store ptr addrspace(1) %118, ptr %18
  br label %100
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 10, column: 9, scope: !7)
!16 = !DILocation(line: 21, column: 19, scope: !7)
!17 = !DILocation(line: 21, column: 8, scope: !7)
!18 = !DILocation(line: 18, column: 19, scope: !7)
!19 = !DILocation(line: 18, column: 8, scope: !7)
!20 = !DILocation(line: 15, column: 21, scope: !7)
!21 = !DILocation(line: 15, column: 28, scope: !7)
!22 = !DILocation(line: 15, column: 19, scope: !7)
!23 = !DILocation(line: 15, column: 8, scope: !7)
!24 = !DILocation(line: 16, column: 4, scope: !7)
!25 = !DILocation(line: 12, column: 19, scope: !7)
!26 = !DILocation(line: 12, column: 19, scope: !7)
!27 = !DILocation(line: 12, column: 8, scope: !7)
!28 = !DILocation(line: 23, column: 0, scope: !7)
