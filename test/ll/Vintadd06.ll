@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i64
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L3, label %L1
L1:
  %_18 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 8, i64 5)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L5, label %L4
L2:
  %_62 = load i64, i64* %_14
  call void @_bal_panic (i64 %_62)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_0
  %_21 = load i64, i64* %_0
  %_22 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_21, i64 11)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L7, label %L6
L5:
  store i64 1025, i64* %_14
  br label %L2
L6:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_1
  %_25 = load i64, i64* %_1
  %_26 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_25)
  call void @_Bio__println (i8 addrspace (1)* %_26)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_27 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 11)
  %_28 = extractvalue {i64, i1} %_27, 1
  br i1 %_28, label %L9, label %L8
L7:
  store i64 1025, i64* %_14
  br label %L2
L8:
  %_29 = extractvalue {i64, i1} %_27, 0
  store i64 %_29, i64* %_3
  %_30 = load i64, i64* %_3
  %_31 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_30, i64 5)
  %_32 = extractvalue {i64, i1} %_31, 1
  br i1 %_32, label %L11, label %L10
L9:
  store i64 1281, i64* %_14
  br label %L2
L10:
  %_33 = extractvalue {i64, i1} %_31, 0
  store i64 %_33, i64* %_4
  %_34 = load i64, i64* %_4
  %_35 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_34)
  call void @_Bio__println (i8 addrspace (1)* %_35)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_36 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_37 = extractvalue {i64, i1} %_36, 1
  br i1 %_37, label %L13, label %L12
L11:
  store i64 1281, i64* %_14
  br label %L2
L12:
  %_38 = extractvalue {i64, i1} %_36, 0
  store i64 %_38, i64* %_6
  %_39 = load i64, i64* %_6
  %_40 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_39, i64 5)
  %_41 = extractvalue {i64, i1} %_40, 1
  br i1 %_41, label %L15, label %L14
L13:
  store i64 1537, i64* %_14
  br label %L2
L14:
  %_42 = extractvalue {i64, i1} %_40, 0
  store i64 %_42, i64* %_7
  %_43 = load i64, i64* %_7
  %_44 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_43, i64 9)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L17, label %L16
L15:
  store i64 1537, i64* %_14
  br label %L2
L16:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_8
  %_47 = load i64, i64* %_8
  %_48 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_47)
  call void @_Bio__println (i8 addrspace (1)* %_48)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_49 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 3, i64 5)
  %_50 = extractvalue {i64, i1} %_49, 1
  br i1 %_50, label %L19, label %L18
L17:
  store i64 1537, i64* %_14
  br label %L2
L18:
  %_51 = extractvalue {i64, i1} %_49, 0
  store i64 %_51, i64* %_10
  %_52 = load i64, i64* %_10
  %_53 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_52, i64 9)
  %_54 = extractvalue {i64, i1} %_53, 1
  br i1 %_54, label %L21, label %L20
L19:
  store i64 1793, i64* %_14
  br label %L2
L20:
  %_55 = extractvalue {i64, i1} %_53, 0
  store i64 %_55, i64* %_11
  %_56 = load i64, i64* %_11
  %_57 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_56, i64 4)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L23, label %L22
L21:
  store i64 1793, i64* %_14
  br label %L2
L22:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_12
  %_60 = load i64, i64* %_12
  %_61 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_60)
  call void @_Bio__println (i8 addrspace (1)* %_61)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  ret void
L23:
  store i64 1793, i64* %_14
  br label %L2
}
