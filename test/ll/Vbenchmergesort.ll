@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare i64 @_Barray__length (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Barray__push (i8*, i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i8*
  %i = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %s = alloca i8*
  %_7 = alloca i1
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %i.1 = alloca i64
  %_11 = alloca i1
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i8*
  %_17 = alloca i64
  %_18 = alloca i8*
  %_19 = alloca i1
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i8*
  %_23 = alloca i64
  %_24 = alloca i8
  %_25 = load i8*, i8** @_bal_stack_guard
  %_26 = icmp ult i8* %_24, %_25
  br i1 %_26, label %L13, label %L1
L1:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %_27 = call i8* @_bal_alloc (i64 24)
  %_28 = bitcast i8* %_27 to {i64, i64, [0 x i8*]*}*
  %_29 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 0
  store i64 0, i64* %_29
  %_30 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 1
  store i64 0, i64* %_30
  %_31 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_31
  %_32 = getelementptr i8, i8* %_27, i64 1297036692682702848
  store i8* %_32, i8** %_0
  %_33 = load i8*, i8** %_0
  store i8* %_33, i8** %v
  %_34 = load i64, i64* %len
  %_35 = call i8* @_bal_alloc (i64 8)
  %_36 = bitcast i8* %_35 to i64*
  store i64 %_34, i64* %_36, align 8
  %_37 = getelementptr i8, i8* %_35, i64 504403158265495552
  call void @_Bio__println (i8* %_37)
  store i8* null, i8** %_1
  store i64 0, i64* %i
  br label %L2
L2:
  %_38 = load i64, i64* %i
  %_39 = load i64, i64* %len
  %_40 = icmp slt i64 %_38, %_39
  store i1 %_40, i1* %_2
  %_41 = load i1, i1* %_2
  br i1 %_41, label %L5, label %L3
L3:
  %_42 = load i8*, i8** %v
  %_43 = call i8* @_B_sort (i8* %_42)
  store i8* %_43, i8** %_6
  %_44 = load i8*, i8** %_6
  store i8* %_44, i8** %s
  %_45 = load i8*, i8** %s
  %_46 = call i64 @_Barray__length (i8* %_45)
  store i64 %_46, i64* %_8
  %_47 = load i64, i64* %_8
  %_48 = load i64, i64* %len
  %_49 = icmp eq i64 %_47, %_48
  store i1 %_49, i1* %_7
  %_50 = load i1, i1* %_7
  %_51 = zext i1 %_50 to i64
  %_52 = or i64 %_51, 72057594037927936
  %_53 = getelementptr i8, i8* null, i64 %_52
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_9
  %_54 = load i64, i64* %len
  %_55 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_54, i64 1)
  %_56 = extractvalue {i64, i1} %_55, 1
  br i1 %_56, label %L15, label %L14
L4:
  %_58 = load i64, i64* %i
  %_59 = add nsw i64 %_58, 1
  store i64 %_59, i64* %i
  br label %L2
L5:
  %_60 = load i8*, i8** %v
  %_61 = load i64, i64* %x
  %_62 = call i8* @_bal_alloc (i64 8)
  %_63 = bitcast i8* %_62 to i64*
  store i64 %_61, i64* %_63, align 8
  %_64 = getelementptr i8, i8* %_62, i64 504403158265495552
  call void @_Barray__push (i8* %_60, i8* %_64)
  store i8* null, i8** %_3
  %_65 = load i64, i64* %x
  %_66 = load i64, i64* %a
  %_67 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_65, i64 %_66)
  %_68 = extractvalue {i64, i1} %_67, 1
  br i1 %_68, label %L17, label %L16
L6:
  %_78 = load i64, i64* %i.1
  %_79 = load i64, i64* %_10
  %_80 = icmp slt i64 %_78, %_79
  store i1 %_80, i1* %_11
  %_81 = load i1, i1* %_11
  br i1 %_81, label %L9, label %L7
