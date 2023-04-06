@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %30, label %18
18:
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %1
  %22 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %22, ptr %x
  %23 = load ptr addrspace(1), ptr %x
  %24 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 72057594037927928), !dbg !10
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 4)
  %27 = icmp ne ptr addrspace(1) %26, null
  br i1 %27, label %32, label %36
28:
  %29 = load ptr addrspace(1), ptr %14
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !24
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  %34 = load i64, ptr addrspace(1) %33, align 8
  %35 = icmp ult i64 1, %34
  br i1 %35, label %50, label %36
36:
  %37 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 0
  %38 = load ptr, ptr addrspace(1) %37, align 8
  %39 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8
  %41 = call i64 %40(ptr addrspace(1) %23, i64 1, i64 17)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %55, label %56
43:
  %44 = load ptr addrspace(1), ptr %x
  %45 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %44, i64 72057594037927928)
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  %48 = load i64, ptr addrspace(1) %47, align 8
  %49 = icmp ult i64 0, %48
  br i1 %49, label %59, label %62
50:
  %51 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %52 = load ptr addrspace(1), ptr addrspace(1) %51, align 8
  %53 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %54 = getelementptr inbounds [0 x i64], ptr addrspace(1) %53, i64 0, i64 1
  store i64 17, ptr addrspace(1) %54
  br label %43
55:
  br label %43
56:
  %57 = or i64 %41, 1536
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 %57), !dbg !7
  store ptr addrspace(1) %58, ptr %14
  br label %28
59:
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %44, i64 4)
  %61 = icmp ne ptr addrspace(1) %60, null
  br i1 %61, label %64, label %70
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %63, ptr %14
  br label %28
64:
  %65 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = getelementptr inbounds [0 x i64], ptr addrspace(1) %67, i64 0, i64 0
  %69 = load i64, ptr addrspace(1) %68, align 8
  store i64 %69, ptr %2
  br label %76
70:
  %71 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 0
  %72 = load ptr, ptr addrspace(1) %71, align 8
  %73 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8
  %75 = call i64 %74(ptr addrspace(1) %44, i64 0)
  store i64 %75, ptr %2
  br label %76
76:
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i64, ptr %2
  %82 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %81), !dbg !12
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %3
  %87 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %88 = load ptr addrspace(1), ptr %x
  %89 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %88, i64 72057594037927928)
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 1
  %92 = load i64, ptr addrspace(1) %91, align 8
  %93 = icmp ult i64 1, %92
  br i1 %93, label %94, label %97
94:
  %95 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %88, i64 4)
  %96 = icmp ne ptr addrspace(1) %95, null
  br i1 %96, label %99, label %105
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %98, ptr %14
  br label %28
99:
  %100 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = getelementptr inbounds [0 x i64], ptr addrspace(1) %102, i64 0, i64 1
  %104 = load i64, ptr addrspace(1) %103, align 8
  store i64 %104, ptr %5
  br label %111
105:
  %106 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 0
  %107 = load ptr, ptr addrspace(1) %106, align 8
  %108 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = call i64 %109(ptr addrspace(1) %88, i64 1)
  store i64 %110, ptr %5
  br label %111
111:
  %112 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %112, i64 0, i32 3
  %114 = load ptr addrspace(1), ptr addrspace(1) %113, align 8
  %115 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %116 = load i64, ptr %5
  %117 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %116), !dbg !15
  %118 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %115, i64 0, i64 0
  store ptr addrspace(1) %117, ptr addrspace(1) %118
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %112, i64 0, i32 1
  store i64 1, ptr addrspace(1) %119
  %120 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %121 = getelementptr i8, ptr addrspace(1) %120, i64 864691128455135236
  store ptr addrspace(1) %121, ptr %6
  %122 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %122), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %123 = load ptr addrspace(1), ptr %x
  %124 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %123, i64 72057594037927928), !dbg !17
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %123, i64 4)
  %127 = icmp ne ptr addrspace(1) %126, null
  br i1 %127, label %128, label %132
128:
  %129 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  %130 = load i64, ptr addrspace(1) %129, align 8
  %131 = icmp ult i64 3, %130
  br i1 %131, label %146, label %132
132:
  %133 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 0
  %134 = load ptr, ptr addrspace(1) %133, align 8
  %135 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %134, i64 0, i32 7
  %136 = load ptr, ptr %135, align 8
  %137 = call i64 %136(ptr addrspace(1) %123, i64 3, i64 42)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %151, label %152
