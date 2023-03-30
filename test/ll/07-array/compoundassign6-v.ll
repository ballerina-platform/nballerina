@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca double
  %3 = alloca double
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca double
  %8 = alloca double
  %9 = alloca double
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %34, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x double], ptr addrspace(1) %20, i64 0, i64 0
  store double 0.5, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %25, ptr %x
  %26 = load ptr addrspace(1), ptr %x
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 72057594037927928)
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 0, %30
  br i1 %31, label %36, label %39
32:
  %33 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !18
  unreachable
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !8
  unreachable
36:
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 4)
  %38 = icmp ne ptr addrspace(1) %37, null
  br i1 %38, label %41, label %47
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %40, ptr %12
  br label %32
41:
  %42 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr inbounds [0 x double], ptr addrspace(1) %44, i64 0, i64 0
  %46 = load double, ptr addrspace(1) %45, align 8
  store double %46, ptr %2
  br label %53
47:
  %48 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %49 = load ptr, ptr addrspace(1) %48, align 8
  %50 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8
  %52 = call double %51(ptr addrspace(1) %26, i64 0)
  store double %52, ptr %2
  br label %53
53:
  %54 = load double, ptr %2
  %55 = fadd double %54, 1.0
  store double %55, ptr %3
  %56 = load ptr addrspace(1), ptr %x
  %57 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %56, i64 72057594037927928), !dbg !10
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = load double, ptr %3
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %56, i64 4)
  %61 = icmp ne ptr addrspace(1) %60, null
  br i1 %61, label %62, label %66
62:
  %63 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  %64 = load i64, ptr addrspace(1) %63, align 8
  %65 = icmp ult i64 0, %64
  br i1 %65, label %80, label %66
66:
  %67 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 0
  %68 = load ptr, ptr addrspace(1) %67, align 8
  %69 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %68, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = call i64 %70(ptr addrspace(1) %56, i64 0, double %59)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %85, label %86
73:
  %74 = load ptr addrspace(1), ptr %x
  %75 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %74, i64 72057594037927928)
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  %78 = load i64, ptr addrspace(1) %77, align 8
  %79 = icmp ult i64 0, %78
  br i1 %79, label %89, label %92
80:
  %81 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = getelementptr inbounds [0 x double], ptr addrspace(1) %83, i64 0, i64 0
  store double %59, ptr addrspace(1) %84
  br label %73
85:
  br label %73
86:
  %87 = or i64 %71, 1280
  %88 = call ptr addrspace(1) @_bal_panic_construct(i64 %87), !dbg !7
  store ptr addrspace(1) %88, ptr %12
  br label %32
89:
  %90 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %74, i64 4)
  %91 = icmp ne ptr addrspace(1) %90, null
  br i1 %91, label %94, label %100
92:
  %93 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %93, ptr %12
  br label %32
94:
  %95 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = getelementptr inbounds [0 x double], ptr addrspace(1) %97, i64 0, i64 0
  %99 = load double, ptr addrspace(1) %98, align 8
  store double %99, ptr %4
  br label %106
100:
  %101 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 0
  %102 = load ptr, ptr addrspace(1) %101, align 8
  %103 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8
  %105 = call double %104(ptr addrspace(1) %74, i64 0)
  store double %105, ptr %4
  br label %106
106:
  %107 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = load double, ptr %4
  %112 = call ptr addrspace(1) @_bal_float_to_tagged(double %111), !dbg !12
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %110, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %5
  %117 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !13
  store ptr addrspace(1) null, ptr %6
  %118 = load ptr addrspace(1), ptr %x
  %119 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %118, i64 72057594037927928)
  %120 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %121 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  %122 = load i64, ptr addrspace(1) %121, align 8
  %123 = icmp ult i64 0, %122
  br i1 %123, label %124, label %127
124:
  %125 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %118, i64 4)
  %126 = icmp ne ptr addrspace(1) %125, null
  br i1 %126, label %129, label %135
