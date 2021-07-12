@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i64
  %sum = alloca i64
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L9, label %L1
L1:
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_16 = bitcast i8 addrspace (1)* %_15 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_17 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_16, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_17
  %_18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_16, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_18
  %_19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_16, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_19
  %_20 = getelementptr i8, i8 addrspace (1)* %_15, i64 1297036692682702848
  store i8 addrspace (1)* %_20, i8 addrspace (1)** %_0
  %_21 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_21, i8 addrspace (1)** %v
  store i64 0, i64* %i
  br label %L2
L2:
  %_22 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1000, i64 1000)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L11, label %L10
L3:
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_30 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1001)
  %_31 = call i64 @_bal_list_set (i8 addrspace (1)* %_29, i64 123000, i8 addrspace (1)* %_30)
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %L12, label %L13
L4:
  %_34 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_35 = load i64, i64* %i
  %_36 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_37 = call i64 @_bal_list_set (i8 addrspace (1)* %_34, i64 %_35, i8 addrspace (1)* %_36)
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %L14, label %L15
L5:
  %_45 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_46 = call i64 @_Barray__length (i8 addrspace (1)* %_45)
  store i64 %_46, i64* %_5
  %_47 = load i64, i64* %i
  %_48 = load i64, i64* %_5
  %_49 = icmp slt i64 %_47, %_48
  store i1 %_49, i1* %_4
  %_50 = load i1, i1* %_4
  br i1 %_50, label %L7, label %L6
L6:
  %_51 = load i64, i64* %sum
  %_52 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_51)
  call void @_Bio__println (i8 addrspace (1)* %_52)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  ret void
L7:
  %_53 = load i64, i64* %i
  %_54 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_55 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_54, i64 72057594037927935)
  %_56 = bitcast i8 addrspace (1)* %_55 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_57 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_56, i64 0, i32 0
  %_58 = load i64, i64 addrspace (1)* %_57, align 8
  %_59 = icmp ult i64 %_53, %_58
  br i1 %_59, label %L18, label %L19
L8:
  %_81 = load i64, i64* %_11
  call void @_bal_panic (i64 %_81)
  unreachable
L9:
  call void @_bal_panic (i64 772)
  unreachable
L10:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_2
  %_25 = load i64, i64* %i
  %_26 = load i64, i64* %_2
  %_27 = icmp slt i64 %_25, %_26
  store i1 %_27, i1* %_1
  %_28 = load i1, i1* %_1
  br i1 %_28, label %L4, label %L3
L11:
  store i64 1537, i64* %_11
  br label %L8
L12:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %L5
L13:
  %_33 = or i64 %_31, 2560
  store i64 %_33, i64* %_11
  br label %L8
L14:
  %_40 = load i64, i64* %i
  %_41 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_40, i64 1)
  %_42 = extractvalue {i64, i1} %_41, 1
  br i1 %_42, label %L17, label %L16
L15:
  %_39 = or i64 %_37, 1792
  store i64 %_39, i64* %_11
  br label %L8
L16:
  %_43 = extractvalue {i64, i1} %_41, 0
  store i64 %_43, i64* %_3
  %_44 = load i64, i64* %_3
  store i64 %_44, i64* %i
  br label %L2
L17:
  store i64 2049, i64* %_11
  br label %L8
L18:
  %_60 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_56, i64 0, i32 2
  %_61 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_60, align 8
  %_62 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_61, i64 0, i64 %_53
  %_63 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_62, align 8
  store i8 addrspace (1)* %_63, i8 addrspace (1)** %_6
  %_64 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  %_65 = addrspacecast i8 addrspace (1)* %_64 to i8*
  %_66 = ptrtoint i8* %_65 to i64
  %_67 = and i64 %_66, 2233785415175766016
  %_68 = icmp eq i64 %_67, 504403158265495552
  br i1 %_68, label %L20, label %L21
L19:
  store i64 3589, i64* %_11
  br label %L8
L20:
  %_69 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_64)
  store i64 %_69, i64* %_7
  %_70 = load i64, i64* %sum
  %_71 = load i64, i64* %_7
  %_72 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_70, i64 %_71)
  %_73 = extractvalue {i64, i1} %_72, 1
  br i1 %_73, label %L23, label %L22
L21:
  store i64 3587, i64* %_11
  br label %L8
L22:
  %_74 = extractvalue {i64, i1} %_72, 0
  store i64 %_74, i64* %_8
  %_75 = load i64, i64* %_8
  store i64 %_75, i64* %sum
  %_76 = load i64, i64* %i
  %_77 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_76, i64 1)
  %_78 = extractvalue {i64, i1} %_77, 1
  br i1 %_78, label %L25, label %L24
L23:
  store i64 3585, i64* %_11
  br label %L8
L24:
  %_79 = extractvalue {i64, i1} %_77, 0
  store i64 %_79, i64* %_9
  %_80 = load i64, i64* %_9
  store i64 %_80, i64* %i
  br label %L5
L25:
  store i64 3841, i64* %_11
  br label %L8
}
