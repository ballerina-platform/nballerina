
define i8* @foo(i8* %0) {
  %2 = call i8* @llvm.ptrmask.p0i8.i64(i8* %0, i64 72057594037927928)
  ret i8* %2
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i8* @llvm.ptrmask.p0i8.i64(i8*, i64) #0

attributes #0 = { nounwind readnone speculatable willreturn }