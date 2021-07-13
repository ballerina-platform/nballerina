@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %i = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_loop ()
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  store i64 %_6, i64* %i
  %_7 = load i64, i64* %i
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_7)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define i64 @_B_loop () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L7, label %L1
L1:
  store i64 5, i64* %i
  br label %L2
L2:
  %_6 = load i64, i64* %i
  %_7 = icmp slt i64 %_6, 10
  store i1 %_7, i1* %_0
  %_8 = load i1, i1* %_0
  br i1 %_8, label %L5, label %L3
L3:
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L9, label %L8
  %_13 = load i64, i64* %i
  %_14 = add nsw i64 %_13, 1
  store i64 %_14, i64* %i
  br label %L2
L5:
  %_15 = load i64, i64* %i
  ret i64 %_15
L6:
  %_16 = load i64, i64* %_2
  call void @_bal_panic (i64 %_16)
  unreachable
L7:
  call void @_bal_panic (i64 1796)
  unreachable
L8:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  ret i64 %_12
L9:
  store i64 2817, i64* %_2
  br label %L6
}
