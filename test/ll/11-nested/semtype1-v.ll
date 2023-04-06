@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"atomicType\00\00"}, align 8
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
@_Bi04root6 = external constant {i32}
@.str13 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 15, [20 x i8] c"subtypeDataList\00\00\00\00\00"}, align 8
@_Bi04root7 = external constant {i32}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@_Be04root8 = external constant i32
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Be04root9 = external constant i32
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %mat = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %bdd = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %semType = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %semType.1 = alloca ptr addrspace(1)
  %semType.2 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %list = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %st = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %st.1 = alloca ptr addrspace(1)
  %st.2 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %atom = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %atom.1 = alloca ptr addrspace(1)
  %atom.2 = alloca i64
  %17 = alloca i64
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %t = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %t.1 = alloca ptr addrspace(1)
  %t.2 = alloca ptr addrspace(1)
  %names = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %t.3 = alloca ptr addrspace(1)
  %st.3 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %205, label %29
29:
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %34
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 2, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %1
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = and i64 72057594037927935, 256
  %44 = or i64 2449958197289549824, %43
  %45 = getelementptr i8, ptr addrspace(1) null, i64 %44
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = and i64 72057594037927935, 256
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 1
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 2, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %2
  %54 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 3), !dbg !11
  %55 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %54, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187969552540014), ptr addrspace(1) %55), !dbg !12
  %56 = and i64 72057594037927935, 0
  %57 = or i64 2449958197289549824, %56
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  call void @_bal_mapping_init_member(ptr addrspace(1) %54, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013938), ptr addrspace(1) %58), !dbg !13
  %59 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %54, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187969552742772), ptr addrspace(1) %59), !dbg !14
  store ptr addrspace(1) %54, ptr %3
  %60 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %60, ptr %mat
  %61 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 2), !dbg !15
  %62 = load ptr addrspace(1), ptr %mat
  %63 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %62), !dbg !16
  call void @_bal_mapping_init_member(ptr addrspace(1) %61, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str5 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %63), !dbg !17
  %64 = and i64 72057594037927935, 42
  %65 = or i64 2449958197289549824, %64
  %66 = getelementptr i8, ptr addrspace(1) null, i64 %65
  call void @_bal_mapping_init_member(ptr addrspace(1) %61, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187991026789993), ptr addrspace(1) %66), !dbg !18
  store ptr addrspace(1) %61, ptr %4
  %67 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root4, i64 4), !dbg !19
  %68 = load ptr addrspace(1), ptr %4
  call void @_bal_mapping_init_member(ptr addrspace(1) %67, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570982315105), ptr addrspace(1) %68), !dbg !20
  %69 = zext i1 1 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, ptr addrspace(1) null, i64 %70
  call void @_bal_mapping_init_member(ptr addrspace(1) %67, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571099161964), ptr addrspace(1) %71), !dbg !21
  %72 = zext i1 0 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  call void @_bal_mapping_init_member(ptr addrspace(1) %67, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738018614679726445), ptr addrspace(1) %74), !dbg !22
  %75 = zext i1 0 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, ptr addrspace(1) null, i64 %76
  call void @_bal_mapping_init_member(ptr addrspace(1) %67, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187973897447794), ptr addrspace(1) %77), !dbg !23
  store ptr addrspace(1) %67, ptr %5
  %78 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %78, ptr %bdd
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !24
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = load ptr addrspace(1), ptr %bdd
  %84 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %83), !dbg !25
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %6
  %89 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root6, i64 3), !dbg !26
  %90 = and i64 72057594037927935, 0
  %91 = or i64 2449958197289549824, %90
  %92 = getelementptr i8, ptr addrspace(1) null, i64 %91
  call void @_bal_mapping_init_member(ptr addrspace(1) %89, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431589985), ptr addrspace(1) %92), !dbg !27
  %93 = and i64 72057594037927935, 262144
  %94 = or i64 2449958197289549824, %93
  %95 = getelementptr i8, ptr addrspace(1) null, i64 %94
  call void @_bal_mapping_init_member(ptr addrspace(1) %89, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570847965043), ptr addrspace(1) %95), !dbg !28
  %96 = load ptr addrspace(1), ptr %6
  call void @_bal_mapping_init_member(ptr addrspace(1) %89, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str13 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %96), !dbg !29
  store ptr addrspace(1) %89, ptr %7
  %97 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %97, ptr %semType
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !30
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = zext i1 0 to i64
  %103 = or i64 %102, 72057594037927936
  %104 = getelementptr i8, ptr addrspace(1) null, i64 %103
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %106
  %107 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %108 = getelementptr i8, ptr addrspace(1) %107, i64 864691128455135236
  store ptr addrspace(1) %108, ptr %8
  %109 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %109), !dbg !31
  store ptr addrspace(1) null, ptr %9
  %110 = load ptr addrspace(1), ptr %semType
  %111 = addrspacecast ptr addrspace(1) %110 to ptr
  %112 = ptrtoint ptr %111 to i64
  %113 = and i64 %112, 2233785415175766016
  %114 = icmp eq i64 %113, 936748722493063168
  br i1 %114, label %115, label %137
