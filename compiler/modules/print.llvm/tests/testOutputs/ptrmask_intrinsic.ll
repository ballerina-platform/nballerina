declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
define i8* @foo (i8* %_0) {
  %_1 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_0, i64 72057594037927928)
  ret i8* %_1
}