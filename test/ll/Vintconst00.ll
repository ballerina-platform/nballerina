@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 42)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_15 = load i64, i64* %_4
  call void @_bal_panic (i64 %_15)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  %_13 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_12)
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L5:
  store i64 1281, i64* %_4
  br label %L2
}
