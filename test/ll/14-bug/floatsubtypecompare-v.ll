@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_array_float_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i1
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i8
  %28 = load ptr, ptr @_bal_stack_guard
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %192, label %30
30:
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !10
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !11
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 1
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = call ptr addrspace(1) @_bal_float_to_tagged(double 3.0), !dbg !12
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 2
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 3, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %1
  %44 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %44, ptr %a
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !13
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x double], ptr addrspace(1) %48, i64 0, i64 0
  store double 4.0, ptr addrspace(1) %49
  %50 = getelementptr inbounds [0 x double], ptr addrspace(1) %48, i64 0, i64 1
  store double 5.0, ptr addrspace(1) %50
  %51 = getelementptr inbounds [0 x double], ptr addrspace(1) %48, i64 0, i64 2
  store double 6.0, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 3, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %2
  %55 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %55, ptr %b
  %56 = load ptr addrspace(1), ptr %a
  %57 = load ptr addrspace(1), ptr %b
  %58 = call i64 @_bal_array_float_compare(ptr addrspace(1) %56, ptr addrspace(1) %57), !dbg !14
  %59 = icmp eq i64 %58, 0
  store i1 %59, ptr %3
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load i1, ptr %3
  %65 = zext i1 %64 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %4
  %72 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !16
  store ptr addrspace(1) null, ptr %5
  %73 = load ptr addrspace(1), ptr %a
  %74 = load ptr addrspace(1), ptr %b
  %75 = call i64 @_bal_array_float_compare(ptr addrspace(1) %73, ptr addrspace(1) %74), !dbg !17
  %76 = icmp ule i64 %75, 1
  store i1 %76, ptr %6
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i1, ptr %6
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, ptr addrspace(1) null, i64 %83
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %7
  %89 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !19
  store ptr addrspace(1) null, ptr %8
  %90 = load ptr addrspace(1), ptr %a
  %91 = load ptr addrspace(1), ptr %b
  %92 = call i64 @_bal_array_float_compare(ptr addrspace(1) %90, ptr addrspace(1) %91), !dbg !20
  %93 = icmp eq i64 %92, 2
  store i1 %93, ptr %9
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !21
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load i1, ptr %9
  %99 = zext i1 %98 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, ptr addrspace(1) null, i64 %100
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %10
  %106 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !22
  store ptr addrspace(1) null, ptr %11
  %107 = load ptr addrspace(1), ptr %a
  %108 = load ptr addrspace(1), ptr %b
  %109 = call i64 @_bal_array_float_compare(ptr addrspace(1) %107, ptr addrspace(1) %108), !dbg !23
  %110 = icmp sge i64 %109, 1
  store i1 %110, ptr %12
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !24
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load i1, ptr %12
  %116 = zext i1 %115 to i64
  %117 = or i64 %116, 72057594037927936
  %118 = getelementptr i8, ptr addrspace(1) null, i64 %117
  %119 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %118, ptr addrspace(1) %119
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %120
  %121 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 864691128455135236
  store ptr addrspace(1) %122, ptr %13
  %123 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %123), !dbg !25
  store ptr addrspace(1) null, ptr %14
  %124 = load ptr addrspace(1), ptr %b
  %125 = load ptr addrspace(1), ptr %a
  %126 = call i64 @_bal_array_float_compare(ptr addrspace(1) %124, ptr addrspace(1) %125), !dbg !26
  %127 = icmp eq i64 %126, 0
  store i1 %127, ptr %15
  %128 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !27
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = load i1, ptr %15
  %133 = zext i1 %132 to i64
  %134 = or i64 %133, 72057594037927936
  %135 = getelementptr i8, ptr addrspace(1) null, i64 %134
  %136 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 0
  store ptr addrspace(1) %135, ptr addrspace(1) %136
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 1
  store i64 1, ptr addrspace(1) %137
  %138 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %139 = getelementptr i8, ptr addrspace(1) %138, i64 864691128455135236
  store ptr addrspace(1) %139, ptr %16
  %140 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %140), !dbg !28
  store ptr addrspace(1) null, ptr %17
  %141 = load ptr addrspace(1), ptr %b
  %142 = load ptr addrspace(1), ptr %a
  %143 = call i64 @_bal_array_float_compare(ptr addrspace(1) %141, ptr addrspace(1) %142), !dbg !29
  %144 = icmp ule i64 %143, 1
  store i1 %144, ptr %18
  %145 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 3
  %147 = load ptr addrspace(1), ptr addrspace(1) %146, align 8
  %148 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %149 = load i1, ptr %18
  %150 = zext i1 %149 to i64
  %151 = or i64 %150, 72057594037927936
  %152 = getelementptr i8, ptr addrspace(1) null, i64 %151
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %148, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %19
  %157 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !31
  store ptr addrspace(1) null, ptr %20
  %158 = load ptr addrspace(1), ptr %b
  %159 = load ptr addrspace(1), ptr %a
  %160 = call i64 @_bal_array_float_compare(ptr addrspace(1) %158, ptr addrspace(1) %159), !dbg !32
  %161 = icmp eq i64 %160, 2
  store i1 %161, ptr %21
  %162 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !33
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 3
  %164 = load ptr addrspace(1), ptr addrspace(1) %163, align 8
  %165 = bitcast ptr addrspace(1) %164 to ptr addrspace(1)
  %166 = load i1, ptr %21
  %167 = zext i1 %166 to i64
  %168 = or i64 %167, 72057594037927936
  %169 = getelementptr i8, ptr addrspace(1) null, i64 %168
  %170 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %165, i64 0, i64 0
  store ptr addrspace(1) %169, ptr addrspace(1) %170
  %171 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 1
  store i64 1, ptr addrspace(1) %171
  %172 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %173 = getelementptr i8, ptr addrspace(1) %172, i64 864691128455135236
  store ptr addrspace(1) %173, ptr %22
  %174 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %174), !dbg !34
  store ptr addrspace(1) null, ptr %23
  %175 = load ptr addrspace(1), ptr %b
  %176 = load ptr addrspace(1), ptr %a
  %177 = call i64 @_bal_array_float_compare(ptr addrspace(1) %175, ptr addrspace(1) %176), !dbg !35
  %178 = icmp sge i64 %177, 1
  store i1 %178, ptr %24
  %179 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !36
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 3
  %181 = load ptr addrspace(1), ptr addrspace(1) %180, align 8
  %182 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %183 = load i1, ptr %24
  %184 = zext i1 %183 to i64
  %185 = or i64 %184, 72057594037927936
  %186 = getelementptr i8, ptr addrspace(1) null, i64 %185
  %187 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %182, i64 0, i64 0
  store ptr addrspace(1) %186, ptr addrspace(1) %187
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 1
  store i64 1, ptr addrspace(1) %188
  %189 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %190 = getelementptr i8, ptr addrspace(1) %189, i64 864691128455135236
  store ptr addrspace(1) %190, ptr %25
  %191 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %191), !dbg !37
  store ptr addrspace(1) null, ptr %26
  ret void
192:
  %193 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %193), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/floatsubtypecompare-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 5, column: 12, scope: !5)
!11 = !DILocation(line: 5, column: 12, scope: !5)
!12 = !DILocation(line: 5, column: 12, scope: !5)
!13 = !DILocation(line: 6, column: 16, scope: !5)
!14 = !DILocation(line: 7, column: 17, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 17, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 9, column: 17, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 17, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 12, column: 17, scope: !5)
!27 = !DILocation(line: 12, column: 15, scope: !5)
!28 = !DILocation(line: 12, column: 4, scope: !5)
!29 = !DILocation(line: 13, column: 17, scope: !5)
!30 = !DILocation(line: 13, column: 15, scope: !5)
!31 = !DILocation(line: 13, column: 4, scope: !5)
!32 = !DILocation(line: 14, column: 17, scope: !5)
!33 = !DILocation(line: 14, column: 15, scope: !5)
!34 = !DILocation(line: 14, column: 4, scope: !5)
!35 = !DILocation(line: 15, column: 17, scope: !5)
!36 = !DILocation(line: 15, column: 15, scope: !5)
!37 = !DILocation(line: 15, column: 4, scope: !5)
