@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L8, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp sge i64 %_8, 0
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
  br i1 %_10, label %L4, label %L3
L3:
  ret void
L4:
  %_11 = load i64, i64* %i
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_11)
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_13 = load i64, i64* %i
  %_14 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_13, i64 1)
  %_15 = extractvalue {i64, i1} %_14, 1
  br i1 %_15, label %L10, label %L9
L5:
  br label %L3
L6:
  br label %L2
L7:
  %_21 = load i64, i64* %_4
  call void @_bal_panic (i64 %_21)
  unreachable
L8:
  call void @_bal_panic (i64 772)
  unreachable
L9:
  %_16 = extractvalue {i64, i1} %_14, 0
  store i64 %_16, i64* %_2
  %_17 = load i64, i64* %_2
  store i64 %_17, i64* %i
  %_18 = load i64, i64* %i
  %_19 = icmp eq i64 %_18, 2
  store i1 %_19, i1* %_3
  %_20 = load i1, i1* %_3
  br i1 %_20, label %L5, label %L6
L10:
  store i64 2305, i64* %_4
  br label %L7
}
