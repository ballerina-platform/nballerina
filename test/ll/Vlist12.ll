@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
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
  %_30 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_31 = bitcast i8 addrspace (1)* %_30 to i64 addrspace (1)*
  store i64 1001, i64 addrspace (1)* %_31, align 8
  %_32 = getelementptr i8, i8 addrspace (1)* %_30, i64 504403158265495552
  %_33 = call i64 @_bal_list_set (i8 addrspace (1)* %_29, i64 123000, i8 addrspace (1)* %_32)
  %_34 = icmp eq i64 %_33, 0
  br i1 %_34, label %L12, label %L13
L4:
  %_36 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_37 = load i64, i64* %i
  %_38 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_39 = bitcast i8 addrspace (1)* %_38 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_39, align 8
  %_40 = getelementptr i8, i8 addrspace (1)* %_38, i64 504403158265495552
  %_41 = call i64 @_bal_list_set (i8 addrspace (1)* %_36, i64 %_37, i8 addrspace (1)* %_40)
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %L14, label %L15
L5:
  %_49 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_50 = call i64 @_Barray__length (i8 addrspace (1)* %_49)
  store i64 %_50, i64* %_5
  %_51 = load i64, i64* %i
  %_52 = load i64, i64* %_5
  %_53 = icmp slt i64 %_51, %_52
  store i1 %_53, i1* %_4
  %_54 = load i1, i1* %_4
  br i1 %_54, label %L7, label %L6
L6:
  %_55 = load i64, i64* %sum
  %_56 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_57 = bitcast i8 addrspace (1)* %_56 to i64 addrspace (1)*
  store i64 %_55, i64 addrspace (1)* %_57, align 8
  %_58 = getelementptr i8, i8 addrspace (1)* %_56, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_58)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  ret void
L7:
  %_59 = load i64, i64* %i
  %_60 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_61 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_60, i64 72057594037927935)
  %_62 = bitcast i8 addrspace (1)* %_61 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_63 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_62, i64 0, i32 0
  %_64 = load i64, i64 addrspace (1)* %_63, align 8
  %_65 = icmp ult i64 %_59, %_64
  br i1 %_65, label %L18, label %L19
L8:
  %_89 = load i64, i64* %_11
  call void @_bal_panic (i64 %_89)
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
  %_35 = or i64 %_33, 2560
  store i64 %_35, i64* %_11
  br label %L8
L14:
  %_44 = load i64, i64* %i
  %_45 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_44, i64 1)
  %_46 = extractvalue {i64, i1} %_45, 1
  br i1 %_46, label %L17, label %L16
L15:
  %_43 = or i64 %_41, 1792
  store i64 %_43, i64* %_11
  br label %L8
L16:
  %_47 = extractvalue {i64, i1} %_45, 0
  store i64 %_47, i64* %_3
  %_48 = load i64, i64* %_3
  store i64 %_48, i64* %i
  br label %L2
L17:
  store i64 2049, i64* %_11
  br label %L8
L18:
  %_66 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_62, i64 0, i32 2
  %_67 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_66, align 8
  %_68 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_67, i64 0, i64 %_59
  %_69 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_68, align 8
  store i8 addrspace (1)* %_69, i8 addrspace (1)** %_6
  %_70 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  %_71 = addrspacecast i8 addrspace (1)* %_70 to i8*
  %_72 = ptrtoint i8* %_71 to i64
  %_73 = and i64 %_72, 9151314442816847872
  %_74 = icmp eq i64 %_73, 504403158265495552
  br i1 %_74, label %L20, label %L21
L19:
  store i64 3589, i64* %_11
  br label %L8
L20:
  %_75 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_70, i64 72057594037927935)
  %_76 = bitcast i8 addrspace (1)* %_75 to i64 addrspace (1)*
  %_77 = load i64, i64 addrspace (1)* %_76, align 8
  store i64 %_77, i64* %_7
  %_78 = load i64, i64* %sum
  %_79 = load i64, i64* %_7
  %_80 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_78, i64 %_79)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L23, label %L22
L21:
  store i64 3587, i64* %_11
  br label %L8
L22:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_8
  %_83 = load i64, i64* %_8
  store i64 %_83, i64* %sum
  %_84 = load i64, i64* %i
  %_85 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_84, i64 1)
  %_86 = extractvalue {i64, i1} %_85, 1
  br i1 %_86, label %L25, label %L24
L23:
  store i64 3585, i64* %_11
  br label %L8
L24:
  %_87 = extractvalue {i64, i1} %_85, 0
  store i64 %_87, i64* %_9
  %_88 = load i64, i64* %_9
  store i64 %_88, i64* %i
  br label %L5
L25:
  store i64 3841, i64* %_11
  br label %L8
}