L7:
  %_82 = load i8*, i8** %v
  %_83 = call i64 @_B_checksum (i8* %_82)
  store i64 %_83, i64* %_20
  %_84 = load i8*, i8** %s
  %_85 = call i64 @_B_checksum (i8* %_84)
  store i64 %_85, i64* %_21
  %_86 = load i64, i64* %_20
  %_87 = load i64, i64* %_21
  %_88 = icmp eq i64 %_86, %_87
  store i1 %_88, i1* %_19
  %_89 = load i1, i1* %_19
  %_90 = zext i1 %_89 to i64
  %_91 = or i64 %_90, 72057594037927936
  %_92 = getelementptr i8, i8* null, i64 %_91
  call void @_Bio__println (i8* %_92)
  store i8* null, i8** %_22
  ret void
L8:
  %_93 = load i64, i64* %i.1
  %_94 = add nsw i64 %_93, 1
  store i64 %_94, i64* %i.1
  br label %L6
L9:
  %_95 = load i64, i64* %i.1
  %_96 = load i8*, i8** %s
  %_97 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_96, i64 72057594037927935)
  %_98 = bitcast i8* %_97 to {i64, i64, [0 x i8*]*}*
  %_99 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_98, i64 0, i32 0
  %_100 = load i64, i64* %_99, align 8
  %_101 = icmp ult i64 %_95, %_100
  br i1 %_101, label %L23, label %L24
L10:
  %_139 = zext i1 0 to i64
  %_140 = or i64 %_139, 72057594037927936
  %_141 = getelementptr i8, i8* null, i64 %_140
  call void @_Bio__println (i8* %_141)
  store i8* null, i8** %_18
  br label %L11
L11:
  br label %L8
L12:
  %_142 = load i64, i64* %_23
  call void @_bal_panic (i64 %_142)
  unreachable
L13:
  call void @_bal_panic (i64 1284)
  unreachable
L14:
  %_57 = extractvalue {i64, i1} %_55, 0
  store i64 %_57, i64* %_10
  store i64 0, i64* %i.1
  br label %L6
L15:
  store i64 4609, i64* %_23
  br label %L12
L16:
  %_69 = extractvalue {i64, i1} %_67, 0
  store i64 %_69, i64* %_4
  %_70 = load i64, i64* %_4
  %_71 = load i64, i64* %m
  %_72 = icmp eq i64 %_71, 0
  br i1 %_72, label %L18, label %L19
L17:
  store i64 3585, i64* %_23
  br label %L12
L18:
  store i64 3586, i64* %_23
  br label %L12
L19:
  %_73 = icmp eq i64 %_70, -9223372036854775808
  %_74 = icmp eq i64 %_71, -1
  %_75 = and i1 %_73, %_74
  br i1 %_75, label %L21, label %L20
L20:
  %_76 = srem i64 %_70, %_71
  store i64 %_76, i64* %_5
  br label %L22
L21:
  store i64 0, i64* %_5
  br label %L22
L22:
  %_77 = load i64, i64* %_5
  store i64 %_77, i64* %x
  br label %L4
L23:
  %_102 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_98, i64 0, i32 2
  %_103 = load [0 x i8*]*, [0 x i8*]** %_102, align 8
  %_104 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_103, i64 0, i64 %_95
  %_105 = load i8*, i8** %_104, align 8
  store i8* %_105, i8** %_13
  %_106 = load i8*, i8** %_13
  %_107 = ptrtoint i8* %_106 to i64
  %_108 = and i64 %_107, 9151314442816847872
  %_109 = icmp eq i64 %_108, 504403158265495552
  br i1 %_109, label %L25, label %L26
L24:
  store i64 4869, i64* %_23
  br label %L12
L25:
  %_110 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_106, i64 72057594037927935)
  %_111 = bitcast i8* %_110 to i64*
  %_112 = load i64, i64* %_111, align 8
  store i64 %_112, i64* %_14
  %_113 = load i64, i64* %i.1
  %_114 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_113, i64 1)
  %_115 = extractvalue {i64, i1} %_114, 1
  br i1 %_115, label %L28, label %L27
L26:
  store i64 4867, i64* %_23
  br label %L12
L27:
  %_116 = extractvalue {i64, i1} %_114, 0
  store i64 %_116, i64* %_15
  %_117 = load i64, i64* %_15
  %_118 = load i8*, i8** %s
  %_119 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_118, i64 72057594037927935)
  %_120 = bitcast i8* %_119 to {i64, i64, [0 x i8*]*}*
  %_121 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_120, i64 0, i32 0
  %_122 = load i64, i64* %_121, align 8
  %_123 = icmp ult i64 %_117, %_122
  br i1 %_123, label %L29, label %L30
