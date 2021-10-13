%structTy = type {void(%structTy*)**}
define void @main(%structTy* %0) {
  %2 = alloca %structTy*
  store %structTy* %0, %structTy** %2
  %3 = load %structTy*, %structTy** %2
  %4 = getelementptr inbounds %structTy, %structTy* %3, i32 0, i32 0
  %5 = load void(%structTy*)**, void(%structTy*)*** %4
  %6 = getelementptr inbounds void(%structTy*)*, void(%structTy*)** %5, i64 1
  %7 = load void(%structTy*)*, void(%structTy*)** %6
  %8 = load %structTy*, %structTy** %2
  %9 = bitcast void(%structTy*)* %7 to void(%structTy*)*
  call void %9(%structTy* %8)
  ret void
}
