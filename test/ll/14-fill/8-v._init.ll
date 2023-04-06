%BasicSubtype = type {ptr}
%Type0 = type {ptr, i32, [1 x i32]}
%Type1 = type {ptr, i32, i16, i16, [1 x ptr addrspace(1)]}
%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member0 to i64), ptr bitcast(ptr @.fillerDesc1 to ptr), [0 x i64] []}
@.subtype0 = internal constant %Type0 {ptr @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 1]}, align 8
@.member0 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype0 to ptr)]}
@.list1 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [3 x i64]} {i32 1, i32 3, i64 3, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 1, ptr null, [3 x i64] [i64 9, i64 5, i64 ptrtoint(ptr @.member1 to i64)]}
@.subtype1 = internal constant %Type1 {ptr @_bal_string_subtype_contains, i32 1, i16 1, i16 1, [1 x ptr addrspace(1)] [ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)]}, align 8
@.member1 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 32, [1 x ptr] [ptr bitcast(ptr @.subtype1 to ptr)]}
@_bal_int_zero_filler_desc = external global %FillerDesc
@_bal_boolean_false_filler_desc = external global %FillerDesc
@.fillerDesc2 = global {ptr, ptr addrspace(1)} {ptr @_bal_generic_filler_create, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)}
@.fillerDesc1 = global {ptr, ptr, i64, [3 x ptr]} {ptr @_bal_fixed_length_list_filler_create, ptr bitcast(ptr @.list1 to ptr), i64 3, [3 x ptr] [ptr bitcast(ptr @_bal_int_zero_filler_desc to ptr), ptr bitcast(ptr @_bal_boolean_false_filler_desc to ptr), ptr bitcast(ptr @.fillerDesc2 to ptr)]}
@_Bi04root2 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 2, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 262143, ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@_bal_nil_filler_desc = external global %FillerDesc
@_Bi04root1 = alias {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [3 x i64]}, ptr @.list1
declare ptr addrspace(1) @_bal_list_generic_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_inexact_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_generic_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_float(ptr addrspace(1), i64, double)
declare i64 @_bal_list_generic_inexact_set_float(ptr addrspace(1), i64, double)
declare ptr addrspace(1) @_bal_fixed_length_list_filler_create(ptr, ptr)
declare ptr addrspace(1) @_bal_generic_filler_create(ptr, ptr)
declare i1 @_bal_precomputed_subtype_contains(ptr, ptr addrspace(1))
declare i1 @_bal_string_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
