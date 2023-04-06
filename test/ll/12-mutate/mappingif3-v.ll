@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bi04root4 = external constant {i32}
@_Be04root5 = external constant i32
@_Be04root6 = external constant i32
@_Be04root7 = external constant i32
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
define void @_B04rootmain() !dbg !5 {
  %ns = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %u = alloca ptr addrspace(1)
  %u.1 = alloca ptr addrspace(1)
  %u.2 = alloca ptr addrspace(1)
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
  %_ = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %u.3 = alloca ptr addrspace(1)
  %u.4 = alloca ptr addrspace(1)
  %u.5 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %89, label %17
17:
  %18 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  call void @_bal_mapping_init_member(ptr addrspace(1) %18, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431985267)), !dbg !10
  %19 = and i64 72057594037927935, 3
  %20 = or i64 2449958197289549824, %19
  %21 = getelementptr i8, ptr addrspace(1) null, i64 %20
  call void @_bal_mapping_init_member(ptr addrspace(1) %18, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %21), !dbg !11
  store ptr addrspace(1) %18, ptr %1
  %22 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %22, ptr %ns
  %23 = load ptr addrspace(1), ptr %ns
  %24 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %23), !dbg !12
  store ptr addrspace(1) %24, ptr %u
  %25 = load ptr addrspace(1), ptr %u
  %26 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %25), !dbg !13
  br i1 %26, label %27, label %39
27:
  %28 = load ptr addrspace(1), ptr %u
  %29 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %28, ptr @_Be04root7), !dbg !24
  store ptr addrspace(1) %29, ptr %u.1
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !25
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441216078), ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %2
  %38 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !26
  store ptr addrspace(1) null, ptr %3
  br label %87
39:
  %40 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %40, ptr %u.2
  %41 = load ptr addrspace(1), ptr %u.2
  %42 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %41), !dbg !14
  br i1 %42, label %43, label %55
43:
  %44 = load ptr addrspace(1), ptr %u.2
  %45 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %44, ptr @_Be04root6), !dbg !21
  store ptr addrspace(1) %45, ptr %4
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !22
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441217363), ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %6
  %54 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !23
  store ptr addrspace(1) null, ptr %7
  br label %85
55:
  %56 = load ptr addrspace(1), ptr %u.2
  store ptr addrspace(1) %56, ptr %5
  %57 = load ptr addrspace(1), ptr %5
  %58 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %57), !dbg !15
  br i1 %58, label %59, label %71
59:
  %60 = load ptr addrspace(1), ptr %5
  %61 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %60, ptr @_Be04root5), !dbg !18
  store ptr addrspace(1) %61, ptr %8
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !19
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441217358), ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %10
  %70 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !20
  store ptr addrspace(1) null, ptr %11
  br label %83
71:
  %72 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %72, ptr %9
  %73 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %73, ptr %_
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !16
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441216083), ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %12
  %82 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !17
  store ptr addrspace(1) null, ptr %13
  br label %83
83:
  %84 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %84, ptr %u.3
  br label %85
85:
  %86 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %86, ptr %u.4
  br label %87
87:
  %88 = load ptr addrspace(1), ptr %u
  store ptr addrspace(1) %88, ptr %u.5
  ret void
89:
  %90 = call ptr addrspace(1) @_bal_panic_construct(i64 7684), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %90), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-mutate/mappingif3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 30, column: 16, scope: !5)
!9 = !DILocation(line: 31, column: 12, scope: !5)
!10 = !DILocation(line: 31, column: 12, scope: !5)
!11 = !DILocation(line: 31, column: 12, scope: !5)
!12 = !DILocation(line: 32, column: 8, scope: !5)
!13 = !DILocation(line: 34, column: 9, scope: !5)
!14 = !DILocation(line: 36, column: 16, scope: !5)
!15 = !DILocation(line: 38, column: 16, scope: !5)
!16 = !DILocation(line: 42, column: 19, scope: !5)
!17 = !DILocation(line: 42, column: 8, scope: !5)
!18 = !DILocation(line: 43, column: 4, scope: !5)
!19 = !DILocation(line: 39, column: 19, scope: !5)
!20 = !DILocation(line: 39, column: 8, scope: !5)
!21 = !DILocation(line: 40, column: 4, scope: !5)
!22 = !DILocation(line: 37, column: 19, scope: !5)
!23 = !DILocation(line: 37, column: 8, scope: !5)
!24 = !DILocation(line: 38, column: 4, scope: !5)
!25 = !DILocation(line: 35, column: 19, scope: !5)
!26 = !DILocation(line: 35, column: 8, scope: !5)
