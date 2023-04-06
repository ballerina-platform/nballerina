%BasicSubtype = type {ptr}
%Type0 = type {ptr, i32, [0 x i32]}
%Type1 = type {ptr, i32, [1 x i32]}
%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, [2 x i64]} {i32 0, i32 2, i64 ptrtoint(ptr @.member0 to i64), ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [2 x i64] [i64 9, i64 65]}
@.subtype0 = internal constant %Type0 {ptr @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype1 = internal constant %Type1 {ptr @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 0]}, align 8
@.member0 = internal constant {i32, i32, [2 x ptr]} {i32 32831, i32 12288, [2 x ptr] [ptr bitcast(ptr @.subtype0 to ptr), ptr bitcast(ptr @.subtype1 to ptr)]}
@_bal_nil_filler_desc = external global %FillerDesc
@_Bi04root1 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 262143, ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
declare ptr addrspace(1) @_bal_list_generic_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_inexact_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_generic_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_float(ptr addrspace(1), i64, double)
declare i64 @_bal_list_generic_inexact_set_float(ptr addrspace(1), i64, double)
declare i1 @_bal_precomputed_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
