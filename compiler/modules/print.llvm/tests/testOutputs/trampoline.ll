declare void @llvm.init.trampoline(ptr, ptr, ptr)
declare ptr @llvm.adjust.trampoline(ptr)
define i64 @foo1(ptr nest %0, i64 %1) {
  %3 = getelementptr {i64}, ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3
  %5 = add i64 %4, %1
  ret i64 %5
}
define i64 @main() {
  %1 = alloca ptr
  %2 = alloca ptr
  call void @llvm.init.trampoline(ptr %2, ptr @foo1, ptr %1)
  %3 = call ptr @llvm.adjust.trampoline(ptr %2)
  %4 = bitcast ptr %3 to ptr
  %5 = call i64 %4(i64 10)
  ret i64 %5
}
