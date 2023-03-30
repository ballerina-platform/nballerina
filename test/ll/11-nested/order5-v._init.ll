%BasicSubtype = type {ptr}
%FillerDesc = type {ptr}
%Type0 = type {ptr, i32}
%Type1 = type {ptr, i32}
%Type2 = type {ptr, i32}
@_Bi04root0 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 5, ptr bitcast(ptr @_bal_boolean_false_filler_desc to ptr), [0 x i64] []}
@_bal_boolean_false_filler_desc = external global %FillerDesc
@_Bi04root1 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 1, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member0 to i64), ptr bitcast(ptr @.fillerDesc1 to ptr), [0 x i64] []}
@.subtype0 = internal constant %Type0 {ptr @_bal_array_subtype_contains, i32 2}, align 8
@.member0 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype0 to ptr)]}
@.fillerDesc1 = global {ptr, ptr} {ptr @_bal_list_filler_create, ptr bitcast(ptr @_Bi04root0 to ptr)}
@_Bi04root2 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 2, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member1 to i64), ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@.member1 = internal constant {i32, i32, [1 x ptr]} {i32 1, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype0 to ptr)]}
@_bal_nil_filler_desc = external global %FillerDesc
@_Bi04root3 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 3, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 262143, ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@_Bi04root4 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 4, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 65, ptr bitcast(ptr @_bal_string_empty_filler_desc to ptr), [0 x i64] []}
@_bal_string_empty_filler_desc = external global %FillerDesc
@_Bi04root5 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 5, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member2 to i64), ptr bitcast(ptr @.fillerDesc2 to ptr), [0 x i64] []}
@.subtype1 = internal constant %Type1 {ptr @_bal_array_subtype_contains, i32 32}, align 8
@.member2 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype1 to ptr)]}
@.fillerDesc2 = global {ptr, ptr} {ptr @_bal_list_filler_create, ptr bitcast(ptr @_Bi04root4 to ptr)}
@_Bi04root6 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 6, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member3 to i64), ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@.member3 = internal constant {i32, i32, [1 x ptr]} {i32 1, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype1 to ptr)]}
@_Bi04root7 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 7, i32 0, i64 0, ptr @_bal_list_float_array_get_tagged, ptr @_bal_list_float_array_set_tagged, ptr @_bal_list_float_array_set_tagged, ptr null, ptr @_bal_list_float_array_set_int, ptr @_bal_list_float_array_set_int, ptr @_bal_list_float_array_get_float, ptr @_bal_list_float_array_set_float, ptr @_bal_list_float_array_set_float, i64 17, ptr bitcast(ptr @_bal_float_zero_filler_desc to ptr), [0 x i64] []}
@_bal_float_zero_filler_desc = external global %FillerDesc
@_Bi04root8 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 8, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member4 to i64), ptr bitcast(ptr @.fillerDesc3 to ptr), [0 x i64] []}
@.subtype2 = internal constant %Type2 {ptr @_bal_array_subtype_contains, i32 8}, align 8
@.member4 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype2 to ptr)]}
@.fillerDesc3 = global {ptr, ptr} {ptr @_bal_list_filler_create, ptr bitcast(ptr @_Bi04root7 to ptr)}
declare ptr addrspace(1) @_bal_list_generic_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_inexact_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_generic_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_float(ptr addrspace(1), i64, double)
declare i64 @_bal_list_generic_inexact_set_float(ptr addrspace(1), i64, double)
declare ptr addrspace(1) @_bal_list_filler_create(ptr, ptr)
declare ptr addrspace(1) @_bal_list_float_array_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_float_array_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_float_array_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_float_array_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_float_array_set_float(ptr addrspace(1), i64, double)
declare i1 @_bal_array_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
