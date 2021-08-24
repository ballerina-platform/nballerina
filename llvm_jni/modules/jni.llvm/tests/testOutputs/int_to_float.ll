define double @test(i64 %0, i32 %1) {
  %3 = sitofp i64 %0 to double
  %4 = sitofp i32 %1 to double
  %5 = fadd double %3, %4
  ret double %5
}
