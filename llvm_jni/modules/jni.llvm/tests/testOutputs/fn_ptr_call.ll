%structTy = type { void (%structTy*)** }

define void @main(%structTy* %0) {
  %2 = alloca %structTy*, align 8
  store %structTy* %0, %structTy** %2, align 8
  %3 = load %structTy*, %structTy** %2, align 8
  %4 = getelementptr inbounds %structTy, %structTy* %3, i32 0, i32 0
  %5 = load void (%structTy*)**, void (%structTy*)*** %4, align 8
  %6 = getelementptr inbounds void (%structTy*)*, void (%structTy*)** %5, i64 1
  %7 = load void (%structTy*)*, void (%structTy*)** %6, align 8
  %8 = load %structTy*, %structTy** %2, align 8
  call void %7(%structTy* %8)
  ret void
}
