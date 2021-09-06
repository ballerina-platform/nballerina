define void @test() !dbg !6 {
  ret void
}
define i64 @main() {
  call void @test(), !dbg !8
  ret i64 0
}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!2, !3}
!0 = !DIFile(filename:"filename.bal", directory:"PATH_TO_BAL_SOURCE")
!1 = distinct !DICompileUnit(language: DW_LANG_C99, file: !0, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !{i32 1, !"Debug Info Version", i32 3}
!3 = !{i32 2, !"Dwarf Version", i32 2}
!4 = !DISubroutineType(types: !5)
!5 = !{}
!6 = distinct !DISubprogram(name:"test", linkageName:"test", scope: !0, file: !0, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!7 = !{}
!8 = !DILocation(line: 1, column: 2, scope: !6)