L28:
  store i64 4865, i64* %_23
  br label %L12
L29:
  %_124 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_120, i64 0, i32 2
  %_125 = load [0 x i8*]*, [0 x i8*]** %_124, align 8
  %_126 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_125, i64 0, i64 %_117
  %_127 = load i8*, i8** %_126, align 8
  store i8* %_127, i8** %_16
  %_128 = load i8*, i8** %_16
  %_129 = ptrtoint i8* %_128 to i64
  %_130 = and i64 %_129, 9151314442816847872
  %_131 = icmp eq i64 %_130, 504403158265495552
  br i1 %_131, label %L31, label %L32
L30:
  store i64 4869, i64* %_23
  br label %L12
L31:
  %_132 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_128, i64 72057594037927935)
  %_133 = bitcast i8* %_132 to i64*
  %_134 = load i64, i64* %_133, align 8
  store i64 %_134, i64* %_17
  %_135 = load i64, i64* %_14
  %_136 = load i64, i64* %_17
  %_137 = icmp sgt i64 %_135, %_136
  store i1 %_137, i1* %_12
  %_138 = load i1, i1* %_12
  br i1 %_138, label %L10, label %L11
L32:
  store i64 4867, i64* %_23
  br label %L12
}
define internal i64 @_B_checksum (i8* %_0) {
  %v = alloca i8*
  %c = alloca i64
  %_1 = alloca i64
  %i = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L7, label %L1
L1:
  store i8* %_0, i8** %v
  store i64 0, i64* %c
  %_10 = load i8*, i8** %v
  %_11 = call i64 @_Barray__length (i8* %_10)
  store i64 %_11, i64* %_1
  store i64 0, i64* %i
  br label %L2
L2:
  %_12 = load i64, i64* %i
  %_13 = load i64, i64* %_1
  %_14 = icmp slt i64 %_12, %_13
  store i1 %_14, i1* %_2
  %_15 = load i1, i1* %_2
  br i1 %_15, label %L5, label %L3
L3:
  %_16 = load i64, i64* %c
  ret i64 %_16
L4:
  %_17 = load i64, i64* %i
  %_18 = add nsw i64 %_17, 1
  store i64 %_18, i64* %i
  br label %L2
L5:
  %_19 = load i64, i64* %i
  %_20 = load i8*, i8** %v
  %_21 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_20, i64 72057594037927935)
  %_22 = bitcast i8* %_21 to {i64, i64, [0 x i8*]*}*
  %_23 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_22, i64 0, i32 0
  %_24 = load i64, i64* %_23, align 8
  %_25 = icmp ult i64 %_19, %_24
  br i1 %_25, label %L8, label %L9
L6:
  %_41 = load i64, i64* %_6
  call void @_bal_panic (i64 %_41)
  unreachable
L7:
  call void @_bal_panic (i64 6660)
  unreachable
L8:
  %_26 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_22, i64 0, i32 2
  %_27 = load [0 x i8*]*, [0 x i8*]** %_26, align 8
  %_28 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_27, i64 0, i64 %_19
  %_29 = load i8*, i8** %_28, align 8
  store i8* %_29, i8** %_3
  %_30 = load i8*, i8** %_3
  %_31 = ptrtoint i8* %_30 to i64
  %_32 = and i64 %_31, 9151314442816847872
  %_33 = icmp eq i64 %_32, 504403158265495552
  br i1 %_33, label %L10, label %L11
L9:
  store i64 7429, i64* %_6
  br label %L6
L10:
  %_34 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_30, i64 72057594037927935)
  %_35 = bitcast i8* %_34 to i64*
  %_36 = load i64, i64* %_35, align 8
  store i64 %_36, i64* %_4
  %_37 = load i64, i64* %c
  %_38 = load i64, i64* %_4
  %_39 = xor i64 %_37, %_38
  store i64 %_39, i64* %_5
  %_40 = load i64, i64* %_5
  store i64 %_40, i64* %c
  br label %L4
