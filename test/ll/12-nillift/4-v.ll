@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca i64
  %b.1 = alloca ptr addrspace(1)
  %b.2 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %e = alloca double
  %f = alloca ptr addrspace(1)
  %h = alloca ptr addrspace(1)
  %f.1 = alloca ptr addrspace(1)
  %f.2 = alloca double
  %12 = alloca double
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca double
  %17 = alloca ptr addrspace(1)
  %18 = alloca double
  %19 = alloca double
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i8
  %25 = load ptr, ptr @_bal_stack_guard
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %146, label %27
27:
  %28 = and i64 72057594037927935, 5
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  store ptr addrspace(1) %30, ptr %a
  store ptr addrspace(1) null, ptr %b
  %31 = load ptr addrspace(1), ptr %a
  %32 = addrspacecast ptr addrspace(1) %31 to ptr
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36
36:
  %37 = load ptr addrspace(1), ptr %a
  %38 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %37), !dbg !13
  store i64 %38, ptr %a.2
  %39 = load ptr addrspace(1), ptr %b
  %40 = addrspacecast ptr addrspace(1) %39 to ptr
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47
44:
  %45 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %45, ptr %a.1
  %46 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %46, ptr %b.1
  store ptr addrspace(1) null, ptr %2
  br label %54
47:
  %48 = load ptr addrspace(1), ptr %b
  %49 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %48), !dbg !14
  store i64 %49, ptr %b.2
  %50 = load i64, ptr %a.2
  %51 = load i64, ptr %b.2
  %52 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %50, i64 %51)
  %53 = extractvalue {i64, i1} %52, 1
  br i1 %53, label %152, label %148
54:
  %55 = call ptr addrspace(1) @_B_c(), !dbg !16
  store ptr addrspace(1) %55, ptr %3
  %56 = load ptr addrspace(1), ptr %2
  %57 = addrspacecast ptr addrspace(1) %56 to ptr
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 2233785415175766016
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %69, label %61
61:
  %62 = load ptr addrspace(1), ptr %2
  %63 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %62), !dbg !17
  store i64 %63, ptr %5
  %64 = load ptr addrspace(1), ptr %3
  %65 = addrspacecast ptr addrspace(1) %64 to ptr
  %66 = ptrtoint ptr %65 to i64
  %67 = and i64 %66, 2233785415175766016
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72
69:
  %70 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %70, ptr %4
  %71 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %71, ptr %6
  store ptr addrspace(1) null, ptr %9
  br label %79
72:
  %73 = load ptr addrspace(1), ptr %3
  %74 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %73), !dbg !18
  store i64 %74, ptr %7
  %75 = load i64, ptr %5
  %76 = load i64, ptr %7
  %77 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %75, i64 %76)
  %78 = extractvalue {i64, i1} %77, 1
  br i1 %78, label %158, label %154
79:
  %80 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %80, ptr %d
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = load ptr addrspace(1), ptr %d
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %10
  %90 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !22
  store ptr addrspace(1) null, ptr %11
  store double 5.5, ptr %e
  store ptr addrspace(1) null, ptr %f
  %91 = load ptr addrspace(1), ptr %f
  %92 = addrspacecast ptr addrspace(1) %91 to ptr
  %93 = ptrtoint ptr %92 to i64
  %94 = and i64 %93, 2233785415175766016
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %104, label %96
96:
  %97 = load ptr addrspace(1), ptr %f
  %98 = call double @_bal_tagged_to_float(ptr addrspace(1) %97), !dbg !23
  store double %98, ptr %f.2
  %99 = load double, ptr %e
  %100 = load double, ptr %f.2
  %101 = fadd double %99, %100
  store double %101, ptr %12
  %102 = load double, ptr %12
  %103 = call ptr addrspace(1) @_bal_float_to_tagged(double %102), !dbg !24
  store ptr addrspace(1) %103, ptr %13
  br label %106
104:
  %105 = load ptr addrspace(1), ptr %f
  store ptr addrspace(1) %105, ptr %f.1
  store ptr addrspace(1) null, ptr %13
  br label %106
106:
  %107 = call ptr addrspace(1) @_B_g(), !dbg !25
  store ptr addrspace(1) %107, ptr %14
  %108 = load ptr addrspace(1), ptr %13
  %109 = addrspacecast ptr addrspace(1) %108 to ptr
  %110 = ptrtoint ptr %109 to i64
  %111 = and i64 %110, 2233785415175766016
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %121, label %113
113:
  %114 = load ptr addrspace(1), ptr %13
  %115 = call double @_bal_tagged_to_float(ptr addrspace(1) %114), !dbg !26
  store double %115, ptr %16
  %116 = load ptr addrspace(1), ptr %14
  %117 = addrspacecast ptr addrspace(1) %116 to ptr
  %118 = ptrtoint ptr %117 to i64
  %119 = and i64 %118, 2233785415175766016
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124
121:
  %122 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %122, ptr %15
  %123 = load ptr addrspace(1), ptr %14
  store ptr addrspace(1) %123, ptr %17
  store ptr addrspace(1) null, ptr %20
  br label %132
