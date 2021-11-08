@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %25, label %14
14:
  %15 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %16 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15 to i8 addrspace(1)*
  %17 = getelementptr i8, i8 addrspace(1)* %16, i64 1297036692682702852
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %21 = call i64 @_bal_list_set(i8 addrspace(1)* %19, i64 1, i8 addrspace(1)* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %34
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 72057594037927928)
  %30 = bitcast i8 addrspace(1)* %29 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %31 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  %32 = load i64, i64 addrspace(1)* %31, align 8
  %33 = icmp ult i64 0, %32
  br i1 %33, label %37, label %51
34:
  %35 = or i64 %21, 1536
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 %35), !dbg !7
  store i8 addrspace(1)* %36, i8 addrspace(1)** %10
  br label %23
37:
  %38 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 3
  %39 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %38, align 8
  %40 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %39, i64 0, i64 0
  %41 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %40, align 8
  %42 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %41)
  store i64 %42, i64* %2
  %43 = load i64, i64* %2, !dbg !8
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %46 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %45, i64 72057594037927928)
  %47 = bitcast i8 addrspace(1)* %46 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 1
  %49 = load i64, i64 addrspace(1)* %48, align 8
  %50 = icmp ult i64 1, %49
  br i1 %50, label %53, label %65
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %52, i8 addrspace(1)** %10
  br label %23
53:
  %54 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 3
  %55 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %54, align 8
  %56 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %55, i64 0, i64 1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %56, align 8
  %58 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %57)
  store i64 %58, i64* %4
  %59 = load i64, i64* %4, !dbg !9
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %63 = call i64 @_bal_list_set(i8 addrspace(1)* %61, i64 3, i8 addrspace(1)* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %67, label %74
65:
  %66 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %66, i8 addrspace(1)** %10
  br label %23
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %69 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %68, i64 72057594037927928)
  %70 = bitcast i8 addrspace(1)* %69 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %71 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  %72 = load i64, i64 addrspace(1)* %71, align 8
  %73 = icmp ult i64 2, %72
  br i1 %73, label %77, label %91
74:
  %75 = or i64 %63, 2304
  %76 = call i8 addrspace(1)* @_bal_panic_construct(i64 %75), !dbg !7
  store i8 addrspace(1)* %76, i8 addrspace(1)** %10
  br label %23
77:
  %78 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %70, i64 0, i32 3
  %79 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %78, align 8
  %80 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %79, i64 0, i64 2
  %81 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %80, align 8
  %82 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %81)
  store i64 %82, i64* %6
  %83 = load i64, i64* %6, !dbg !10
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %84), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %86 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %85, i64 72057594037927928)
  %87 = bitcast i8 addrspace(1)* %86 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %88 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 1
  %89 = load i64, i64 addrspace(1)* %88, align 8
  %90 = icmp ult i64 3, %89
  br i1 %90, label %93, label %101
91:
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565), !dbg !7
  store i8 addrspace(1)* %92, i8 addrspace(1)** %10
  br label %23
93:
  %94 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 3
  %95 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %94, align 8
  %96 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %95, i64 0, i64 3
  %97 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %96, align 8
  %98 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %97)
  store i64 %98, i64* %8
  %99 = load i64, i64* %8, !dbg !11
  %100 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %99), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %100), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !11
  ret void
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821), !dbg !7
  store i8 addrspace(1)* %102, i8 addrspace(1)** %10
  br label %23
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
