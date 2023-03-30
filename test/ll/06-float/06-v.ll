@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
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
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca double
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca double
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %95, label %22
22:
  %23 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.375), !dbg !15
  %24 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.375), !dbg !16
  %25 = call ptr addrspace(1) @_B_aa(i1 1, ptr addrspace(1) %23, ptr addrspace(1) %24), !dbg !17
  store ptr addrspace(1) %25, ptr %1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load ptr addrspace(1), ptr %1
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %2
  %35 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !19
  store ptr addrspace(1) null, ptr %3
  %36 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.375), !dbg !20
  %37 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.375), !dbg !21
  %38 = call ptr addrspace(1) @_B_aa(i1 0, ptr addrspace(1) %36, ptr addrspace(1) %37), !dbg !22
  store ptr addrspace(1) %38, ptr %4
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load ptr addrspace(1), ptr %4
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %5
  %48 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !24
  store ptr addrspace(1) null, ptr %6
  %49 = call ptr addrspace(1) @_B_fa(i1 1, double 17.75, double 2.75), !dbg !25
  store ptr addrspace(1) %49, ptr %7
  %50 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 3
  %52 = load ptr addrspace(1), ptr addrspace(1) %51, align 8
  %53 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %54 = load ptr addrspace(1), ptr %7
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %53, i64 0, i64 0
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %8
  %59 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !27
  store ptr addrspace(1) null, ptr %9
  %60 = call ptr addrspace(1) @_B_fa(i1 0, double 17.75, double 2.75), !dbg !28
  store ptr addrspace(1) %60, ptr %10
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = load ptr addrspace(1), ptr %10
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %11
  %70 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !30
  store ptr addrspace(1) null, ptr %12
  %71 = call double @_B_ff(i1 1, double 1.5, double 0.5), !dbg !31
  store double %71, ptr %13
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load double, ptr %13
  %77 = call ptr addrspace(1) @_bal_float_to_tagged(double %76), !dbg !33
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %14
  %82 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !34
  store ptr addrspace(1) null, ptr %15
  %83 = call double @_B_ff(i1 0, double 1.5, double 0.5), !dbg !35
  store double %83, ptr %16
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load double, ptr %16
  %89 = call ptr addrspace(1) @_bal_float_to_tagged(double %88), !dbg !37
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %17
  %94 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !38
  store ptr addrspace(1) null, ptr %18
  ret void
95:
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %96), !dbg !14
  unreachable
}
define internal ptr addrspace(1) @_B_aa(i1 %0, ptr addrspace(1) %1, ptr addrspace(1) %2) !dbg !7 {
  %b = alloca i1
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, ptr %b
  store ptr addrspace(1) %1, ptr %x
  store ptr addrspace(1) %2, ptr %y
  %8 = load i1, ptr %b
  br i1 %8, label %9, label %11
9:
  %10 = load ptr addrspace(1), ptr %x
  ret ptr addrspace(1) %10
11:
  %12 = load ptr addrspace(1), ptr %y
  ret ptr addrspace(1) %12
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !39
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !40
  unreachable
}
define internal ptr addrspace(1) @_B_fa(i1 %0, double %1, double %2) !dbg !9 {
  %b = alloca i1
  %x = alloca double
  %y = alloca double
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %15, label %7
7:
  store i1 %0, ptr %b
  store double %1, ptr %x
  store double %2, ptr %y
  %8 = load i1, ptr %b
  br i1 %8, label %9, label %12
9:
  %10 = load double, ptr %x
  %11 = call ptr addrspace(1) @_bal_float_to_tagged(double %10), !dbg !44
  ret ptr addrspace(1) %11
12:
  %13 = load double, ptr %y
  %14 = call ptr addrspace(1) @_bal_float_to_tagged(double %13), !dbg !43
  ret ptr addrspace(1) %14
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !41
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !42
  unreachable
}
define internal double @_B_ff(i1 %0, double %1, double %2) !dbg !11 {
  %b = alloca i1
  %x = alloca double
  %y = alloca double
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, ptr %b
  store double %1, ptr %x
  store double %2, ptr %y
  %8 = load i1, ptr %b
  br i1 %8, label %9, label %11
9:
  %10 = load double, ptr %x
  ret double %10
11:
  %12 = load double, ptr %y
  ret double %12
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 7940), !dbg !45
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !46
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"aa", linkageName:"_B_aa", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"fa", linkageName:"_B_fa", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"ff", linkageName:"_B_ff", scope: !1, file: !1, line: 31, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 15, scope: !5)
!19 = !DILocation(line: 5, column: 4, scope: !5)
!20 = !DILocation(line: 6, column: 15, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 15, scope: !5)
!23 = !DILocation(line: 6, column: 15, scope: !5)
!24 = !DILocation(line: 6, column: 4, scope: !5)
!25 = !DILocation(line: 7, column: 15, scope: !5)
!26 = !DILocation(line: 7, column: 15, scope: !5)
!27 = !DILocation(line: 7, column: 4, scope: !5)
!28 = !DILocation(line: 8, column: 15, scope: !5)
!29 = !DILocation(line: 8, column: 15, scope: !5)
!30 = !DILocation(line: 8, column: 4, scope: !5)
!31 = !DILocation(line: 9, column: 15, scope: !5)
!32 = !DILocation(line: 9, column: 15, scope: !5)
!33 = !DILocation(line: 9, column: 15, scope: !5)
!34 = !DILocation(line: 9, column: 4, scope: !5)
!35 = !DILocation(line: 10, column: 15, scope: !5)
!36 = !DILocation(line: 10, column: 15, scope: !5)
!37 = !DILocation(line: 10, column: 15, scope: !5)
!38 = !DILocation(line: 10, column: 4, scope: !5)
!39 = !DILocation(line: 0, column: 0, scope: !7)
!40 = !DILocation(line: 13, column: 9, scope: !7)
!41 = !DILocation(line: 0, column: 0, scope: !9)
!42 = !DILocation(line: 22, column: 9, scope: !9)
!43 = !DILocation(line: 27, column: 8, scope: !9)
!44 = !DILocation(line: 24, column: 8, scope: !9)
!45 = !DILocation(line: 0, column: 0, scope: !11)
!46 = !DILocation(line: 31, column: 9, scope: !11)
