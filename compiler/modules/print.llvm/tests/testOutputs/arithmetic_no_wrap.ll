define i64 @foo (i64 %_0, i64 %_1) {
  %_2 = add nuw nsw i64 %_0, %_1
  %_3 = sub nuw nsw i64 %_0, %_1
  %_4 = mul nuw nsw i64 %_2, %_3
  ret i64 %_4
}
