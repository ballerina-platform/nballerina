%BasicSubtype = type {ptr}
%Type0 = type {ptr, i32, i32, [1 x ptr]}
%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 ptrtoint(ptr @.member0 to i64), ptr bitcast(ptr @.fillerDesc1 to ptr), [0 x i64] []}
@.subtype0 = internal constant %Type0 {ptr @_bal_decimal_subtype_contains, i32 1, i32 1, [1 x ptr] [ptr bitcast(ptr @.dec2 to ptr)]}, align 8
@.member0 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 16, [1 x ptr] [ptr bitcast(ptr @.subtype0 to ptr)]}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 19, i64 2452139628359057408], align 8
@.fillerDesc1 = global {ptr, ptr} {ptr @_bal_decimal_filler_create, ptr bitcast(ptr @.dec0 to ptr)}
@_Bi04root1 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 1, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 262143, ptr bitcast(ptr @_bal_nil_filler_desc to ptr), [0 x i64] []}
@_bal_nil_filler_desc = external global %FillerDesc
@_Bi04root2 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 2, i32 0, i64 0, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 33, ptr bitcast(ptr bitcast(ptr @.fillerDesc2 to ptr) to ptr), [0 x i64] []}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.fillerDesc2 = global {ptr, ptr} {ptr @_bal_decimal_filler_create, ptr bitcast(ptr @.dec1 to ptr)}
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 19, i64 2452139628359057408], align 8
declare ptr addrspace(1) @_bal_list_generic_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_inexact_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_generic_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_float(ptr addrspace(1), i64, double)
declare i64 @_bal_list_generic_inexact_set_float(ptr addrspace(1), i64, double)
declare ptr addrspace(1) @_bal_decimal_filler_create(ptr, ptr)
declare i1 @_bal_decimal_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
