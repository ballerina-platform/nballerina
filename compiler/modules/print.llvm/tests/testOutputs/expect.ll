declare i1 @llvm.expect.i1(i1, i1) nocallback nofree nosync nounwind willreturn memory(none)
define i64 @foo(i1 %0) {
  %2 = call i1 @llvm.expect.i1(i1 %0, i1 1)
  br i1 %2, label %3, label %4
3:
  ret i64 1
4:
  ret i64 0
}