115:
  %116 = load ptr addrspace(1), ptr %semType
  store ptr addrspace(1) %116, ptr %semType.1
  %117 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !32
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 3
  %119 = load ptr addrspace(1), ptr addrspace(1) %118, align 8
  %120 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %120, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2700019493025705827), ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %10
  %125 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !33
  store ptr addrspace(1) null, ptr %11
  %126 = load ptr addrspace(1), ptr %semType.1
  %127 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %126, i64 2), !dbg !34
  %128 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %126, ptr addrspace(1) %127), !dbg !35
  store ptr addrspace(1) %128, ptr %12
  %129 = load ptr addrspace(1), ptr %12
  %130 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %129), !dbg !36
  store ptr addrspace(1) %130, ptr %list
  %131 = load ptr addrspace(1), ptr %list
  %132 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %131, i64 72057594037927928)
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  %135 = load i64, ptr addrspace(1) %134, align 8
  %136 = icmp ult i64 0, %135
  br i1 %136, label %207, label %217
137:
  %138 = load ptr addrspace(1), ptr %semType
  %139 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %138), !dbg !58
  store i64 %139, ptr %semType.2
  ret void
140:
  %141 = load ptr addrspace(1), ptr %st
  %142 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %141, ptr @_Be04root8), !dbg !39
  store ptr addrspace(1) %142, ptr %st.1
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !40
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431063650), ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %14
  %151 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !41
  store ptr addrspace(1) null, ptr %15
  %152 = load ptr addrspace(1), ptr %st.1
  %153 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %152, i64 0), !dbg !42
  %154 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %152, ptr addrspace(1) %153), !dbg !43
  store ptr addrspace(1) %154, ptr %16
  %155 = load ptr addrspace(1), ptr %16
  store ptr addrspace(1) %155, ptr %atom
  %156 = load ptr addrspace(1), ptr %atom
  %157 = addrspacecast ptr addrspace(1) %156 to ptr
  %158 = ptrtoint ptr %157 to i64
  %159 = and i64 %158, 2233785415175766016
  %160 = icmp eq i64 %159, 936748722493063168
  br i1 %160, label %163, label %185
161:
  %162 = load ptr addrspace(1), ptr %st
  store ptr addrspace(1) %162, ptr %st.3
  br label %137
