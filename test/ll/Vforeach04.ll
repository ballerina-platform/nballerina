@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L8, label %L1
L1:
  store i64 6, i64* %i
  br label %L2
L2:
  %_6 = load i64, i64* %i
  %_7 = icmp slt i64 %_6, 10
  store i1 %_7, i1* %_0
  %_8 = load i1, i1* %_0
  br i1 %_8, label %L5, label %L3
L3:
  ret void
L4:
  %_9 = load i64, i64* %i
  %_10 = add nsw i64 %_9, 1
  store i64 %_10, i64* %i
  br label %L2
L5:
  %_11 = load i64, i64* %i
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_11)
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_13 = load i64, i64* %i
  %_14 = icmp eq i64 %_13, 8
  store i1 %_14, i1* %_2
  %_15 = load i1, i1* %_2
  br i1 %_15, label %L6, label %L7
L6:
  br label %L4
L7:
  br label %L4
L8:
  call void @_bal_panic (i64 772)
  unreachable
}
