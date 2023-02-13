define ptr @foo(ptr %0) {
  %2 = getelementptr i64, ptr %0, i64 3
  ret ptr %2
}

define ptr @bar(ptr %0) {
  %2 = getelementptr i8, ptr %0, i64 3
  ret ptr %2
}

define ptr addrspace(1) @foo2(ptr addrspace(1) %0) {
  %2 = getelementptr i64, ptr addrspace(1) %0, i64 3
  ret ptr addrspace(1) %2
}
