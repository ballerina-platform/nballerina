
; Function Attrs: nounwind
define noalias i64 @test(i64 zeroext %0, i64 %1, i64 %2) #0 {
  %4 = add i64 %0, %1
  %5 = add i64 %4, %2
  ret i64 %5
}

; Function Attrs: nounwind
declare noalias i64 @test2(i64 zeroext, i64, i64) #0

attributes #0 = { nounwind }
