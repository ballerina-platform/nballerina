@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_a (i64 3, i64 9)
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_6)
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal i64 @_B_a (i64 %_0, i64 %_1) {
  %m = alloca i64
  %n = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L7, label %L1
L1:
  store i64 %_0, i64* %m
  store i64 %_1, i64* %n
  %_15 = load i64, i64* %m
  %_16 = icmp eq i64 %_15, 0
  store i1 %_16, i1* %_2
  %_17 = load i1, i1* %_2
  br i1 %_17, label %L2, label %L3
L2:
  %_18 = load i64, i64* %n
  %_19 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_18, i64 1)
  %_20 = extractvalue {i64, i1} %_19, 1
  br i1 %_20, label %L9, label %L8
L3:
  %_23 = load i64, i64* %n
  %_24 = icmp eq i64 %_23, 0
  store i1 %_24, i1* %_4
  %_25 = load i1, i1* %_4
  br i1 %_25, label %L4, label %L5
L4:
  %_26 = load i64, i64* %m
  %_27 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_26, i64 1)
  %_28 = extractvalue {i64, i1} %_27, 1
  br i1 %_28, label %L11, label %L10
L5:
  %_33 = load i64, i64* %m
  %_34 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_33, i64 1)
  %_35 = extractvalue {i64, i1} %_34, 1
  br i1 %_35, label %L13, label %L12
L6:
  %_48 = load i64, i64* %_11
  call void @_bal_panic (i64 %_48)
  unreachable
L7:
  call void @_bal_panic (i64 1284)
  unreachable
L8:
  %_21 = extractvalue {i64, i1} %_19, 0
  store i64 %_21, i64* %_3
  %_22 = load i64, i64* %_3
  ret i64 %_22
L9:
  store i64 1793, i64* %_11
  br label %L6
L10:
  %_29 = extractvalue {i64, i1} %_27, 0
  store i64 %_29, i64* %_5
  %_30 = load i64, i64* %_5
  %_31 = call i64 @_B_a (i64 %_30, i64 1)
  store i64 %_31, i64* %_6
  %_32 = load i64, i64* %_6
  ret i64 %_32
L11:
  store i64 2561, i64* %_11
  br label %L6
L12:
  %_36 = extractvalue {i64, i1} %_34, 0
  store i64 %_36, i64* %_7
  %_37 = load i64, i64* %n
  %_38 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_37, i64 1)
  %_39 = extractvalue {i64, i1} %_38, 1
  br i1 %_39, label %L15, label %L14
L13:
  store i64 3329, i64* %_11
  br label %L6
L14:
  %_40 = extractvalue {i64, i1} %_38, 0
  store i64 %_40, i64* %_8
  %_41 = load i64, i64* %m
  %_42 = load i64, i64* %_8
  %_43 = call i64 @_B_a (i64 %_41, i64 %_42)
  store i64 %_43, i64* %_9
  %_44 = load i64, i64* %_7
  %_45 = load i64, i64* %_9
  %_46 = call i64 @_B_a (i64 %_44, i64 %_45)
  store i64 %_46, i64* %_10
  %_47 = load i64, i64* %_10
  ret i64 %_47
L15:
  store i64 3329, i64* %_11
  br label %L6
}