163:
  %164 = load ptr addrspace(1), ptr %atom
  store ptr addrspace(1) %164, ptr %atom.1
  %165 = load ptr addrspace(1), ptr %atom.1
  %166 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %165, i64 1), !dbg !44
  %167 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %166), !dbg !45
  store i64 %167, ptr %17
  %168 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !46
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 3
  %170 = load ptr addrspace(1), ptr addrspace(1) %169, align 8
  %171 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %172 = load i64, ptr %17
  %173 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %172), !dbg !47
  %174 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %171, i64 0, i64 0
  store ptr addrspace(1) %173, ptr addrspace(1) %174
  %175 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 1
  store i64 1, ptr addrspace(1) %175
  %176 = bitcast ptr addrspace(1) %168 to ptr addrspace(1)
  %177 = getelementptr i8, ptr addrspace(1) %176, i64 864691128455135236
  store ptr addrspace(1) %177, ptr %18
  %178 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %178), !dbg !48
  store ptr addrspace(1) null, ptr %19
  %179 = load ptr addrspace(1), ptr %atom.1
  %180 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %179, i64 0), !dbg !49
  %181 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %179, ptr addrspace(1) %180), !dbg !50
  store ptr addrspace(1) %181, ptr %20
  %182 = load ptr addrspace(1), ptr %20
  store ptr addrspace(1) %182, ptr %t
  %183 = load ptr addrspace(1), ptr %t
  %184 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %183), !dbg !51
  br i1 %184, label %188, label %201
185:
  %186 = load ptr addrspace(1), ptr %atom
  %187 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %186), !dbg !57
  store i64 %187, ptr %atom.2
  br label %161
188:
  %189 = load ptr addrspace(1), ptr %t
  %190 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %189, ptr @_Be04root9), !dbg !52
  store ptr addrspace(1) %190, ptr %t.1
  %191 = load ptr addrspace(1), ptr %t.1
  %192 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %191, i64 0), !dbg !53
  %193 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %191, ptr addrspace(1) %192), !dbg !54
  store ptr addrspace(1) %193, ptr %21
  %194 = load ptr addrspace(1), ptr %21
  store ptr addrspace(1) %194, ptr %names
  %195 = load ptr addrspace(1), ptr %names
  %196 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %195, i64 72057594037927928)
  %197 = bitcast ptr addrspace(1) %196 to ptr addrspace(1)
  %198 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %197, i64 0, i32 1
  %199 = load i64, ptr addrspace(1) %198, align 8
  %200 = icmp ult i64 0, %199
  br i1 %200, label %219, label %235
201:
  %202 = load ptr addrspace(1), ptr %t
  store ptr addrspace(1) %202, ptr %t.3
  br label %185
203:
  %204 = load ptr addrspace(1), ptr %25
  call void @_bal_panic(ptr addrspace(1) %204), !dbg !59
  unreachable
205:
  %206 = call ptr addrspace(1) @_bal_panic_construct(i64 29956), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %206), !dbg !8
  unreachable
207:
  %208 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 0
  %209 = load ptr, ptr addrspace(1) %208, align 8
  %210 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %209, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8
  %212 = call ptr addrspace(1) %211(ptr addrspace(1) %131, i64 0)
  %213 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %131, ptr addrspace(1) %212), !dbg !37
  store ptr addrspace(1) %213, ptr %13
  %214 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %214, ptr %st
  %215 = load ptr addrspace(1), ptr %st
  %216 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %215), !dbg !38
  br i1 %216, label %140, label %161
217:
  %218 = call ptr addrspace(1) @_bal_panic_construct(i64 35333), !dbg !7
  store ptr addrspace(1) %218, ptr %25
  br label %203
219:
  %220 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %197, i64 0, i32 0
  %221 = load ptr, ptr addrspace(1) %220, align 8
  %222 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %221, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8
  %224 = call ptr addrspace(1) %223(ptr addrspace(1) %195, i64 0)
  store ptr addrspace(1) %224, ptr %22
  %225 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !55
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 3
  %227 = load ptr addrspace(1), ptr addrspace(1) %226, align 8
  %228 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %229 = load ptr addrspace(1), ptr %22
  %230 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %228, i64 0, i64 0
  store ptr addrspace(1) %229, ptr addrspace(1) %230
  %231 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 1
  store i64 1, ptr addrspace(1) %231
  %232 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %233 = getelementptr i8, ptr addrspace(1) %232, i64 864691128455135236
  store ptr addrspace(1) %233, ptr %23
  %234 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %234), !dbg !56
  store ptr addrspace(1) null, ptr %24
  br label %201
