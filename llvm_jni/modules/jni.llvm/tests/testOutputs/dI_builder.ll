define void @test() !dbg !5 {
  ret void
}

define i64 @main() {
  call void @test(), !dbg !7
  ret i64 0
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false)
!1 = !DIFile(filename: "filename.bal", directory: "PATH_TO_BAL_SOURCE")
!2 = !{}
!3 = !{i32 1, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 2}
!5 = distinct !DISubprogram(name: "test", linkageName: "test", scope: !1, file: !1, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!6 = !DISubroutineType(types: !2)
!7 = !DILocation(line: 1, column: 2, scope: !5)
