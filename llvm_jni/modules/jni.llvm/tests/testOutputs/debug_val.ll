define i64 @main() !dbg !5 {
  %1 = alloca i64, align 8, !dbg !16
  %2 = alloca i64, align 8, !dbg !16
  %3 = alloca i8 addrspace(1)*, align 8, !dbg !16
  call void @llvm.dbg.declare(metadata i64* %2, metadata !10, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8 addrspace(1)** %3, metadata !12, metadata !DIExpression()), !dbg !16
  store i64 10, i64* %1, align 4, !dbg !16
  store i64 15, i64* %2, align 4, !dbg !16
  call void @llvm.dbg.value(metadata i64 10, metadata !8, metadata !DIExpression()), !dbg !16
  %4 = load i64, i64* %1, align 4, !dbg !18
  %5 = add i64 %4, 1, !dbg !18
  call void @llvm.dbg.value(metadata i64 %5, metadata !8, metadata !DIExpression()), !dbg !18
  store i64 20, i64* %2, align 4, !dbg !18
  ret i64 %5, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false)
!1 = !DIFile(filename: "filename.bal", directory: "PATH_TO_BAL_SOURCE")
!2 = !{}
!3 = !{i32 1, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DISubprogram(name: "main", linkageName: "test", scope: !1, file:!1, line: 1, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit:!0, retainedNodes: !7)
!6 = !DISubroutineType(types: !2)
!7 = !{!8, !10, !12}
!8 = !DILocalVariable(name: "myVar", scope: !5, file: !1, line: 2, type: !9)
!9 = !DIBasicType(name: "myInt", size: 64, encoding: DW_ATE_signed)
!10 = !DILocalVariable(name: "B", scope: !5, file: !1, line: 2, type: !11)
!11 = !DIBasicType(name: "constInt", size: 64, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "C", scope: !5, file: !1, line: 2, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "TaggedPtr", scope: !1, file: !1, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, dwarfAddressSpace: 1)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 2, column: 2, scope: !17)
!17 = distinct !DILexicalBlock(scope: !5, file: !1, line: 3, column: 2)
!18 = !DILocation(line: 3, column: 2, scope: !5)
!19 = !DILocation(line: 4, column: 2, scope: !5)
