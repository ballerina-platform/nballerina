define linkonce_odr zeroext i1 @_bal_float_eq1(double %0, double %1) {
 %3 = fcmp oeq double %0, %1
 %4 = fcmp uno double %0, 0.000000e+00
 %5 = fcmp uno double %1, 0.000000e+00
 %6 = and i1 %4, %5
 %7 = or i1 %3, %6
 ret i1 %7
}

define linkonce_odr zeroext i1 @_bal_float_eq2(double %0, double %1) {
 %3 = fcmp oeq double %0, %1
 br i1 %3, label %4, label %5
4:
 ret i1 %3
5:
 %6 = fcmp uno double %0, 0.000000e+00
 %7 = fcmp uno double %1, 0.000000e+00
 %8 = and i1 %6, %7
 ret i1 %8
}