124:
  %125 = load ptr addrspace(1), ptr %14
  %126 = call double @_bal_tagged_to_float(ptr addrspace(1) %125), !dbg !27
  store double %126, ptr %18
  %127 = load double, ptr %16
  %128 = load double, ptr %18
  %129 = fadd double %127, %128
  store double %129, ptr %19
  %130 = load double, ptr %19
  %131 = call ptr addrspace(1) @_bal_float_to_tagged(double %130), !dbg !28
  store ptr addrspace(1) %131, ptr %20
  br label %132
132:
  %133 = load ptr addrspace(1), ptr %20
  store ptr addrspace(1) %133, ptr %h
  %134 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 3
  %136 = load ptr addrspace(1), ptr addrspace(1) %135, align 8
  %137 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %138 = load ptr addrspace(1), ptr %h
  %139 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %137, i64 0, i64 0
  store ptr addrspace(1) %138, ptr addrspace(1) %139
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 1
  store i64 1, ptr addrspace(1) %140
  %141 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %142 = getelementptr i8, ptr addrspace(1) %141, i64 864691128455135236
  store ptr addrspace(1) %142, ptr %21
  %143 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %143), !dbg !30
  store ptr addrspace(1) null, ptr %22
  ret void
144:
  %145 = load ptr addrspace(1), ptr %23
  call void @_bal_panic(ptr addrspace(1) %145), !dbg !20
  unreachable
146:
  %147 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %147), !dbg !12
  unreachable
148:
  %149 = extractvalue {i64, i1} %52, 0
  store i64 %149, ptr %1
  %150 = load i64, ptr %1
  %151 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %150), !dbg !15
  store ptr addrspace(1) %151, ptr %2
  br label %54
152:
  %153 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !11
  store ptr addrspace(1) %153, ptr %23
  br label %144
154:
  %155 = extractvalue {i64, i1} %77, 0
  store i64 %155, ptr %8
  %156 = load i64, ptr %8
  %157 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %156), !dbg !19
  store ptr addrspace(1) %157, ptr %9
  br label %79
158:
  %159 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !11
  store ptr addrspace(1) %159, ptr %23
  br label %144
}
define internal ptr addrspace(1) @_B_c() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !34
  store ptr addrspace(1) null, ptr %2
  %16 = and i64 72057594037927935, 5
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  ret ptr addrspace(1) %18
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !32
  unreachable
}
define internal ptr addrspace(1) @_B_g() !dbg !9 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %17, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261415), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !38
  store ptr addrspace(1) null, ptr %2
  %16 = call ptr addrspace(1) @_bal_float_to_tagged(double 6.5), !dbg !39
  ret ptr addrspace(1) %16
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !35
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !36
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"c", linkageName:"_B_c", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 2, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 21, scope: !5)
!17 = !DILocation(line: 5, column: 19, scope: !5)
!18 = !DILocation(line: 5, column: 19, scope: !5)
!19 = !DILocation(line: 5, column: 19, scope: !5)
!20 = !DILocation(line: 12, column: 0, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 17, scope: !5)
!24 = !DILocation(line: 10, column: 17, scope: !5)
!25 = !DILocation(line: 10, column: 23, scope: !5)
!26 = !DILocation(line: 10, column: 21, scope: !5)
!27 = !DILocation(line: 10, column: 21, scope: !5)
!28 = !DILocation(line: 10, column: 21, scope: !5)
!29 = !DILocation(line: 11, column: 15, scope: !5)
!30 = !DILocation(line: 11, column: 4, scope: !5)
!31 = !DILocation(line: 0, column: 0, scope: !7)
!32 = !DILocation(line: 14, column: 9, scope: !7)
!33 = !DILocation(line: 15, column: 15, scope: !7)
!34 = !DILocation(line: 15, column: 4, scope: !7)
!35 = !DILocation(line: 0, column: 0, scope: !9)
!36 = !DILocation(line: 19, column: 9, scope: !9)
!37 = !DILocation(line: 20, column: 15, scope: !9)
!38 = !DILocation(line: 20, column: 4, scope: !9)
!39 = !DILocation(line: 21, column: 4, scope: !9)
