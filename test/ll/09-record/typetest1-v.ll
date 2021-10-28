%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant %TypeTestVTable
@_Bt04root2 = external constant %TypeTestVTable
@_Bt04root3 = external constant %TypeTestVTable
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
@_Bt04root6 = external constant %TypeTestVTable
@_Bt04root7 = external constant %TypeTestVTable
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %r2 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %138, label %29
29:
  %30 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %30, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %31)
  %32 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %30, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %32)
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %33, i8 addrspace(1)** %r1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %r1
  %35 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %34, i64 -5)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %m
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %37 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %38 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %37, align 8
  %39 = call i1 %38(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %36)
  store i1 %39, i1* %2
  %40 = load i1, i1* %2, !dbg !8
  %41 = zext i1 %40 to i64, !dbg !8
  %42 = or i64 %41, 72057594037927936, !dbg !8
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %45 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root2, i64 0, i32 0
  %46 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %45, align 8
  %47 = call i1 %46(%TypeTestVTable* @_Bt04root2, i8 addrspace(1)* %44)
  store i1 %47, i1* %4
  %48 = load i1, i1* %4, !dbg !9
  %49 = zext i1 %48 to i64, !dbg !9
  %50 = or i64 %49, 72057594037927936, !dbg !9
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %53 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root3, i64 0, i32 0
  %54 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %53, align 8
  %55 = call i1 %54(%TypeTestVTable* @_Bt04root3, i8 addrspace(1)* %52)
  store i1 %55, i1* %6
  %56 = load i1, i1* %6, !dbg !10
  %57 = zext i1 %56 to i64, !dbg !10
  %58 = or i64 %57, 72057594037927936, !dbg !10
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %60 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root4, i64 2)
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %60, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %61)
  %62 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %60, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %62)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %8
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %63, i8 addrspace(1)** %r2
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  %65 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %64, i64 -5)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %m
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %67 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %68 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %67, align 8
  %69 = call i1 %68(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %66)
  store i1 %69, i1* %9
  %70 = load i1, i1* %9, !dbg !11
  %71 = zext i1 %70 to i64, !dbg !11
  %72 = or i64 %71, 72057594037927936, !dbg !11
  %73 = getelementptr i8, i8 addrspace(1)* null, i64 %72, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %75 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root2, i64 0, i32 0
  %76 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %75, align 8
  %77 = call i1 %76(%TypeTestVTable* @_Bt04root2, i8 addrspace(1)* %74)
  store i1 %77, i1* %11
  %78 = load i1, i1* %11, !dbg !12
  %79 = zext i1 %78 to i64, !dbg !12
  %80 = or i64 %79, 72057594037927936, !dbg !12
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !12
  %82 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root5, i64 2)
  %83 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %82, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i8 addrspace(1)* %83)
  %84 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %82, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %84)
  store i8 addrspace(1)* %82, i8 addrspace(1)** %13
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  store i8 addrspace(1)* %85, i8 addrspace(1)** %m
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %87 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %88 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %87, align 8
  %89 = call i1 %88(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %86)
  store i1 %89, i1* %14
  %90 = load i1, i1* %14, !dbg !13
  %91 = zext i1 %90 to i64, !dbg !13
  %92 = or i64 %91, 72057594037927936, !dbg !13
  %93 = getelementptr i8, i8 addrspace(1)* null, i64 %92, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %95 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root2, i64 0, i32 0
  %96 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %95, align 8
  %97 = call i1 %96(%TypeTestVTable* @_Bt04root2, i8 addrspace(1)* %94)
  store i1 %97, i1* %16
  %98 = load i1, i1* %16, !dbg !14
  %99 = zext i1 %98 to i64, !dbg !14
  %100 = or i64 %99, 72057594037927936, !dbg !14
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %r1
  %103 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %102, i64 -5)
  store i8 addrspace(1)* %103, i8 addrspace(1)** %v
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %105 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root6, i64 0, i32 0
  %106 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %105, align 8
  %107 = call i1 %106(%TypeTestVTable* @_Bt04root6, i8 addrspace(1)* %104)
  store i1 %107, i1* %18
  %108 = load i1, i1* %18, !dbg !15
  %109 = zext i1 %108 to i64, !dbg !15
  %110 = or i64 %109, 72057594037927936, !dbg !15
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %113 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root7, i64 0, i32 0
  %114 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %113, align 8
  %115 = call i1 %114(%TypeTestVTable* @_Bt04root7, i8 addrspace(1)* %112)
  store i1 %115, i1* %20
  %116 = load i1, i1* %20, !dbg !16
  %117 = zext i1 %116 to i64, !dbg !16
  %118 = or i64 %117, 72057594037927936, !dbg !16
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %119), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  %121 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %120, i64 -5)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %v
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %123 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root6, i64 0, i32 0
  %124 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %123, align 8
  %125 = call i1 %124(%TypeTestVTable* @_Bt04root6, i8 addrspace(1)* %122)
  store i1 %125, i1* %22
  %126 = load i1, i1* %22, !dbg !17
  %127 = zext i1 %126 to i64, !dbg !17
  %128 = or i64 %127, 72057594037927936, !dbg !17
  %129 = getelementptr i8, i8 addrspace(1)* null, i64 %128, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %129), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %131 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root7, i64 0, i32 0
  %132 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %131, align 8
  %133 = call i1 %132(%TypeTestVTable* @_Bt04root7, i8 addrspace(1)* %130)
  store i1 %133, i1* %24
  %134 = load i1, i1* %24, !dbg !18
  %135 = zext i1 %134 to i64, !dbg !18
  %136 = or i64 %135, 72057594037927936, !dbg !18
  %137 = getelementptr i8, i8 addrspace(1)* null, i64 %136, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %137), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  ret void
138:
  %139 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %139)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/typetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 22, column: 4, scope: !5)
!9 = !DILocation(line: 23, column: 4, scope: !5)
!10 = !DILocation(line: 24, column: 4, scope: !5)
!11 = !DILocation(line: 27, column: 4, scope: !5)
!12 = !DILocation(line: 28, column: 4, scope: !5)
!13 = !DILocation(line: 30, column: 4, scope: !5)
!14 = !DILocation(line: 31, column: 4, scope: !5)
!15 = !DILocation(line: 33, column: 4, scope: !5)
!16 = !DILocation(line: 34, column: 4, scope: !5)
!17 = !DILocation(line: 36, column: 4, scope: !5)
!18 = !DILocation(line: 37, column: 4, scope: !5)
