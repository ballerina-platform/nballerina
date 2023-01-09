
define i8* @foo(i8* %0) {
  %2 = call i8 addrspace(1)* @llvm.ptrmask.p1.i64(i8* %0, i64 72057594037927928)
  ret i8 addrspace(1)* %2
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1.i64(i8 addrspace(1)*, i64) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
