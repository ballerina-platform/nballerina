%structTy = type {ptr}
define void @main(ptr %0) {
  %2 = alloca ptr
  store ptr %0, ptr %2
  %3 = load ptr, ptr %2
  %4 = getelementptr inbounds %structTy, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6
  %8 = load ptr, ptr %2
  %9 = bitcast ptr %7 to ptr
  call void %9(ptr %8)
  ret void
}
