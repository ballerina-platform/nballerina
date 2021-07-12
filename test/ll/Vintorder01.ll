@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i1
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i1
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i1
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i1
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i1
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i64
  %_16 = alloca i1
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i8
  %_20 = load i8*, i8** @_bal_stack_guard
  %_21 = icmp ult i8* %_19, %_20
  br i1 %_21, label %L3, label %L1
L1:
  %_22 = call i1 @_B_gte (i64 1, i64 2)
  store i1 %_22, i1* %_0
  %_23 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_24 = call i1 @_B_gte (i64 2, i64 1)
  store i1 %_24, i1* %_2
  %_25 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_25)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_26 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L5, label %L4
L2:
  %_46 = load i64, i64* %_18
  call void @_bal_panic (i64 %_46)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_4
  %_29 = load i64, i64* %_4
  %_30 = call i1 @_B_gte (i64 2, i64 %_29)
  store i1 %_30, i1* %_5
  %_31 = load i1, i1* %_5
  call void @_B_printBoolean (i1 %_31)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_32 = call i1 @_B_gte (i64 42, i64 42)
  store i1 %_32, i1* %_7
  %_33 = load i1, i1* %_7
  call void @_B_printBoolean (i1 %_33)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_34 = call i1 @_B_lte (i64 1, i64 2)
  store i1 %_34, i1* %_9
  %_35 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_35)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_36 = call i1 @_B_lte (i64 0, i64 0)
  store i1 %_36, i1* %_11
  %_37 = load i1, i1* %_11
  call void @_B_printBoolean (i1 %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_38 = call i1 @_B_lte (i64 2, i64 1)
  store i1 %_38, i1* %_13
  %_39 = load i1, i1* %_13
  call void @_B_printBoolean (i1 %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_40 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_41 = extractvalue {i64, i1} %_40, 1
  br i1 %_41, label %L7, label %L6
L5:
  store i64 1537, i64* %_18
  br label %L2
L6:
  %_42 = extractvalue {i64, i1} %_40, 0
  store i64 %_42, i64* %_15
  %_43 = load i64, i64* %_15
  %_44 = call i1 @_B_lte (i64 %_43, i64 17)
  store i1 %_44, i1* %_16
  %_45 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_45)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  ret void
L7:
  store i64 2817, i64* %_18
  br label %L2
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_6 = load i1, i1* %b
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3588)
  unreachable
}
define internal i1 @_B_lte (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_6 = load i64, i64* %x
  %_7 = load i64, i64* %y
  %_8 = icmp sle i64 %_6, %_7
  store i1 %_8, i1* %_2
  %_9 = load i1, i1* %_2
  ret i1 %_9
L2:
  call void @_bal_panic (i64 5892)
  unreachable
}
define internal i1 @_B_gte (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_6 = load i64, i64* %x
  %_7 = load i64, i64* %y
  %_8 = icmp sge i64 %_6, %_7
  store i1 %_8, i1* %_2
  %_9 = load i1, i1* %_2
  ret i1 %_9
L2:
  call void @_bal_panic (i64 6916)
  unreachable
}
