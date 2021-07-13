@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length (i8 addrspace (1)*)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i8 addrspace (1)* @_B_findPrimes ()
  store i8 addrspace (1)* %_5, i8 addrspace (1)** %_0
  %_6 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  call void @_B_printMersenne (i8 addrspace (1)* %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal i8 addrspace (1)* @_B_findPrimes () {
  %_0 = alloca i8 addrspace (1)*
  %primes = alloca i8 addrspace (1)*
  %gap = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %i = alloca i64
  %_7 = alloca i1
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L11, label %L1
L1:
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 16)
  %_16 = bitcast i8 addrspace (1)* %_15 to [2 x i8 addrspace (1)*] addrspace (1)*
  %_17 = zext i1 0 to i64
  %_18 = or i64 %_17, 72057594037927936
  %_19 = getelementptr i8, i8 addrspace (1)* null, i64 %_18
  %_20 = getelementptr inbounds [2 x i8 addrspace (1)*], [2 x i8 addrspace (1)*] addrspace (1)* %_16, i64 0, i64 0
  store i8 addrspace (1)* %_19, i8 addrspace (1)* addrspace (1)* %_20
  %_21 = zext i1 0 to i64
  %_22 = or i64 %_21, 72057594037927936
  %_23 = getelementptr i8, i8 addrspace (1)* null, i64 %_22
  %_24 = getelementptr inbounds [2 x i8 addrspace (1)*], [2 x i8 addrspace (1)*] addrspace (1)* %_16, i64 0, i64 1
  store i8 addrspace (1)* %_23, i8 addrspace (1)* addrspace (1)* %_24
  %_25 = bitcast [2 x i8 addrspace (1)*] addrspace (1)* %_16 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_26 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_27 = bitcast i8 addrspace (1)* %_26 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_27, i64 0, i32 0
  store i64 2, i64 addrspace (1)* %_28
  %_29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_27, i64 0, i32 1
  store i64 2, i64 addrspace (1)* %_29
  %_30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_27, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_25, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_30
  %_31 = getelementptr i8, i8 addrspace (1)* %_26, i64 1297036692682702848
  store i8 addrspace (1)* %_31, i8 addrspace (1)** %_0
  %_32 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_32, i8 addrspace (1)** %primes
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_34 = call i64 @_bal_list_set (i8 addrspace (1)* %_33, i64 1000000, i8 addrspace (1)* null)
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %L12, label %L13
L2:
  %_37 = load i64, i64* %gap
  %_38 = load i64, i64* %gap
  %_39 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_37, i64 %_38)
  %_40 = extractvalue {i64, i1} %_39, 1
  br i1 %_40, label %L15, label %L14
L3:
  %_48 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  ret i8 addrspace (1)* %_48
L4:
  %_49 = load i64, i64* %gap
  %_50 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_51 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_50, i64 72057594037927935)
  %_52 = bitcast i8 addrspace (1)* %_51 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_53 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_52, i64 0, i32 0
  %_54 = load i64, i64 addrspace (1)* %_53, align 8
  %_55 = icmp ult i64 %_49, %_54
  br i1 %_55, label %L16, label %L17
L5:
  %_63 = load i64, i64* %gap
  %_64 = load i64, i64* %gap
  %_65 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_63, i64 %_64)
  %_66 = extractvalue {i64, i1} %_65, 1
  br i1 %_66, label %L19, label %L18
L6:
  %_69 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_70 = call i64 @_Barray__length (i8 addrspace (1)* %_69)
  store i64 %_70, i64* %_8
  %_71 = load i64, i64* %i
  %_72 = load i64, i64* %_8
  %_73 = icmp slt i64 %_71, %_72
  store i1 %_73, i1* %_7
  %_74 = load i1, i1* %_7
  br i1 %_74, label %L8, label %L7
L7:
  br label %L9
L8:
  %_75 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_76 = load i64, i64* %i
  %_77 = zext i1 0 to i64
  %_78 = or i64 %_77, 72057594037927936
  %_79 = getelementptr i8, i8 addrspace (1)* null, i64 %_78
  %_80 = call i64 @_bal_list_set (i8 addrspace (1)* %_75, i64 %_76, i8 addrspace (1)* %_79)
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %L20, label %L21
L9:
  %_89 = load i64, i64* %gap
  %_90 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_89, i64 1)
  %_91 = extractvalue {i64, i1} %_90, 1
  br i1 %_91, label %L25, label %L24
L10:
  %_94 = load i64, i64* %_11
  call void @_bal_panic (i64 %_94)
  unreachable
L11:
  call void @_bal_panic (i64 1540)
  unreachable
L12:
  store i64 2, i64* %gap
  br label %L2
L13:
  %_36 = or i64 %_34, 2048
  store i64 %_36, i64* %_11
  br label %L10
