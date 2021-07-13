@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare void @_Bio__println (i8 addrspace (1)*)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %x = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i1
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i1
  %b = alloca i1
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i8
  %_18 = load i8*, i8** @_bal_stack_guard
  %_19 = icmp ult i8* %_17, %_18
  br i1 %_19, label %L3, label %L1
L1:
  %_20 = call i8 addrspace (1)* @_B_ifElse (i1 1, i64 17, i1 0)
  store i8 addrspace (1)* %_20, i8 addrspace (1)** %_0
  %_21 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  call void @_Bio__println (i8 addrspace (1)* %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_22 = call i8 addrspace (1)* @_B_ifElse (i1 0, i64 32, i1 1)
  store i8 addrspace (1)* %_22, i8 addrspace (1)** %_2
  %_23 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_24 = call i8 addrspace (1)* @_B_ifElse (i1 1, i64 32, i1 1)
  store i8 addrspace (1)* %_24, i8 addrspace (1)** %_4
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_26 = addrspacecast i8 addrspace (1)* %_25 to i8*
  %_27 = ptrtoint i8* %_26 to i64
  %_28 = and i64 %_27, 2233785415175766016
  %_29 = icmp eq i64 %_28, 504403158265495552
  br i1 %_29, label %L4, label %L5
L2:
  %_70 = load i64, i64* %_16
  call void @_bal_panic (i64 %_70)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_30 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_25)
  store i64 %_30, i64* %_5
  %_31 = load i64, i64* %_5
  %_32 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_31)
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_33 = call i8 addrspace (1)* @_B_ifElse (i1 1, i64 42, i1 0)
  store i8 addrspace (1)* %_33, i8 addrspace (1)** %_7
  %_34 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_35 = addrspacecast i8 addrspace (1)* %_34 to i8*
  %_36 = ptrtoint i8* %_35 to i64
  %_37 = and i64 %_36, 2233785415175766016
  %_38 = icmp eq i64 %_37, 504403158265495552
  br i1 %_38, label %L6, label %L7
L5:
  store i64 1539, i64* %_16
  br label %L2
L6:
  %_39 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_34)
  store i64 %_39, i64* %_8
  %_40 = load i64, i64* %_8
  store i64 %_40, i64* %x
  %_41 = load i64, i64* %x
  %_42 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_41)
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_43 = call i8 addrspace (1)* @_B_ifElse (i1 0, i64 21, i1 1)
  store i8 addrspace (1)* %_43, i8 addrspace (1)** %_10
  %_44 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_45 = addrspacecast i8 addrspace (1)* %_44 to i8*
  %_46 = ptrtoint i8* %_45 to i64
  %_47 = and i64 %_46, 2233785415175766016
  %_48 = icmp eq i64 %_47, 72057594037927936
  br i1 %_48, label %L8, label %L9
L7:
  store i64 1795, i64* %_16
  br label %L2
L8:
  %_49 = addrspacecast i8 addrspace (1)* %_44 to i8*
  %_50 = ptrtoint i8* %_49 to i64
  %_51 = trunc i64 %_50 to i1
  store i1 %_51, i1* %_11
  %_52 = load i1, i1* %_11
  %_53 = zext i1 %_52 to i64
  %_54 = or i64 %_53, 72057594037927936
  %_55 = getelementptr i8, i8 addrspace (1)* null, i64 %_54
  call void @_Bio__println (i8 addrspace (1)* %_55)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_56 = call i8 addrspace (1)* @_B_ifElse (i1 0, i64 21, i1 0)
  store i8 addrspace (1)* %_56, i8 addrspace (1)** %_13
  %_57 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_58 = addrspacecast i8 addrspace (1)* %_57 to i8*
  %_59 = ptrtoint i8* %_58 to i64
  %_60 = and i64 %_59, 2233785415175766016
  %_61 = icmp eq i64 %_60, 72057594037927936
  br i1 %_61, label %L10, label %L11
L9:
  store i64 2307, i64* %_16
  br label %L2
L10:
  %_62 = addrspacecast i8 addrspace (1)* %_57 to i8*
  %_63 = ptrtoint i8* %_62 to i64
  %_64 = trunc i64 %_63 to i1
  store i1 %_64, i1* %_14
  %_65 = load i1, i1* %_14
  store i1 %_65, i1* %b
  %_66 = load i1, i1* %b
  %_67 = zext i1 %_66 to i64
  %_68 = or i64 %_67, 72057594037927936
  %_69 = getelementptr i8, i8 addrspace (1)* null, i64 %_68
  call void @_Bio__println (i8 addrspace (1)* %_69)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  ret void
L11:
  store i64 2563, i64* %_16
  br label %L2
}
define internal i8 addrspace (1)* @_B_ifElse (i1 %_0, i64 %_1, i1 %_2) {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L4, label %L1
L1:
  store i1 %_0, i1* %t
  store i64 %_1, i64* %n
  store i1 %_2, i1* %b
  %_6 = load i1, i1* %t
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = load i64, i64* %n
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_7)
  ret i8 addrspace (1)* %_8
L3:
  %_9 = load i1, i1* %b
  %_10 = zext i1 %_9 to i64
  %_11 = or i64 %_10, 72057594037927936
  %_12 = getelementptr i8, i8 addrspace (1)* null, i64 %_11
  ret i8 addrspace (1)* %_12
L4:
  call void @_bal_panic (i64 3588)
  unreachable
}
