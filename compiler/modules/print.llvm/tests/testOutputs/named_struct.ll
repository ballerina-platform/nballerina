%structTy = type {i64, ptr, %structTy, ptr}
@g = external global %structTy
@g1 = external addrspace(1) global %structTy
define %structTy @foo() {
  ret ptr @g
}
define void @bar(%structTy %0) {
  %2 = call %structTy @foo()
  ret void
}
