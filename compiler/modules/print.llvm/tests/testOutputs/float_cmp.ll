define i1 @ugt(double %0, double %1) {
  %3 = fcmp ugt double %0, %1
  ret i1 %3
}
define i1 @uge(double %0, double %1) {
  %3 = fcmp uge double %0, %1
  ret i1 %3
}
define i1 @ult(double %0, double %1) {
  %3 = fcmp ult double %0, %1
  ret i1 %3
}
define i1 @ule(double %0, double %1) {
  %3 = fcmp ule double %0, %1
  ret i1 %3
}
