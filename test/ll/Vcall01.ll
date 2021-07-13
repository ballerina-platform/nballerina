@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i64
  %_21 = alloca i8
  %_22 = load i8*, i8** @_bal_stack_guard
  %_23 = icmp ult i8* %_21, %_22
  br i1 %_23, label %L3, label %L1
L1:
  %_24 = call i64 @_B_foo ()
  store i64 %_24, i64* %_0
  %_25 = call i64 @_B_bar ()
  store i64 %_25, i64* %_1
  %_26 = load i64, i64* %_0
  %_27 = load i64, i64* %_1
  %_28 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_26, i64 %_27)
  %_29 = extractvalue {i64, i1} %_28, 1
  br i1 %_29, label %L5, label %L4
L2:
  %_73 = load i64, i64* %_20
  call void @_bal_panic (i64 %_73)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_30 = extractvalue {i64, i1} %_28, 0
  store i64 %_30, i64* %_2
  %_31 = load i64, i64* %_2
  %_32 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_31)
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_33 = call i64 @_B_foo ()
  store i64 %_33, i64* %_4
  %_34 = call i64 @_B_bar ()
  store i64 %_34, i64* %_5
  %_35 = load i64, i64* %_4
  %_36 = load i64, i64* %_5
  %_37 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_35, i64 %_36)
  %_38 = extractvalue {i64, i1} %_37, 1
  br i1 %_38, label %L7, label %L6
L5:
  store i64 1025, i64* %_20
  br label %L2
L6:
  %_39 = extractvalue {i64, i1} %_37, 0
  store i64 %_39, i64* %_6
  %_40 = load i64, i64* %_6
  %_41 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_40)
  call void @_Bio__println (i8 addrspace (1)* %_41)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_42 = call i64 @_B_foo ()
  store i64 %_42, i64* %_8
  %_43 = call i64 @_B_bar ()
  store i64 %_43, i64* %_9
  %_44 = load i64, i64* %_8
  %_45 = load i64, i64* %_9
  %_46 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_44, i64 %_45)
  %_47 = extractvalue {i64, i1} %_46, 1
  br i1 %_47, label %L9, label %L8
L7:
  store i64 1281, i64* %_20
  br label %L2
L8:
  %_48 = extractvalue {i64, i1} %_46, 0
  store i64 %_48, i64* %_10
  %_49 = load i64, i64* %_10
  %_50 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_49)
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_51 = call i64 @_B_foo ()
  store i64 %_51, i64* %_12
  %_52 = call i64 @_B_bar ()
  store i64 %_52, i64* %_13
  %_53 = load i64, i64* %_12
  %_54 = load i64, i64* %_13
  %_55 = icmp eq i64 %_54, 0
  br i1 %_55, label %L10, label %L11
L9:
  store i64 1537, i64* %_20
  br label %L2
L10:
  store i64 1794, i64* %_20
  br label %L2
L11:
  %_56 = icmp eq i64 %_53, -9223372036854775808
  %_57 = icmp eq i64 %_54, -1
  %_58 = and i1 %_56, %_57
  br i1 %_58, label %L13, label %L12
L12:
  %_59 = sdiv i64 %_53, %_54
  store i64 %_59, i64* %_14
  %_60 = load i64, i64* %_14
  %_61 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_60)
  call void @_Bio__println (i8 addrspace (1)* %_61)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_62 = call i64 @_B_foo ()
  store i64 %_62, i64* %_16
  %_63 = call i64 @_B_bar ()
  store i64 %_63, i64* %_17
  %_64 = load i64, i64* %_16
  %_65 = load i64, i64* %_17
  %_66 = icmp eq i64 %_65, 0
  br i1 %_66, label %L14, label %L15
L13:
  store i64 1793, i64* %_20
  br label %L2
L14:
  store i64 2050, i64* %_20
  br label %L2
L15:
  %_67 = icmp eq i64 %_64, -9223372036854775808
  %_68 = icmp eq i64 %_65, -1
  %_69 = and i1 %_67, %_68
  br i1 %_69, label %L17, label %L16
L16:
  %_70 = srem i64 %_64, %_65
  store i64 %_70, i64* %_18
  br label %L18
L17:
  store i64 0, i64* %_18
  br label %L18
L18:
  %_71 = load i64, i64* %_18
  %_72 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_71)
  call void @_Bio__println (i8 addrspace (1)* %_72)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_19
  ret void
}
define internal i64 @_B_foo () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 105
L2:
  call void @_bal_panic (i64 2820)
  unreachable
}
define internal i64 @_B_bar () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 2
L2:
  call void @_bal_panic (i64 3844)
  unreachable
}
