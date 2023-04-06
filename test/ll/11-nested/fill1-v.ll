@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v0 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %39, label %14
14:
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %v
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x i64], ptr addrspace(1) %22, i64 0, i64 0
  store i64 17, ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %v
  %28 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %27, i64 72057594037927928), !dbg !11
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load ptr addrspace(1), ptr %2
  %31 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 0
  %32 = load ptr, ptr addrspace(1) %31, align 8
  %33 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = call i64 %34(ptr addrspace(1) %27, i64 1, ptr addrspace(1) %30)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %48
37:
  %38 = load ptr addrspace(1), ptr %10
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !22
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !8
  unreachable
41:
  %42 = load ptr addrspace(1), ptr %v
  %43 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %42, i64 72057594037927928)
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  %46 = load i64, ptr addrspace(1) %45, align 8
  %47 = icmp ult i64 0, %46
  br i1 %47, label %51, label %78
48:
  %49 = or i64 %35, 1280
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %10
  br label %37
51:
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = call ptr addrspace(1) %55(ptr addrspace(1) %42, i64 0)
  %57 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %42, ptr addrspace(1) %56), !dbg !12
  store ptr addrspace(1) %57, ptr %3
  %58 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %58, ptr %v0
  %59 = load ptr addrspace(1), ptr %v0
  %60 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %59), !dbg !13
  %61 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %60), !dbg !14
  store i64 %61, ptr %4
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i64, ptr %4
  %67 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %66), !dbg !16
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %5
  %72 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !17
  store ptr addrspace(1) null, ptr %6
  %73 = load ptr addrspace(1), ptr %v0
  %74 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %73, i64 72057594037927928), !dbg !18
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %73, i64 4)
  %77 = icmp ne ptr addrspace(1) %76, null
  br i1 %77, label %80, label %84
78:
  %79 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %79, ptr %10
  br label %37
80:
  %81 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  %82 = load i64, ptr addrspace(1) %81, align 8
  %83 = icmp ult i64 0, %82
  br i1 %83, label %98, label %84
84:
  %85 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 0
  %86 = load ptr, ptr addrspace(1) %85, align 8
  %87 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %86, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8
  %89 = call i64 %88(ptr addrspace(1) %73, i64 0, i64 21)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %103, label %104
91:
  %92 = load ptr addrspace(1), ptr %v0
  %93 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %92, i64 72057594037927928)
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  %96 = load i64, ptr addrspace(1) %95, align 8
  %97 = icmp ult i64 0, %96
  br i1 %97, label %107, label %110
98:
  %99 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = getelementptr inbounds [0 x i64], ptr addrspace(1) %101, i64 0, i64 0
  store i64 21, ptr addrspace(1) %102
  br label %91
103:
  br label %91
104:
  %105 = or i64 %89, 2048
  %106 = call ptr addrspace(1) @_bal_panic_construct(i64 %105), !dbg !7
  store ptr addrspace(1) %106, ptr %10
  br label %37
107:
  %108 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %92, i64 4)
  %109 = icmp ne ptr addrspace(1) %108, null
  br i1 %109, label %112, label %118
110:
  %111 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %111, ptr %10
  br label %37
112:
  %113 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %114 = load ptr addrspace(1), ptr addrspace(1) %113, align 8
  %115 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %116 = getelementptr inbounds [0 x i64], ptr addrspace(1) %115, i64 0, i64 0
  %117 = load i64, ptr addrspace(1) %116, align 8
  store i64 %117, ptr %7
  br label %124
118:
  %119 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 0
  %120 = load ptr, ptr addrspace(1) %119, align 8
  %121 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %120, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8
  %123 = call i64 %122(ptr addrspace(1) %92, i64 0)
  store i64 %123, ptr %7
  br label %124
124:
  %125 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %127 = load ptr addrspace(1), ptr addrspace(1) %126, align 8
  %128 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %129 = load i64, ptr %7
  %130 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %129), !dbg !20
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %128, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %8
  %135 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !21
  store ptr addrspace(1) null, ptr %9
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fill1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 16, scope: !5)
!10 = !DILocation(line: 5, column: 11, scope: !5)
!11 = !DILocation(line: 5, column: 5, scope: !5)
!12 = !DILocation(line: 6, column: 16, scope: !5)
!13 = !DILocation(line: 7, column: 18, scope: !5)
!14 = !DILocation(line: 7, column: 18, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 6, scope: !5)
!19 = !DILocation(line: 9, column: 15, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 10, column: 0, scope: !5)
