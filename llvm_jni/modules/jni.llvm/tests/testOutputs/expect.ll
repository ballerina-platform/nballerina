define i64 @foo(i1 %0) {
  %2 = call i1 @llvm.expect.i1.i1(i1 %0, i1 true)
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  ret i64 1

4:                                                ; preds = %1
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1.i1(i1, i1) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(none) }