L11:
  store i64 7427, i64* %_6
  br label %L6
}
define internal i8* @_B_sort (i8* %_0) {
  %v = alloca i8*
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  %mid = alloca i64
  %_5 = alloca i8*
  %list1 = alloca i8*
  %i = alloca i64
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i8*
  %list2 = alloca i8*
  %_11 = alloca i64
  %i.1 = alloca i64
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i8*
  %_17 = alloca i8*
  %_18 = alloca i8*
  %_19 = alloca i64
  %_20 = alloca i8
  %_21 = load i8*, i8** @_bal_stack_guard
  %_22 = icmp ult i8* %_20, %_21
  br i1 %_22, label %L13, label %L1
L1:
  store i8* %_0, i8** %v
  %_23 = load i8*, i8** %v
  %_24 = call i64 @_Barray__length (i8* %_23)
  store i64 %_24, i64* %_2
  %_25 = load i64, i64* %_2
  %_26 = icmp sle i64 %_25, 1
  store i1 %_26, i1* %_1
  %_27 = load i1, i1* %_1
  br i1 %_27, label %L2, label %L3
L2:
  %_28 = load i8*, i8** %v
  ret i8* %_28
L3:
  %_29 = load i8*, i8** %v
  %_30 = call i64 @_Barray__length (i8* %_29)
  store i64 %_30, i64* %_3
  %_31 = load i64, i64* %_3
  %_32 = icmp eq i64 2, 0
  br i1 %_32, label %L14, label %L15
L4:
  %_45 = load i64, i64* %i
  %_46 = load i64, i64* %mid
  %_47 = icmp slt i64 %_45, %_46
  store i1 %_47, i1* %_6
  %_48 = load i1, i1* %_6
  br i1 %_48, label %L7, label %L5
L5:
  %_49 = call i8* @_bal_alloc (i64 24)
  %_50 = bitcast i8* %_49 to {i64, i64, [0 x i8*]*}*
  %_51 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_50, i64 0, i32 0
  store i64 0, i64* %_51
  %_52 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_50, i64 0, i32 1
  store i64 0, i64* %_52
  %_53 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_50, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_53
  %_54 = getelementptr i8, i8* %_49, i64 1297036692682702848
  store i8* %_54, i8** %_10
  %_55 = load i8*, i8** %_10
  store i8* %_55, i8** %list2
  %_56 = load i8*, i8** %v
  %_57 = call i64 @_Barray__length (i8* %_56)
  store i64 %_57, i64* %_11
  %_58 = load i64, i64* %mid
  store i64 %_58, i64* %i.1
  br label %L8
L6:
  %_59 = load i64, i64* %i
  %_60 = add nsw i64 %_59, 1
  store i64 %_60, i64* %i
  br label %L4
L7:
  %_61 = load i64, i64* %i
  %_62 = load i8*, i8** %v
  %_63 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_62, i64 72057594037927935)
  %_64 = bitcast i8* %_63 to {i64, i64, [0 x i8*]*}*
  %_65 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_64, i64 0, i32 0
  %_66 = load i64, i64* %_65, align 8
  %_67 = icmp ult i64 %_61, %_66
  br i1 %_67, label %L18, label %L19
L8:
  %_84 = load i64, i64* %i.1
  %_85 = load i64, i64* %_11
  %_86 = icmp slt i64 %_84, %_85
  store i1 %_86, i1* %_12
  %_87 = load i1, i1* %_12
  br i1 %_87, label %L11, label %L9
L9:
  %_88 = load i8*, i8** %list1
  %_89 = call i8* @_B_sort (i8* %_88)
  store i8* %_89, i8** %_16
  %_90 = load i8*, i8** %list2
  %_91 = call i8* @_B_sort (i8* %_90)
  store i8* %_91, i8** %_17
  %_92 = load i8*, i8** %_16
  %_93 = load i8*, i8** %_17
  %_94 = call i8* @_B_merge (i8* %_92, i8* %_93)
  store i8* %_94, i8** %_18
  %_95 = load i8*, i8** %_18
  ret i8* %_95
L10:
  %_96 = load i64, i64* %i.1
  %_97 = add nsw i64 %_96, 1
  store i64 %_97, i64* %i.1
  br label %L8
