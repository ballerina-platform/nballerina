@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %x = alloca i64
  %_0 = alloca i64
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i1
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i1
  %_7 = alloca i1
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i64
  %_14 = alloca i8
  %_15 = load i8*, i8** @_bal_stack_guard
  %_16 = icmp ult i8* %_14, %_15
  br i1 %_16, label %L3, label %L1
L1:
  store i64 1, i64* %x
  %_17 = load i64, i64* %x
  %_18 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_17, i64 3)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L5, label %L4
L2:
  %_59 = load i64, i64* %_13
  call void @_bal_panic (i64 %_59)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_0
  %_21 = load i64, i64* %_0
  %_22 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_21)
  store i8 addrspace (1)* %_22, i8 addrspace (1)** %v
  %_23 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_24 = load i64, i64* %x
  %_25 = icmp eq i64 %_24, 1
  store i1 %_25, i1* %_2
  %_26 = load i1, i1* %_2
  %_27 = zext i1 %_26 to i64
  %_28 = or i64 %_27, 72057594037927936
  %_29 = getelementptr i8, i8 addrspace (1)* null, i64 %_28
  store i8 addrspace (1)* %_29, i8 addrspace (1)** %v
  %_30 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_30)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_31 = load i64, i64* %x
  %_32 = icmp sgt i64 %_31, 2
  store i1 %_32, i1* %_4
  %_33 = load i1, i1* %_4
  %_34 = zext i1 %_33 to i64
  %_35 = or i64 %_34, 72057594037927936
  %_36 = getelementptr i8, i8 addrspace (1)* null, i64 %_35
  store i8 addrspace (1)* %_36, i8 addrspace (1)** %v
  %_37 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_38 = load i64, i64* %x
  %_39 = icmp sgt i64 %_38, 2
  store i1 %_39, i1* %_6
  %_40 = load i1, i1* %_6
  %_41 = xor i1 1, %_40
  store i1 %_41, i1* %_7
  %_42 = load i1, i1* %_7
  %_43 = zext i1 %_42 to i64
  %_44 = or i64 %_43, 72057594037927936
  %_45 = getelementptr i8, i8 addrspace (1)* null, i64 %_44
  store i8 addrspace (1)* %_45, i8 addrspace (1)** %v
  %_46 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_46)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_47 = load i64, i64* %x
  %_48 = icmp sge i64 %_47, 1
  store i1 %_48, i1* %_9
  %_49 = load i1, i1* %_9
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8 addrspace (1)* null, i64 %_51
  call void @_Bio__println (i8 addrspace (1)* %_52)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_53 = load i64, i64* %x
  %_54 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_53, i64 2)
  %_55 = extractvalue {i64, i1} %_54, 1
  br i1 %_55, label %L7, label %L6
L5:
  store i64 1025, i64* %_13
  br label %L2
L6:
  %_56 = extractvalue {i64, i1} %_54, 0
  store i64 %_56, i64* %_11
  %_57 = load i64, i64* %_11
  %_58 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_57)
  call void @_Bio__println (i8 addrspace (1)* %_58)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  ret void
L7:
  store i64 3329, i64* %_13
  br label %L2
}
