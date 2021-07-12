@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8 addrspace (1)*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i64
  %_34 = alloca i8 addrspace (1)*
  %_35 = alloca i8
  %_36 = load i8*, i8** @_bal_stack_guard
  %_37 = icmp ult i8* %_35, %_36
  br i1 %_37, label %L2, label %L1
L1:
  %_38 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_38, i64* %_0
  %_39 = load i64, i64* %_0
  %_40 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_39)
  call void @_Bio__println (i8 addrspace (1)* %_40)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_41 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_41, i64* %_2
  %_42 = load i64, i64* %_2
  %_43 = call i64 @_B_add (i64 %_42, i64 11)
  store i64 %_43, i64* %_3
  %_44 = load i64, i64* %_3
  %_45 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_44)
  call void @_Bio__println (i8 addrspace (1)* %_45)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_46 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_46, i64* %_5
  %_47 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_47, i64* %_6
  %_48 = load i64, i64* %_5
  %_49 = load i64, i64* %_6
  %_50 = call i64 @_B_add (i64 %_48, i64 %_49)
  store i64 %_50, i64* %_7
  %_51 = load i64, i64* %_7
  %_52 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_51)
  call void @_Bio__println (i8 addrspace (1)* %_52)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_53 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_53, i64* %_9
  %_54 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_54, i64* %_10
  %_55 = load i64, i64* %_9
  %_56 = load i64, i64* %_10
  %_57 = call i64 @_B_add (i64 %_55, i64 %_56)
  store i64 %_57, i64* %_11
  %_58 = load i64, i64* %_11
  %_59 = call i64 @_B_add (i64 %_58, i64 12)
  store i64 %_59, i64* %_12
  %_60 = load i64, i64* %_12
  %_61 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_60)
  call void @_Bio__println (i8 addrspace (1)* %_61)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_62 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_62, i64* %_14
  %_63 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_63, i64* %_15
  %_64 = load i64, i64* %_14
  %_65 = load i64, i64* %_15
  %_66 = call i64 @_B_add (i64 %_64, i64 %_65)
  store i64 %_66, i64* %_16
  %_67 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_67, i64* %_17
  %_68 = load i64, i64* %_16
  %_69 = load i64, i64* %_17
  %_70 = call i64 @_B_add (i64 %_68, i64 %_69)
  store i64 %_70, i64* %_18
  %_71 = load i64, i64* %_18
  %_72 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_71)
  call void @_Bio__println (i8 addrspace (1)* %_72)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_19
  %_73 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_73, i64* %_20
  %_74 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_74, i64* %_21
  %_75 = load i64, i64* %_20
  %_76 = load i64, i64* %_21
  %_77 = call i64 @_B_add (i64 %_75, i64 %_76)
  store i64 %_77, i64* %_22
  %_78 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_78, i64* %_23
  %_79 = load i64, i64* %_23
  %_80 = call i64 @_B_add (i64 %_79, i64 5)
  store i64 %_80, i64* %_24
  %_81 = load i64, i64* %_22
  %_82 = load i64, i64* %_24
  %_83 = call i64 @_B_add (i64 %_81, i64 %_82)
  store i64 %_83, i64* %_25
  %_84 = load i64, i64* %_25
  %_85 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_84)
  call void @_Bio__println (i8 addrspace (1)* %_85)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_86 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_86, i64* %_27
  %_87 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_87, i64* %_28
  %_88 = load i64, i64* %_27
  %_89 = load i64, i64* %_28
  %_90 = call i64 @_B_add (i64 %_88, i64 %_89)
  store i64 %_90, i64* %_29
  %_91 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_91, i64* %_30
  %_92 = call i64 @_B_add (i64 23, i64 50)
  store i64 %_92, i64* %_31
  %_93 = load i64, i64* %_30
  %_94 = load i64, i64* %_31
  %_95 = call i64 @_B_add (i64 %_93, i64 %_94)
  store i64 %_95, i64* %_32
  %_96 = load i64, i64* %_29
  %_97 = load i64, i64* %_32
  %_98 = call i64 @_B_add (i64 %_96, i64 %_97)
  store i64 %_98, i64* %_33
  %_99 = load i64, i64* %_33
  %_100 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_99)
  call void @_Bio__println (i8 addrspace (1)* %_100)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_34
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 3076)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 3329, i64* %_3
  br label %L2
}
