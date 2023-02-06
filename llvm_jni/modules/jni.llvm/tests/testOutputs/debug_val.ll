define i64 @main() !dbg !4 {
  %1 = alloca i64, align 8, !dbg !16
  %2 = alloca i64, align 8, !dbg !16
  %3 = alloca ptr addrspace(1), align 8, !dbg !16
  call void @llvm.dbg.declare(metadata ptr %2, metadata !10, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata ptr %3, metadata !12, metadata !DIExpression()), !dbg !16
  store i64 10, ptr %1, align 4, !dbg !16
  store i64 15, ptr %2, align 4, !dbg !16
  call void @llvm.dbg.value(metadata i64 10, metadata !8, metadata !DIExpression()), !dbg !16
  %4 = load i64, ptr %1, align 4, !dbg !18
  %5 = add i64 %4, 1, !dbg !18
  call void @llvm.dbg.value(metadata i64 %5, metadata !8, metadata !DIExpression()), !dbg !18
  store i64 20, ptr %2, align 4, !dbg !18
  ret i64 %5, !dbg !19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "filename.bal", directory: "PATH_TO_BAL_SOURCE")
!2 = !{i32 1, !"Debug Info Version", i32 3}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = distinct !DISubprogram(name: "main", linkageName: "test", scope: !1, file: !1, line: 1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !7)
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !{!8, !10, !12}
!8 = !DILocalVariable(name: "myVar", scope: !4, file: !1, line: 2, type: !9)
!9 = !DIBasicType(name: "myInt", size: 64, encoding: DW_ATE_signed)
!10 = !DILocalVariable(name: "B", scope: !4, file: !1, line: 2, type: !11)
!11 = !DIBasicType(name: "constInt", size: 64, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "C", scope: !4, file: !1, line: 2, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "TaggedPtr", scope: !1, file: !1, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, dwarfAddressSpace: 1)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 2, column: 2, scope: !17)
!17 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 2)
!18 = !DILocation(line: 3, column: 2, scope: !4)
!19 = !DILocation(line: 4, column: 2, scope: !4)
