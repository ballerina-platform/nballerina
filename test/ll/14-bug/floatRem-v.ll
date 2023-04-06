@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca double
  %1 = alloca double
  %b = alloca double
  %2 = alloca double
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca double
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %45, label %12
12:
  %13 = call double @_B_getFloat(i64 5, i64 100000), !dbg !11
  store double %13, ptr %1
  %14 = load double, ptr %1
  store double %14, ptr %a
  %15 = call double @_B_getFloat(i64 89, i64 20000), !dbg !12
  store double %15, ptr %2
  %16 = load double, ptr %2
  store double %16, ptr %b
  %17 = load double, ptr %a
  %18 = load double, ptr %b
  %19 = frem double %17, %18
  store double %19, ptr %3
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load double, ptr %3
  %25 = call ptr addrspace(1) @_bal_float_to_tagged(double %24), !dbg !14
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %4
  %30 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %31 = load double, ptr %b
  %32 = load double, ptr %a
  %33 = frem double %31, %32
  store double %33, ptr %6
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load double, ptr %6
  %39 = call ptr addrspace(1) @_bal_float_to_tagged(double %38), !dbg !17
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %7
  %44 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !18
  store ptr addrspace(1) null, ptr %8
  ret void
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !10
  unreachable
}
define internal double @_B_getFloat(i64 %0, i64 %1) !dbg !7 {
  %seed = alloca i64
  %iterations = alloca i64
  %buffer = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %currentVal = alloca double
  %bufferSize = alloca i64
  %4 = alloca i64
  %currentIndex = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca double
  %9 = alloca double
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %61, label %17
17:
  store i64 %0, ptr %seed
  store i64 %1, ptr %iterations
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 6), !dbg !21
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = getelementptr inbounds [0 x double], ptr addrspace(1) %21, i64 0, i64 0
  store double 1.0, ptr addrspace(1) %22
  %23 = getelementptr inbounds [0 x double], ptr addrspace(1) %21, i64 0, i64 1
  store double 5.5, ptr addrspace(1) %23
  %24 = getelementptr inbounds [0 x double], ptr addrspace(1) %21, i64 0, i64 2
  store double 3.3, ptr addrspace(1) %24
  %25 = getelementptr inbounds [0 x double], ptr addrspace(1) %21, i64 0, i64 3
  store double 7.5, ptr addrspace(1) %25
  %26 = getelementptr inbounds [0 x double], ptr addrspace(1) %21, i64 0, i64 4
  store double 9.5, ptr addrspace(1) %26
  %27 = getelementptr inbounds [0 x double], ptr addrspace(1) %21, i64 0, i64 5
  store double 10.54, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 6, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %3
  %31 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %31, ptr %buffer
  store double 0.0, ptr %currentVal
  %32 = load ptr addrspace(1), ptr %buffer
  %33 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %32), !dbg !22
  %34 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %33), !dbg !23
  store i64 %34, ptr %4
  %35 = load i64, ptr %4
  store i64 %35, ptr %bufferSize
  %36 = load i64, ptr %seed
  %37 = load i64, ptr %seed
  %38 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %36, i64 %37)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %68, label %63
40:
  %41 = load i64, ptr %i
  %42 = load i64, ptr %iterations
  %43 = icmp slt i64 %41, %42
  store i1 %43, ptr %7
  %44 = load i1, ptr %7
  br i1 %44, label %47, label %45
45:
  %46 = load double, ptr %currentVal
  ret double %46
47:
  %48 = load ptr addrspace(1), ptr %buffer
  %49 = load i64, ptr %currentIndex
  %50 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %48, i64 72057594037927928)
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  %53 = load i64, ptr addrspace(1) %52, align 8
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %81, label %84
55:
  %56 = load i64, ptr %i
  %57 = add nsw i64 %56, 1
  store i64 %57, ptr %12
  %58 = load i64, ptr %12
  store i64 %58, ptr %i
  br label %40
