define i64* @foo (i64* %_0) {
  %_1 = getelementptr i64, i64* %_0, i64 3
  ret i64* %_1
}
define i8* @bar (i8* %_0) {
  %_1 = getelementptr i8, i8* %_0, i64 3
  ret i8* %_1
}
define i64 addrspace (1)* @foo2 (i64 addrspace (1)* %_0) {
  %_1 = getelementptr i64, i64 addrspace (1)* %_0, i64 3
  ret i64 addrspace (1)* %_1
}
