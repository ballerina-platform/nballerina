declare void @llvm.dbg.declare(metadata, metadata, metadata) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) nocallback nofree nosync nounwind readnone speculatable willreturn
define i64 @main() !dbg !6 {
  %1 = alloca i64, !dbg !18
  %2 = alloca i64, !dbg !18
  %3 = alloca ptr addrspace(1), !dbg !18
  call void @llvm.dbg.declare(metadata ptr %2, metadata !11, metadata !16), !dbg !18
  call void @llvm.dbg.declare(metadata ptr %3, metadata !15, metadata !16), !dbg !18
  store i64 10, ptr %1, !dbg !18
  store i64 15, ptr %2, !dbg !18
  call void @llvm.dbg.value(metadata i64 10, metadata !9, metadata !16), !dbg !18
  %4 = load i64, ptr %1, !dbg !19
  %5 = add i64 %4, 1, !dbg !19
  call void @llvm.dbg.value(metadata i64 %5, metadata !9, metadata !16), !dbg !19
  store i64 20, ptr %2, !dbg !19
  ret i64 %5, !dbg !20
}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!2, !3}
!0 = !DIFile(filename:"filename.bal", directory:"PATH_TO_BAL_SOURCE")
!1 = distinct !DICompileUnit(language: DW_LANG_C99, file: !0, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !{i32 1, !"Debug Info Version", i32 3}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !DISubroutineType(types: !5)
!5 = !{}
!6 = distinct !DISubprogram(name:"main", linkageName:"test", scope: !0, file: !0, line: 1, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!7 = !{}
!8 = !DIBasicType(name:"myInt", size: 64, encoding: DW_ATE_signed)
!9 = !DILocalVariable(name:"myVar", scope: !6, file: !0, line: 2, type: !8)
!10 = !DIBasicType(name:"constInt", size: 64, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name:"B", scope: !6, file: !0, line: 2, type: !10)
!12 = !DIBasicType(name:"char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, dwarfAddressSpace: 1)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name:"TaggedPtr", scope: !0, file: !0, baseType: !13)
!15 = !DILocalVariable(name:"C", scope: !6, file: !0, line: 2, type: !14)
!16 = !DIExpression()
!17 = distinct !DILexicalBlock(scope: !6, file: !0, line: 3, column: 2)
!18 = !DILocation(line: 2, column: 2, scope: !17)
!19 = !DILocation(line: 3, column: 2, scope: !6)
!20 = !DILocation(line: 4, column: 2, scope: !6)
