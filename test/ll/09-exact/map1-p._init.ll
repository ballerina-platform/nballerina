%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 9, ptr bitcast(ptr @_bal_int_zero_filler_desc to ptr), [0 x i64] []}
@_bal_int_zero_filler_desc = external global %FillerDesc
@_Bi04root1 = constant {i32, i32, i64, ptr, [0 x i64]} {i32 1, i32 0, i64 262015, ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@_bal_nil_filler_desc = external global %FillerDesc
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