L11:
  %_98 = load i64, i64* %i.1
  %_99 = load i8*, i8** %v
  %_100 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_99, i64 72057594037927935)
  %_101 = bitcast i8* %_100 to {i64, i64, [0 x i8*]*}*
  %_102 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_101, i64 0, i32 0
  %_103 = load i64, i64* %_102, align 8
  %_104 = icmp ult i64 %_98, %_103
  br i1 %_104, label %L22, label %L23
L12:
  %_121 = load i64, i64* %_19
  call void @_bal_panic (i64 %_121)
  unreachable
L13:
  call void @_bal_panic (i64 8964)
  unreachable
L14:
  store i64 9986, i64* %_19
  br label %L12
L15:
  %_33 = icmp eq i64 %_31, -9223372036854775808
  %_34 = icmp eq i64 2, -1
  %_35 = and i1 %_33, %_34
  br i1 %_35, label %L17, label %L16
L16:
  %_36 = sdiv i64 %_31, 2
  store i64 %_36, i64* %_4
  %_37 = load i64, i64* %_4
  store i64 %_37, i64* %mid
  %_38 = call i8* @_bal_alloc (i64 24)
  %_39 = bitcast i8* %_38 to {i64, i64, [0 x i8*]*}*
  %_40 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_39, i64 0, i32 0
  store i64 0, i64* %_40
  %_41 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_39, i64 0, i32 1
  store i64 0, i64* %_41
  %_42 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_39, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_42
  %_43 = getelementptr i8, i8* %_38, i64 1297036692682702848
  store i8* %_43, i8** %_5
  %_44 = load i8*, i8** %_5
  store i8* %_44, i8** %list1
  store i64 0, i64* %i
  br label %L4
L17:
  store i64 9985, i64* %_19
  br label %L12
L18:
  %_68 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_64, i64 0, i32 2
  %_69 = load [0 x i8*]*, [0 x i8*]** %_68, align 8
  %_70 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_69, i64 0, i64 %_61
  %_71 = load i8*, i8** %_70, align 8
  store i8* %_71, i8** %_7
  %_72 = load i8*, i8** %_7
  %_73 = ptrtoint i8* %_72 to i64
  %_74 = and i64 %_73, 9151314442816847872
  %_75 = icmp eq i64 %_74, 504403158265495552
  br i1 %_75, label %L20, label %L21
L19:
  store i64 10757, i64* %_19
  br label %L12
L20:
  %_76 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_72, i64 72057594037927935)
  %_77 = bitcast i8* %_76 to i64*
  %_78 = load i64, i64* %_77, align 8
  store i64 %_78, i64* %_8
  %_79 = load i8*, i8** %list1
  %_80 = load i64, i64* %_8
  %_81 = call i8* @_bal_alloc (i64 8)
  %_82 = bitcast i8* %_81 to i64*
  store i64 %_80, i64* %_82, align 8
  %_83 = getelementptr i8, i8* %_81, i64 504403158265495552
  call void @_Barray__push (i8* %_79, i8* %_83)
  store i8* null, i8** %_9
  br label %L6
L21:
  store i64 10755, i64* %_19
  br label %L12
L22:
  %_105 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_101, i64 0, i32 2
  %_106 = load [0 x i8*]*, [0 x i8*]** %_105, align 8
  %_107 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_106, i64 0, i64 %_98
  %_108 = load i8*, i8** %_107, align 8
  store i8* %_108, i8** %_13
  %_109 = load i8*, i8** %_13
  %_110 = ptrtoint i8* %_109 to i64
  %_111 = and i64 %_110, 9151314442816847872
  %_112 = icmp eq i64 %_111, 504403158265495552
  br i1 %_112, label %L24, label %L25
L23:
  store i64 11781, i64* %_19
  br label %L12
L24:
  %_113 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_109, i64 72057594037927935)
  %_114 = bitcast i8* %_113 to i64*
  %_115 = load i64, i64* %_114, align 8
  store i64 %_115, i64* %_14
  %_116 = load i8*, i8** %list2
  %_117 = load i64, i64* %_14
  %_118 = call i8* @_bal_alloc (i64 8)
  %_119 = bitcast i8* %_118 to i64*
  store i64 %_117, i64* %_119, align 8
  %_120 = getelementptr i8, i8* %_118, i64 504403158265495552
  call void @_Barray__push (i8* %_116, i8* %_120)
  store i8* null, i8** %_15
  br label %L10
