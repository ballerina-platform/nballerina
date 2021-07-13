@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L10, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_9 = load i64, i64* %i
  %_10 = icmp sge i64 %_9, 0
  store i1 %_10, i1* %_0
  %_11 = load i1, i1* %_0
  br i1 %_11, label %L4, label %L3
L3:
  ret void
L4:
  %_12 = load i64, i64* %i
  %_13 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_12)
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_14 = load i64, i64* %i
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_14, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L12, label %L11
L5:
  %_22 = load i64, i64* %i
  %_23 = icmp eq i64 %_22, 4
  store i1 %_23, i1* %_4
  %_24 = load i1, i1* %_4
  br i1 %_24, label %L6, label %L7
L6:
  br label %L3
L7:
  br label %L8
L8:
  br label %L2
L9:
  %_25 = load i64, i64* %_5
  call void @_bal_panic (i64 %_25)
  unreachable
L10:
  call void @_bal_panic (i64 772)
  unreachable
L11:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_2
  %_18 = load i64, i64* %_2
  store i64 %_18, i64* %i
  %_19 = load i64, i64* %i
  %_20 = icmp sge i64 %_19, 1
  store i1 %_20, i1* %_3
  %_21 = load i1, i1* %_3
  br i1 %_21, label %L5, label %L8
L12:
  store i64 2817, i64* %_5
  br label %L9
}
