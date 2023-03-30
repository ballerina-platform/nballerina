@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %iv = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %37, label %17
17:
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %v
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !10
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %v
  %26 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 72057594037927928), !dbg !11
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load ptr addrspace(1), ptr %2
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 0
  %30 = load ptr, ptr addrspace(1) %29, align 8
  %31 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 %32(ptr addrspace(1) %25, i64 3, ptr addrspace(1) %28)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %46
35:
  %36 = load ptr addrspace(1), ptr %13
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !25
  unreachable
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !8
  unreachable
39:
  %40 = load ptr addrspace(1), ptr %v
  %41 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %40, i64 72057594037927928)
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  %44 = load i64, ptr addrspace(1) %43, align 8
  %45 = icmp ult i64 0, %44
  br i1 %45, label %49, label %62
46:
  %47 = or i64 %33, 1280
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 %47), !dbg !7
  store ptr addrspace(1) %48, ptr %13
  br label %35
49:
  %50 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 0
  %51 = load ptr, ptr addrspace(1) %50, align 8
  %52 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = call ptr addrspace(1) %53(ptr addrspace(1) %40, i64 0)
  %55 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %40, ptr addrspace(1) %54), !dbg !12
  store ptr addrspace(1) %55, ptr %3
  %56 = load ptr addrspace(1), ptr %v
  %57 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %56, i64 72057594037927928)
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  %60 = load i64, ptr addrspace(1) %59, align 8
  %61 = icmp ult i64 1, %60
  br i1 %61, label %64, label %93
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %63, ptr %13
  br label %35
64:
  %65 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 0
  %66 = load ptr, ptr addrspace(1) %65, align 8
  %67 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = call ptr addrspace(1) %68(ptr addrspace(1) %56, i64 1)
  %70 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %56, ptr addrspace(1) %69), !dbg !13
  store ptr addrspace(1) %70, ptr %4
  %71 = load ptr addrspace(1), ptr %3
  %72 = load ptr addrspace(1), ptr %4
  %73 = call i1 @_bal_exact_eq(ptr addrspace(1) %71, ptr addrspace(1) %72), !dbg !14
  store i1 %73, ptr %5
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load i1, ptr %5
  %79 = zext i1 %78 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %6
  %86 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %87 = load ptr addrspace(1), ptr %v
  %88 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %87, i64 72057594037927928)
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  %91 = load i64, ptr addrspace(1) %90, align 8
  %92 = icmp ult i64 0, %91
  br i1 %92, label %95, label %108
93:
  %94 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %94, ptr %13
  br label %35
95:
  %96 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 0
  %97 = load ptr, ptr addrspace(1) %96, align 8
  %98 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = call ptr addrspace(1) %99(ptr addrspace(1) %87, i64 0)
  %101 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %87, ptr addrspace(1) %100), !dbg !17
  store ptr addrspace(1) %101, ptr %8
  %102 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %102, ptr %iv
  %103 = load ptr addrspace(1), ptr %iv
  %104 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %103, i64 72057594037927928), !dbg !18
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %103, i64 4)
  %107 = icmp ne ptr addrspace(1) %106, null
  br i1 %107, label %110, label %114
108:
  %109 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %109, ptr %13
  br label %35
110:
  %111 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  %112 = load i64, ptr addrspace(1) %111, align 8
  %113 = icmp ult i64 0, %112
  br i1 %113, label %128, label %114
114:
  %115 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 0
  %116 = load ptr, ptr addrspace(1) %115, align 8
  %117 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %116, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8
  %119 = call i64 %118(ptr addrspace(1) %103, i64 0, i64 42)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %133, label %134
121:
  %122 = load ptr addrspace(1), ptr %v
  %123 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %122, i64 72057594037927928)
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %124, i64 0, i32 1
  %126 = load i64, ptr addrspace(1) %125, align 8
  %127 = icmp ult i64 1, %126
  br i1 %127, label %137, label %158
128:
  %129 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = getelementptr inbounds [0 x i64], ptr addrspace(1) %131, i64 0, i64 0
  store i64 42, ptr addrspace(1) %132
  br label %121
133:
  br label %121
134:
  %135 = or i64 %119, 2048
  %136 = call ptr addrspace(1) @_bal_panic_construct(i64 %135), !dbg !7
  store ptr addrspace(1) %136, ptr %13
  br label %35
137:
  %138 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %124, i64 0, i32 0
  %139 = load ptr, ptr addrspace(1) %138, align 8
  %140 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = call ptr addrspace(1) %141(ptr addrspace(1) %122, i64 1)
  %143 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %122, ptr addrspace(1) %142), !dbg !19
  store ptr addrspace(1) %143, ptr %9
  %144 = load ptr addrspace(1), ptr %9
  %145 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %144), !dbg !20
  %146 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %145), !dbg !21
  store i64 %146, ptr %10
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load i64, ptr %10
  %152 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %151), !dbg !23
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %11
  %157 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !24
  store ptr addrspace(1) null, ptr %12
  ret void
158:
  %159 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %159, ptr %13
  br label %35
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/fill1-v.bal", directory:"")
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
!13 = !DILocation(line: 6, column: 25, scope: !5)
!14 = !DILocation(line: 6, column: 20, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 24, scope: !5)
!18 = !DILocation(line: 8, column: 6, scope: !5)
!19 = !DILocation(line: 9, column: 16, scope: !5)
!20 = !DILocation(line: 9, column: 20, scope: !5)
!21 = !DILocation(line: 9, column: 20, scope: !5)
!22 = !DILocation(line: 9, column: 15, scope: !5)
!23 = !DILocation(line: 9, column: 15, scope: !5)
!24 = !DILocation(line: 9, column: 4, scope: !5)
!25 = !DILocation(line: 10, column: 0, scope: !5)