235:
  %236 = call ptr addrspace(1) @_bal_panic_construct(i64 37637), !dbg !7
  store ptr addrspace(1) %236, ptr %25
  br label %203
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/semtype1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 117, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 117, column: 16, scope: !5)
!9 = !DILocation(line: 119, column: 15, scope: !5)
!10 = !DILocation(line: 120, column: 15, scope: !5)
!11 = !DILocation(line: 118, column: 28, scope: !5)
!12 = !DILocation(line: 118, column: 28, scope: !5)
!13 = !DILocation(line: 118, column: 28, scope: !5)
!14 = !DILocation(line: 118, column: 28, scope: !5)
!15 = !DILocation(line: 124, column: 14, scope: !5)
!16 = !DILocation(line: 124, column: 14, scope: !5)
!17 = !DILocation(line: 124, column: 14, scope: !5)
!18 = !DILocation(line: 124, column: 14, scope: !5)
!19 = !DILocation(line: 123, column: 18, scope: !5)
!20 = !DILocation(line: 123, column: 18, scope: !5)
!21 = !DILocation(line: 123, column: 18, scope: !5)
!22 = !DILocation(line: 123, column: 18, scope: !5)
!23 = !DILocation(line: 123, column: 18, scope: !5)
!24 = !DILocation(line: 132, column: 25, scope: !5)
!25 = !DILocation(line: 132, column: 25, scope: !5)
!26 = !DILocation(line: 129, column: 22, scope: !5)
!27 = !DILocation(line: 129, column: 22, scope: !5)
!28 = !DILocation(line: 129, column: 22, scope: !5)
!29 = !DILocation(line: 129, column: 22, scope: !5)
!30 = !DILocation(line: 134, column: 15, scope: !5)
!31 = !DILocation(line: 134, column: 4, scope: !5)
!32 = !DILocation(line: 136, column: 19, scope: !5)
!33 = !DILocation(line: 136, column: 8, scope: !5)
!34 = !DILocation(line: 137, column: 36, scope: !5)
!35 = !DILocation(line: 137, column: 36, scope: !5)
!36 = !DILocation(line: 137, column: 27, scope: !5)
!37 = !DILocation(line: 138, column: 29, scope: !5)
!38 = !DILocation(line: 139, column: 14, scope: !5)
!39 = !DILocation(line: 139, column: 14, scope: !5)
!40 = !DILocation(line: 140, column: 23, scope: !5)
!41 = !DILocation(line: 140, column: 12, scope: !5)
!42 = !DILocation(line: 141, column: 26, scope: !5)
!43 = !DILocation(line: 141, column: 26, scope: !5)
!44 = !DILocation(line: 143, column: 31, scope: !5)
!45 = !DILocation(line: 143, column: 31, scope: !5)
!46 = !DILocation(line: 143, column: 27, scope: !5)
!47 = !DILocation(line: 143, column: 27, scope: !5)
!48 = !DILocation(line: 143, column: 16, scope: !5)
!49 = !DILocation(line: 144, column: 35, scope: !5)
!50 = !DILocation(line: 144, column: 35, scope: !5)
!51 = !DILocation(line: 145, column: 21, scope: !5)
!52 = !DILocation(line: 145, column: 21, scope: !5)
!53 = !DILocation(line: 146, column: 38, scope: !5)
!54 = !DILocation(line: 146, column: 38, scope: !5)
!55 = !DILocation(line: 147, column: 31, scope: !5)
!56 = !DILocation(line: 147, column: 20, scope: !5)
!57 = !DILocation(line: 142, column: 15, scope: !5)
!58 = !DILocation(line: 135, column: 7, scope: !5)
!59 = !DILocation(line: 152, column: 0, scope: !5)
