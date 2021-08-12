define zeroext i1 @_bal_float_eq(double %0, double %1) {
  %3 = fcmp oeq double %0, %1
  %4 = fcmp uno double %0, 0.000000e+00
  %5 = fcmp uno double %1, 0.000000e+00
  %6 = and i1 %4, %5
  %7 = or i1 %3, %6
  ret i1 %7
}

define zeroext i1 @_bal_float_exact_eq(double %0, double %1) {
  %3 = bitcast double %0 to i64
  %4 = bitcast double %1 to i64
  %5 = fcmp uno double %0, 0.000000e+00
  %6 = fcmp uno double %1, 0.000000e+00
  %7 = and i1 %5, %6
  %8 = icmp eq i64 %3, %4
  %9 = or i1 %7, %8
  ret i1 %9
}
