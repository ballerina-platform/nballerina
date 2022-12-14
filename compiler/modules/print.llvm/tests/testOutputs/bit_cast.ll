define ptr @foo(ptr %0) {
  %2 = bitcast ptr %0 to ptr
  ret ptr %2
}