L25:
  store i64 11779, i64* %_19
  br label %L12
}
define internal i8* @_B_merge (i8* %_0, i8* %_1) {
  %v1 = alloca i8*
  %v2 = alloca i8*
  %_2 = alloca i8*
  %result = alloca i8*
  %i1 = alloca i64
  %i2 = alloca i64
  %_3 = alloca i64
  %len1 = alloca i64
  %_4 = alloca i64
  %len2 = alloca i64
  %_5 = alloca i1
  %_6 = alloca i1
  %_7 = alloca i1
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i8*
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i8*
  %_17 = alloca i64
  %_18 = alloca i1
  %_19 = alloca i8*
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i1
  %_23 = alloca i8*
  %_24 = alloca i8*
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i8
  %_28 = load i8*, i8** @_bal_stack_guard
  %_29 = icmp ult i8* %_27, %_28
  br i1 %_29, label %L18, label %L1
L1:
  store i8* %_0, i8** %v1
  store i8* %_1, i8** %v2
  %_30 = call i8* @_bal_alloc (i64 24)
  %_31 = bitcast i8* %_30 to {i64, i64, [0 x i8*]*}*
  %_32 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_31, i64 0, i32 0
  store i64 0, i64* %_32
  %_33 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_31, i64 0, i32 1
  store i64 0, i64* %_33
  %_34 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_31, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_34
  %_35 = getelementptr i8, i8* %_30, i64 1297036692682702848
  store i8* %_35, i8** %_2
  %_36 = load i8*, i8** %_2
  store i8* %_36, i8** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %_37 = load i8*, i8** %v1
  %_38 = call i64 @_Barray__length (i8* %_37)
  store i64 %_38, i64* %_3
  %_39 = load i64, i64* %_3
  store i64 %_39, i64* %len1
  %_40 = load i8*, i8** %v2
  %_41 = call i64 @_Barray__length (i8* %_40)
  store i64 %_41, i64* %_4
  %_42 = load i64, i64* %_4
  store i64 %_42, i64* %len2
  br label %L2
L2:
  %_43 = load i64, i64* %i1
  %_44 = load i64, i64* %len1
  %_45 = icmp slt i64 %_43, %_44
  store i1 %_45, i1* %_5
  %_46 = load i1, i1* %_5
  br i1 %_46, label %L4, label %L10
L3:
  br label %L11
L4:
  %_47 = load i64, i64* %i2
  %_48 = load i64, i64* %len2
  %_49 = icmp slt i64 %_47, %_48
  store i1 %_49, i1* %_6
  %_50 = load i1, i1* %_6
  br i1 %_50, label %L5, label %L9
L5:
  %_51 = load i64, i64* %i1
  %_52 = load i8*, i8** %v1
  %_53 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_52, i64 72057594037927935)
  %_54 = bitcast i8* %_53 to {i64, i64, [0 x i8*]*}*
  %_55 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_54, i64 0, i32 0
  %_56 = load i64, i64* %_55, align 8
  %_57 = icmp ult i64 %_51, %_56
  br i1 %_57, label %L19, label %L20
L6:
  %_91 = load i64, i64* %i1
  %_92 = load i8*, i8** %v1
  %_93 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_92, i64 72057594037927935)
  %_94 = bitcast i8* %_93 to {i64, i64, [0 x i8*]*}*
  %_95 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_94, i64 0, i32 0
  %_96 = load i64, i64* %_95, align 8
  %_97 = icmp ult i64 %_91, %_96
  br i1 %_97, label %L27, label %L28
L7:
  %_109 = load i64, i64* %i2
  %_110 = load i8*, i8** %v2
  %_111 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_110, i64 72057594037927935)
  %_112 = bitcast i8* %_111 to {i64, i64, [0 x i8*]*}*
  %_113 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_112, i64 0, i32 0
  %_114 = load i64, i64* %_113, align 8
  %_115 = icmp ult i64 %_109, %_114
  br i1 %_115, label %L31, label %L32
L8:
  br label %L2
