%BasicSubtype = type {ptr}
%Type0 = type {ptr, i32, [0 x i32]}
%Type1 = type {ptr, i32, [2 x i32]}
%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 ptrtoint(ptr @.member0 to i64), ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@.subtype0 = internal constant %Type0 {ptr @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype1 = internal constant %Type1 {ptr @_bal_precomputed_subtype_contains, i32 2, [2 x i32] [i32 0, i32 1]}, align 8
@.member0 = internal constant {i32, i32, [2 x ptr]} {i32 32831, i32 12288, [2 x ptr] [ptr bitcast(ptr @.subtype0 to ptr), ptr bitcast(ptr @.subtype1 to ptr)]}
@_bal_nil_filler_desc = external global %FillerDesc
@_Bi04root1 = constant {i32, i32, i64, ptr, [0 x i64]} {i32 1, i32 0, i64 9, ptr bitcast(ptr @_bal_int_zero_filler_desc to ptr), [0 x i64] []}
@_bal_int_zero_filler_desc = external global %FillerDesc
declare i1 @_bal_precomputed_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