59:
  %60 = load ptr addrspace(1), ptr %13
  call void @_bal_panic(ptr addrspace(1) %60), !dbg !24
  unreachable
61:
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %62), !dbg !20
  unreachable
63:
  %64 = extractvalue {i64, i1} %38, 0
  store i64 %64, ptr %5
  %65 = load i64, ptr %5
  %66 = load i64, ptr %bufferSize
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %70, label %72
68:
  %69 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !19
  store ptr addrspace(1) %69, ptr %13
  br label %59
70:
  %71 = call ptr addrspace(1) @_bal_panic_construct(i64 4098), !dbg !19
  store ptr addrspace(1) %71, ptr %13
  br label %59
72:
  %73 = icmp eq i64 %65, -9223372036854775808
  %74 = icmp eq i64 %66, -1
  %75 = and i1 %73, %74
  br i1 %75, label %78, label %76
76:
  %77 = srem i64 %65, %66
  store i64 %77, ptr %6
  br label %79
78:
  store i64 0, ptr %6
  br label %79
79:
  %80 = load i64, ptr %6
  store i64 %80, ptr %currentIndex
  store i64 0, ptr %i
  br label %40
81:
  %82 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %48, i64 4)
  %83 = icmp ne ptr addrspace(1) %82, null
  br i1 %83, label %86, label %92
84:
  %85 = call ptr addrspace(1) @_bal_panic_construct(i64 4613), !dbg !19
  store ptr addrspace(1) %85, ptr %13
  br label %59
86:
  %87 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = getelementptr inbounds [0 x double], ptr addrspace(1) %89, i64 0, i64 %49
  %91 = load double, ptr addrspace(1) %90, align 8
  store double %91, ptr %8
  br label %98
92:
  %93 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 0
  %94 = load ptr, ptr addrspace(1) %93, align 8
  %95 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %94, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8
  %97 = call double %96(ptr addrspace(1) %48, i64 %49)
  store double %97, ptr %8
  br label %98
98:
  %99 = load double, ptr %currentVal
  %100 = load double, ptr %8
  %101 = fadd double %99, %100
  store double %101, ptr %9
  %102 = load double, ptr %9
  store double %102, ptr %currentVal
  %103 = load i64, ptr %currentIndex
  %104 = load i64, ptr %seed
  %105 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %103, i64 %104)
  %106 = extractvalue {i64, i1} %105, 1
  br i1 %106, label %112, label %107
107:
  %108 = extractvalue {i64, i1} %105, 0
  store i64 %108, ptr %10
  %109 = load i64, ptr %10
  %110 = load i64, ptr %bufferSize
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %114, label %116
112:
  %113 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !19
  store ptr addrspace(1) %113, ptr %13
  br label %59
114:
  %115 = call ptr addrspace(1) @_bal_panic_construct(i64 4866), !dbg !19
  store ptr addrspace(1) %115, ptr %13
  br label %59
116:
  %117 = icmp eq i64 %109, -9223372036854775808
  %118 = icmp eq i64 %110, -1
  %119 = and i1 %117, %118
  br i1 %119, label %122, label %120
120:
  %121 = srem i64 %109, %110
  store i64 %121, ptr %11
  br label %123
122:
  store i64 0, ptr %11
  br label %123
123:
  %124 = load i64, ptr %11
  store i64 %124, ptr %currentIndex
  br label %55
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/floatRem-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"getFloat", linkageName:"_B_getFloat", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 14, scope: !5)
!12 = !DILocation(line: 5, column: 14, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 0, column: 0, scope: !7)
!20 = !DILocation(line: 12, column: 9, scope: !7)
!21 = !DILocation(line: 13, column: 21, scope: !7)
!22 = !DILocation(line: 15, column: 28, scope: !7)
!23 = !DILocation(line: 15, column: 28, scope: !7)
!24 = !DILocation(line: 22, column: 0, scope: !7)