L9:
  br label %L10
L10:
  br label %L3
L11:
  %_127 = load i64, i64* %i1
  %_128 = load i64, i64* %len1
  %_129 = icmp slt i64 %_127, %_128
  store i1 %_129, i1* %_18
  %_130 = load i1, i1* %_18
  br i1 %_130, label %L13, label %L12
L12:
  br label %L14
L13:
  %_131 = load i64, i64* %i1
  %_132 = load i8*, i8** %v1
  %_133 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_132, i64 72057594037927935)
  %_134 = bitcast i8* %_133 to {i64, i64, [0 x i8*]*}*
  %_135 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_134, i64 0, i32 0
  %_136 = load i64, i64* %_135, align 8
  %_137 = icmp ult i64 %_131, %_136
  br i1 %_137, label %L35, label %L36
L14:
  %_149 = load i64, i64* %i2
  %_150 = load i64, i64* %len2
  %_151 = icmp slt i64 %_149, %_150
  store i1 %_151, i1* %_22
  %_152 = load i1, i1* %_22
  br i1 %_152, label %L16, label %L15
L15:
  %_153 = load i8*, i8** %result
  ret i8* %_153
L16:
  %_154 = load i64, i64* %i2
  %_155 = load i8*, i8** %v2
  %_156 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_155, i64 72057594037927935)
  %_157 = bitcast i8* %_156 to {i64, i64, [0 x i8*]*}*
  %_158 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_157, i64 0, i32 0
  %_159 = load i64, i64* %_158, align 8
  %_160 = icmp ult i64 %_154, %_159
  br i1 %_160, label %L39, label %L40
L17:
  %_172 = load i64, i64* %_26
  call void @_bal_panic (i64 %_172)
  unreachable
L18:
  call void @_bal_panic (i64 13060)
  unreachable
L19:
  %_58 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_54, i64 0, i32 2
  %_59 = load [0 x i8*]*, [0 x i8*]** %_58, align 8
  %_60 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_59, i64 0, i64 %_51
  %_61 = load i8*, i8** %_60, align 8
  store i8* %_61, i8** %_8
  %_62 = load i8*, i8** %_8
  %_63 = ptrtoint i8* %_62 to i64
  %_64 = and i64 %_63, 9151314442816847872
  %_65 = icmp eq i64 %_64, 504403158265495552
  br i1 %_65, label %L21, label %L22
L20:
  store i64 15365, i64* %_26
  br label %L17
L21:
  %_66 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_62, i64 72057594037927935)
  %_67 = bitcast i8* %_66 to i64*
  %_68 = load i64, i64* %_67, align 8
  store i64 %_68, i64* %_9
  %_69 = load i64, i64* %i2
  %_70 = load i8*, i8** %v2
  %_71 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_70, i64 72057594037927935)
  %_72 = bitcast i8* %_71 to {i64, i64, [0 x i8*]*}*
  %_73 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_72, i64 0, i32 0
  %_74 = load i64, i64* %_73, align 8
  %_75 = icmp ult i64 %_69, %_74
  br i1 %_75, label %L23, label %L24
L22:
  store i64 15363, i64* %_26
  br label %L17
L23:
  %_76 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_72, i64 0, i32 2
  %_77 = load [0 x i8*]*, [0 x i8*]** %_76, align 8
  %_78 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_77, i64 0, i64 %_69
  %_79 = load i8*, i8** %_78, align 8
  store i8* %_79, i8** %_10
  %_80 = load i8*, i8** %_10
  %_81 = ptrtoint i8* %_80 to i64
  %_82 = and i64 %_81, 9151314442816847872
  %_83 = icmp eq i64 %_82, 504403158265495552
  br i1 %_83, label %L25, label %L26
L24:
  store i64 15365, i64* %_26
  br label %L17
L25:
  %_84 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_80, i64 72057594037927935)
  %_85 = bitcast i8* %_84 to i64*
  %_86 = load i64, i64* %_85, align 8
  store i64 %_86, i64* %_11
  %_87 = load i64, i64* %_9
  %_88 = load i64, i64* %_11
  %_89 = icmp sle i64 %_87, %_88
  store i1 %_89, i1* %_7
  %_90 = load i1, i1* %_7
  br i1 %_90, label %L6, label %L7
