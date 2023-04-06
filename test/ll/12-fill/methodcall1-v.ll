@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %27, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %1
  %20 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %20, ptr %v
  %21 = load ptr addrspace(1), ptr %v
  %22 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %21, i64 0), !dbg !10
  %23 = extractvalue {ptr addrspace(1), i64} %22, 1
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %45, label %29
25:
  %26 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !22
  unreachable
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !8
  unreachable
29:
  %30 = extractvalue {ptr addrspace(1), i64} %22, 0
  %31 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %21, ptr addrspace(1) %30), !dbg !11
  store ptr addrspace(1) %31, ptr %2
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !12
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %3
  %35 = load ptr addrspace(1), ptr %2
  %36 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %35, i64 72057594037927928), !dbg !13
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load ptr addrspace(1), ptr %3
  %39 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 0
  %40 = load ptr, ptr addrspace(1) %39, align 8
  %41 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = call i64 %42(ptr addrspace(1) %35, i64 0, ptr addrspace(1) %38)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %55
45:
  %46 = or i64 %23, 1280
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 %46), !dbg !7
  store ptr addrspace(1) %47, ptr %12
  br label %25
48:
  %49 = load ptr addrspace(1), ptr %v
  %50 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %49, i64 72057594037927928)
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  %53 = load i64, ptr addrspace(1) %52, align 8
  %54 = icmp ult i64 0, %53
  br i1 %54, label %58, label %71
55:
  %56 = or i64 %43, 1280
  %57 = call ptr addrspace(1) @_bal_panic_construct(i64 %56), !dbg !7
  store ptr addrspace(1) %57, ptr %12
  br label %25
58:
  %59 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 0
  %60 = load ptr, ptr addrspace(1) %59, align 8
  %61 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = call ptr addrspace(1) %62(ptr addrspace(1) %49, i64 0)
  %64 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %49, ptr addrspace(1) %63), !dbg !14
  store ptr addrspace(1) %64, ptr %4
  %65 = load ptr addrspace(1), ptr %4
  %66 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %65, i64 72057594037927928)
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  %69 = load i64, ptr addrspace(1) %68, align 8
  %70 = icmp ult i64 0, %69
  br i1 %70, label %73, label %90
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %72, ptr %12
  br label %25
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 0
  %75 = load ptr, ptr addrspace(1) %74, align 8
  %76 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call ptr addrspace(1) %77(ptr addrspace(1) %65, i64 0)
  %79 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %65, ptr addrspace(1) %78), !dbg !15
  store ptr addrspace(1) %79, ptr %5
  %80 = load ptr addrspace(1), ptr %5
  %81 = and i64 72057594037927935, 17
  %82 = or i64 2449958197289549824, %81
  %83 = getelementptr i8, ptr addrspace(1) null, i64 %82
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %80, ptr addrspace(1) %83), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %84 = load ptr addrspace(1), ptr %v
  %85 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %84, i64 72057594037927928)
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  %88 = load i64, ptr addrspace(1) %87, align 8
  %89 = icmp ult i64 0, %88
  br i1 %89, label %92, label %105
90:
  %91 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %91, ptr %12
  br label %25
92:
  %93 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 0
  %94 = load ptr, ptr addrspace(1) %93, align 8
  %95 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = call ptr addrspace(1) %96(ptr addrspace(1) %84, i64 0)
  %98 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %84, ptr addrspace(1) %97), !dbg !17
  store ptr addrspace(1) %98, ptr %7
  %99 = load ptr addrspace(1), ptr %7
  %100 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %99, i64 72057594037927928)
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  %103 = load i64, ptr addrspace(1) %102, align 8
  %104 = icmp ult i64 0, %103
  br i1 %104, label %107, label %120
105:
  %106 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %106, ptr %12
  br label %25
107:
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 0
  %109 = load ptr, ptr addrspace(1) %108, align 8
  %110 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = call ptr addrspace(1) %111(ptr addrspace(1) %99, i64 0)
  %113 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %99, ptr addrspace(1) %112), !dbg !18
  store ptr addrspace(1) %113, ptr %8
  %114 = load ptr addrspace(1), ptr %8
  %115 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %114, i64 72057594037927928)
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  %118 = load i64, ptr addrspace(1) %117, align 8
  %119 = icmp ult i64 0, %118
  br i1 %119, label %122, label %125
120:
  %121 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %121, ptr %12
  br label %25
122:
  %123 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %114, i64 4)
  %124 = icmp ne ptr addrspace(1) %123, null
  br i1 %124, label %127, label %133
125:
  %126 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %126, ptr %12
  br label %25
127:
  %128 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = getelementptr inbounds [0 x i64], ptr addrspace(1) %130, i64 0, i64 0
  %132 = load i64, ptr addrspace(1) %131, align 8
  store i64 %132, ptr %9
  br label %139
133:
  %134 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 0
  %135 = load ptr, ptr addrspace(1) %134, align 8
  %136 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %135, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8
  %138 = call i64 %137(ptr addrspace(1) %114, i64 0)
  store i64 %138, ptr %9
  br label %139
139:
  %140 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 3
  %142 = load ptr addrspace(1), ptr addrspace(1) %141, align 8
  %143 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %144 = load i64, ptr %9
  %145 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %144), !dbg !20
  %146 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %143, i64 0, i64 0
  store ptr addrspace(1) %145, ptr addrspace(1) %146
  %147 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 1
  store i64 1, ptr addrspace(1) %147
  %148 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %149 = getelementptr i8, ptr addrspace(1) %148, i64 864691128455135236
  store ptr addrspace(1) %149, ptr %10
  %150 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %150), !dbg !21
  store ptr addrspace(1) null, ptr %11
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/methodcall1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 18, scope: !5)
!10 = !DILocation(line: 5, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 5, scope: !5)
!12 = !DILocation(line: 5, column: 14, scope: !5)
!13 = !DILocation(line: 5, column: 8, scope: !5)
!14 = !DILocation(line: 6, column: 5, scope: !5)
!15 = !DILocation(line: 6, column: 8, scope: !5)
!16 = !DILocation(line: 6, column: 12, scope: !5)
!17 = !DILocation(line: 7, column: 16, scope: !5)
!18 = !DILocation(line: 7, column: 19, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 4, scope: !5)
!22 = !DILocation(line: 8, column: 0, scope: !5)