139:
  %140 = load ptr addrspace(1), ptr %x
  %141 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %140, i64 72057594037927928)
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 1
  %144 = load i64, ptr addrspace(1) %143, align 8
  %145 = icmp ult i64 2, %144
  br i1 %145, label %155, label %158
146:
  %147 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %148 = load ptr addrspace(1), ptr addrspace(1) %147, align 8
  %149 = bitcast ptr addrspace(1) %148 to ptr addrspace(1)
  %150 = getelementptr inbounds [0 x i64], ptr addrspace(1) %149, i64 0, i64 3
  store i64 42, ptr addrspace(1) %150
  br label %139
151:
  br label %139
152:
  %153 = or i64 %137, 2304
  %154 = call ptr addrspace(1) @_bal_panic_construct(i64 %153), !dbg !7
  store ptr addrspace(1) %154, ptr %14
  br label %28
155:
  %156 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %140, i64 4)
  %157 = icmp ne ptr addrspace(1) %156, null
  br i1 %157, label %160, label %166
158:
  %159 = call ptr addrspace(1) @_bal_panic_construct(i64 2565), !dbg !7
  store ptr addrspace(1) %159, ptr %14
  br label %28
160:
  %161 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = getelementptr inbounds [0 x i64], ptr addrspace(1) %163, i64 0, i64 2
  %165 = load i64, ptr addrspace(1) %164, align 8
  store i64 %165, ptr %8
  br label %172
166:
  %167 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 0
  %168 = load ptr, ptr addrspace(1) %167, align 8
  %169 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %168, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8
  %171 = call i64 %170(ptr addrspace(1) %140, i64 2)
  store i64 %171, ptr %8
  br label %172
172:
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 3
  %175 = load ptr addrspace(1), ptr addrspace(1) %174, align 8
  %176 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %177 = load i64, ptr %8
  %178 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %177), !dbg !19
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %176, i64 0, i64 0
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 1
  store i64 1, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %9
  %183 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %183), !dbg !20
  store ptr addrspace(1) null, ptr %10
  %184 = load ptr addrspace(1), ptr %x
  %185 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %184, i64 72057594037927928)
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  %188 = load i64, ptr addrspace(1) %187, align 8
  %189 = icmp ult i64 3, %188
  br i1 %189, label %190, label %193
190:
  %191 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %184, i64 4)
  %192 = icmp ne ptr addrspace(1) %191, null
  br i1 %192, label %195, label %201
193:
  %194 = call ptr addrspace(1) @_bal_panic_construct(i64 2821), !dbg !7
  store ptr addrspace(1) %194, ptr %14
  br label %28
195:
  %196 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = getelementptr inbounds [0 x i64], ptr addrspace(1) %198, i64 0, i64 3
  %200 = load i64, ptr addrspace(1) %199, align 8
  store i64 %200, ptr %11
  br label %207
201:
  %202 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 0
  %203 = load ptr, ptr addrspace(1) %202, align 8
  %204 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %203, i64 0, i32 6
  %205 = load ptr, ptr %204, align 8
  %206 = call i64 %205(ptr addrspace(1) %184, i64 3)
  store i64 %206, ptr %11
  br label %207
207:
  %208 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %209 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %208, i64 0, i32 3
  %210 = load ptr addrspace(1), ptr addrspace(1) %209, align 8
  %211 = bitcast ptr addrspace(1) %210 to ptr addrspace(1)
  %212 = load i64, ptr %11
  %213 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %212), !dbg !22
  %214 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %211, i64 0, i64 0
  store ptr addrspace(1) %213, ptr addrspace(1) %214
  %215 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %208, i64 0, i32 1
  store i64 1, ptr addrspace(1) %215
  %216 = bitcast ptr addrspace(1) %208 to ptr addrspace(1)
  %217 = getelementptr i8, ptr addrspace(1) %216, i64 864691128455135236
  store ptr addrspace(1) %217, ptr %12
  %218 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %218), !dbg !23
  store ptr addrspace(1) null, ptr %13
  ret void
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
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 5, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 15, scope: !5)
!23 = !DILocation(line: 11, column: 4, scope: !5)
!24 = !DILocation(line: 12, column: 0, scope: !5)
