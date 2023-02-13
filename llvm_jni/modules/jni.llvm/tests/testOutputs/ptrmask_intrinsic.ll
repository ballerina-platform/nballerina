
define ptr @foo(ptr %0) {
  %2 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr %0, i64 72057594037927928)
  ret ptr addrspace(1) %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
