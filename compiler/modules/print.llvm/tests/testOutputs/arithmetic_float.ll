define double @bar(double %0, double %1) {
  %3 = fadd double %0, %1
  %4 = fsub double %0, %1
  %5 = fmul double %3, %4
  %6 = fdiv double %5, %3
  ret double %6
}