L14:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_2
  %_42 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_43 = call i64 @_Barray__length (i8 addrspace (1)* %_42)
  store i64 %_43, i64* %_3
  %_44 = load i64, i64* %_2
  %_45 = load i64, i64* %_3
  %_46 = icmp slt i64 %_44, %_45
  store i1 %_46, i1* %_1
  %_47 = load i1, i1* %_1
  br i1 %_47, label %L4, label %L3
L15:
  store i64 2561, i64* %_11
  br label %L10
L16:
  %_56 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_52, i64 0, i32 2
  %_57 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_56, align 8
  %_58 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_57, i64 0, i64 %_49
  %_59 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_58, align 8
  store i8 addrspace (1)* %_59, i8 addrspace (1)** %_5
  %_60 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_61 = icmp eq i8 addrspace (1)* %_60, null
  store i1 %_61, i1* %_4
  %_62 = load i1, i1* %_4
  br i1 %_62, label %L5, label %L9
L17:
  store i64 2821, i64* %_11
  br label %L10
L18:
  %_67 = extractvalue {i64, i1} %_65, 0
  store i64 %_67, i64* %_6
  %_68 = load i64, i64* %_6
  store i64 %_68, i64* %i
  br label %L6
L19:
  store i64 3073, i64* %_11
  br label %L10
L20:
  %_83 = load i64, i64* %i
  %_84 = load i64, i64* %gap
  %_85 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_83, i64 %_84)
  %_86 = extractvalue {i64, i1} %_85, 1
  br i1 %_86, label %L23, label %L22
L21:
  %_82 = or i64 %_80, 3584
  store i64 %_82, i64* %_11
  br label %L10
L22:
  %_87 = extractvalue {i64, i1} %_85, 0
  store i64 %_87, i64* %_9
  %_88 = load i64, i64* %_9
  store i64 %_88, i64* %i
  br label %L6
L23:
  store i64 3841, i64* %_11
  br label %L10
L24:
  %_92 = extractvalue {i64, i1} %_90, 0
  store i64 %_92, i64* %_10
  %_93 = load i64, i64* %_10
  store i64 %_93, i64* %gap
  br label %L2
L25:
  store i64 4609, i64* %_11
  br label %L10
}
define internal void @_B_printMersenne (i8 addrspace (1)* %_0) {
  %primes = alloca i8 addrspace (1)*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L8, label %L1
L1:
  store i8 addrspace (1)* %_0, i8 addrspace (1)** %primes
  store i64 2, i64* %i
  br label %L2
L2:
  %_13 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_14 = call i64 @_Barray__length (i8 addrspace (1)* %_13)
  store i64 %_14, i64* %_2
  %_15 = load i64, i64* %i
  %_16 = load i64, i64* %_2
  %_17 = icmp slt i64 %_15, %_16
  store i1 %_17, i1* %_1
  %_18 = load i1, i1* %_1
  br i1 %_18, label %L4, label %L3
L3:
  ret void
L4:
  %_19 = load i64, i64* %i
  %_20 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_19, i64 1)
  %_21 = extractvalue {i64, i1} %_20, 1
  br i1 %_21, label %L10, label %L9
L5:
  %_37 = load i64, i64* %i
  %_38 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_37, i64 1)
  %_39 = extractvalue {i64, i1} %_38, 1
  br i1 %_39, label %L14, label %L13
L6:
  %_43 = load i64, i64* %i
  %_44 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_43, i64 2)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L16, label %L15
L7:
  %_48 = load i64, i64* %_9
  call void @_bal_panic (i64 %_48)
  unreachable
L8:
  call void @_bal_panic (i64 5892)
  unreachable
L9:
  %_22 = extractvalue {i64, i1} %_20, 0
  store i64 %_22, i64* %_4
  %_23 = load i64, i64* %_4
  %_24 = load i8 addrspace (1)*, i8 addrspace (1)** %primes
  %_25 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_24, i64 72057594037927935)
  %_26 = bitcast i8 addrspace (1)* %_25 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_27 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 0
  %_28 = load i64, i64 addrspace (1)* %_27, align 8
  %_29 = icmp ult i64 %_23, %_28
  br i1 %_29, label %L11, label %L12
L10:
  store i64 6657, i64* %_9
  br label %L7
L11:
  %_30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 2
  %_31 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_30, align 8
  %_32 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_31, i64 0, i64 %_23
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_32, align 8
  store i8 addrspace (1)* %_33, i8 addrspace (1)** %_5
  %_34 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_35 = icmp eq i8 addrspace (1)* %_34, null
  store i1 %_35, i1* %_3
  %_36 = load i1, i1* %_3
  br i1 %_36, label %L5, label %L6
L12:
  store i64 6661, i64* %_9
  br label %L7
L13:
  %_40 = extractvalue {i64, i1} %_38, 0
  store i64 %_40, i64* %_6
  %_41 = load i64, i64* %_6
  %_42 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_41)
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  br label %L6
L14:
  store i64 6913, i64* %_9
  br label %L7
L15:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_8
  %_47 = load i64, i64* %_8
  store i64 %_47, i64* %i
  br label %L2
L16:
  store i64 8961, i64* %_9
  br label %L7
}
