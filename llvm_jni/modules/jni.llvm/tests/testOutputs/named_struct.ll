%structTy = type { i64, i32, %structTy }

@g = external global %structTy
@g1 = external addrspace(1) global %structTy

define %structTy @foo() {
  ret %structTy* @g
}

define void @bar(%structTy %0) {
  %2 = call %structTy @foo()
  ret void
}