L26:
  store i64 15363, i64* %_26
  br label %L17
L27:
  %_98 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_94, i64 0, i32 2
  %_99 = load [0 x i8*]*, [0 x i8*]** %_98, align 8
  %_100 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_99, i64 0, i64 %_91
  %_101 = load i8*, i8** %_100, align 8
  store i8* %_101, i8** %_12
  %_102 = load i8*, i8** %result
  %_103 = load i8*, i8** %_12
  call void @_Barray__push (i8* %_102, i8* %_103)
  store i8* null, i8** %_13
  %_104 = load i64, i64* %i1
  %_105 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_104, i64 1)
  %_106 = extractvalue {i64, i1} %_105, 1
  br i1 %_106, label %L30, label %L29
L28:
  store i64 15621, i64* %_26
  br label %L17
L29:
  %_107 = extractvalue {i64, i1} %_105, 0
  store i64 %_107, i64* %_14
  %_108 = load i64, i64* %_14
  store i64 %_108, i64* %i1
  br label %L8
L30:
  store i64 15873, i64* %_26
  br label %L17
L31:
  %_116 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_112, i64 0, i32 2
  %_117 = load [0 x i8*]*, [0 x i8*]** %_116, align 8
  %_118 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_117, i64 0, i64 %_109
  %_119 = load i8*, i8** %_118, align 8
  store i8* %_119, i8** %_15
  %_120 = load i8*, i8** %result
  %_121 = load i8*, i8** %_15
  call void @_Barray__push (i8* %_120, i8* %_121)
  store i8* null, i8** %_16
  %_122 = load i64, i64* %i2
  %_123 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_122, i64 1)
  %_124 = extractvalue {i64, i1} %_123, 1
  br i1 %_124, label %L34, label %L33
L32:
  store i64 16645, i64* %_26
  br label %L17
L33:
  %_125 = extractvalue {i64, i1} %_123, 0
  store i64 %_125, i64* %_17
  %_126 = load i64, i64* %_17
  store i64 %_126, i64* %i2
  br label %L8
L34:
  store i64 16897, i64* %_26
  br label %L17
L35:
  %_138 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_134, i64 0, i32 2
  %_139 = load [0 x i8*]*, [0 x i8*]** %_138, align 8
  %_140 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_139, i64 0, i64 %_131
  %_141 = load i8*, i8** %_140, align 8
  store i8* %_141, i8** %_19
  %_142 = load i8*, i8** %result
  %_143 = load i8*, i8** %_19
  call void @_Barray__push (i8* %_142, i8* %_143)
  store i8* null, i8** %_20
  %_144 = load i64, i64* %i1
  %_145 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_144, i64 1)
  %_146 = extractvalue {i64, i1} %_145, 1
  br i1 %_146, label %L38, label %L37
L36:
  store i64 18949, i64* %_26
  br label %L17
L37:
  %_147 = extractvalue {i64, i1} %_145, 0
  store i64 %_147, i64* %_21
  %_148 = load i64, i64* %_21
  store i64 %_148, i64* %i1
  br label %L11
L38:
  store i64 19201, i64* %_26
  br label %L17
L39:
  %_161 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_157, i64 0, i32 2
  %_162 = load [0 x i8*]*, [0 x i8*]** %_161, align 8
  %_163 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_162, i64 0, i64 %_154
  %_164 = load i8*, i8** %_163, align 8
  store i8* %_164, i8** %_23
  %_165 = load i8*, i8** %result
  %_166 = load i8*, i8** %_23
  call void @_Barray__push (i8* %_165, i8* %_166)
  store i8* null, i8** %_24
  %_167 = load i64, i64* %i2
  %_168 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_167, i64 1)
  %_169 = extractvalue {i64, i1} %_168, 1
  br i1 %_169, label %L42, label %L41
L40:
  store i64 19973, i64* %_26
  br label %L17
L41:
  %_170 = extractvalue {i64, i1} %_168, 0
  store i64 %_170, i64* %_25
  %_171 = load i64, i64* %_25
  store i64 %_171, i64* %i2
  br label %L14
L42:
  store i64 20225, i64* %_26
  br label %L17
}