127:
  %128 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %128, ptr %12
  br label %32
129:
  %130 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %131 = load ptr addrspace(1), ptr addrspace(1) %130, align 8
  %132 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %133 = getelementptr inbounds [0 x double], ptr addrspace(1) %132, i64 0, i64 0
  %134 = load double, ptr addrspace(1) %133, align 8
  store double %134, ptr %7
  br label %141
135:
  %136 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 0
  %137 = load ptr, ptr addrspace(1) %136, align 8
  %138 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %137, i64 0, i32 9
  %139 = load ptr, ptr %138, align 8
  %140 = call double %139(ptr addrspace(1) %118, i64 0)
  store double %140, ptr %7
  br label %141
141:
  %142 = load double, ptr %7
  %143 = fsub double %142, 3.0
  store double %143, ptr %8
  %144 = load ptr addrspace(1), ptr %x
  %145 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %144, i64 72057594037927928), !dbg !14
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load double, ptr %8
  %148 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %144, i64 4)
  %149 = icmp ne ptr addrspace(1) %148, null
  br i1 %149, label %150, label %154
150:
  %151 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %146, i64 0, i32 1
  %152 = load i64, ptr addrspace(1) %151, align 8
  %153 = icmp ult i64 0, %152
  br i1 %153, label %168, label %154
154:
  %155 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %146, i64 0, i32 0
  %156 = load ptr, ptr addrspace(1) %155, align 8
  %157 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %156, i64 0, i32 10
  %158 = load ptr, ptr %157, align 8
  %159 = call i64 %158(ptr addrspace(1) %144, i64 0, double %147)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %173, label %174
161:
  %162 = load ptr addrspace(1), ptr %x
  %163 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %162, i64 72057594037927928)
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %164, i64 0, i32 1
  %166 = load i64, ptr addrspace(1) %165, align 8
  %167 = icmp ult i64 0, %166
  br i1 %167, label %177, label %180
168:
  %169 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %146, i64 0, i32 3
  %170 = load ptr addrspace(1), ptr addrspace(1) %169, align 8
  %171 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %172 = getelementptr inbounds [0 x double], ptr addrspace(1) %171, i64 0, i64 0
  store double %147, ptr addrspace(1) %172
  br label %161
173:
  br label %161
174:
  %175 = or i64 %159, 1792
  %176 = call ptr addrspace(1) @_bal_panic_construct(i64 %175), !dbg !7
  store ptr addrspace(1) %176, ptr %12
  br label %32
177:
  %178 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %162, i64 4)
  %179 = icmp ne ptr addrspace(1) %178, null
  br i1 %179, label %182, label %188
180:
  %181 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %181, ptr %12
  br label %32
182:
  %183 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %164, i64 0, i32 3
  %184 = load ptr addrspace(1), ptr addrspace(1) %183, align 8
  %185 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %186 = getelementptr inbounds [0 x double], ptr addrspace(1) %185, i64 0, i64 0
  %187 = load double, ptr addrspace(1) %186, align 8
  store double %187, ptr %9
  br label %194
188:
  %189 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %164, i64 0, i32 0
  %190 = load ptr, ptr addrspace(1) %189, align 8
  %191 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %190, i64 0, i32 9
  %192 = load ptr, ptr %191, align 8
  %193 = call double %192(ptr addrspace(1) %162, i64 0)
  store double %193, ptr %9
  br label %194
194:
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = load double, ptr %9
  %200 = call ptr addrspace(1) @_bal_float_to_tagged(double %199), !dbg !16
  %201 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %200, ptr addrspace(1) %201
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %202
  %203 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %204 = getelementptr i8, ptr addrspace(1) %203, i64 864691128455135236
  store ptr addrspace(1) %204, ptr %10
  %205 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %205), !dbg !17
  store ptr addrspace(1) null, ptr %11
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 16, scope: !5)
!10 = !DILocation(line: 5, column: 5, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 5, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 9, column: 0, scope: !5)
