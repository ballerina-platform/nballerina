declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define ptr addrspace(1) @foo(ptr addrspace(1) %0) {
  %2 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %0, i64 72057594037927928)
  ret ptr addrspace(1) %2
}
