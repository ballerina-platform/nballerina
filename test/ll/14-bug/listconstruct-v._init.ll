%BasicSubtype = type {ptr}
%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [1 x i64]} {i32 0, i32 1, i64 3, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 1, ptr null, [1 x i64] [i64 9]}
@_Bi04root1 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 1, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 262143, ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@_bal_nil_filler_desc = external global %FillerDesc
@_Bi04root3 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [1 x i64]} {i32 2, i32 1, i64 2, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 1, ptr null, [1 x i64] [i64 9]}
@_Bi04root5 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 3, i32 0, i64 0, ptr @_bal_list_int_array_get_tagged, ptr @_bal_list_int_array_set_tagged, ptr @_bal_list_int_array_set_tagged, ptr @_bal_list_int_array_get_int, ptr @_bal_list_int_array_set_int, ptr @_bal_list_int_array_set_int, ptr null, ptr @_bal_list_int_array_set_float, ptr @_bal_list_int_array_set_float, i64 9, ptr bitcast(ptr @_bal_int_zero_filler_desc to ptr), [0 x i64] []}
@_bal_int_zero_filler_desc = external global %FillerDesc
@.subtype0 = internal constant {ptr, i32, [1 x i32]} {ptr @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 0]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype0 to ptr)]}
@.subtype1 = internal constant {ptr, i32, [0 x i32]} {ptr @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@_Bt04root2 = constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype1 to ptr)]}
@.subtype2 = internal constant {ptr, i32, [1 x i32]} {ptr @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 2]}, align 8
@_Bt04root3 = constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype2 to ptr)]}
@.subtype3 = internal constant {ptr, i32, [0 x i32]} {ptr @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@_Bt04root4 = constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype3 to ptr)]}
@.subtype4 = internal constant {ptr, i32, [0 x i32]} {ptr @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@_Bt04root6 = constant {i32, i32, [1 x ptr]} {i32 0, i32 4096, [1 x ptr] [ptr bitcast(ptr @.subtype4 to ptr)]}
declare ptr addrspace(1) @_bal_list_generic_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_inexact_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_generic_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_float(ptr addrspace(1), i64, double)
declare i64 @_bal_list_generic_inexact_set_float(ptr addrspace(1), i64, double)
declare ptr addrspace(1) @_bal_list_int_array_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_int_array_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_int_array_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_int_array_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_int_array_set_float(ptr addrspace(1), i64, double)
declare i1 @_bal_precomputed_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
