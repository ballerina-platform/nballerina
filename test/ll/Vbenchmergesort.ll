@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare i64 @_Barray__length (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Barray__push (i8*, i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
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
  %_59 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_58, i64 1)
  %_60 = extractvalue {i64, i1} %_59, 1
  br i1 %_60, label %L17, label %L16
L5:
  %_62 = load i8*, i8** %v
  %_63 = load i64, i64* %x
  %_64 = call i8* @_bal_alloc (i64 8)
  %_65 = bitcast i8* %_64 to i64*
  store i64 %_63, i64* %_65, align 8
  %_66 = getelementptr i8, i8* %_64, i64 504403158265495552
  call void @_Barray__push (i8* %_62, i8* %_66)
  store i8* null, i8** %_3
  %_67 = load i64, i64* %x
  %_68 = load i64, i64* %a
  %_69 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_67, i64 %_68)
  %_70 = extractvalue {i64, i1} %_69, 1
  br i1 %_70, label %L19, label %L18
L6:
  %_80 = load i64, i64* %i.1
  %_81 = load i64, i64* %_10
  %_82 = icmp slt i64 %_80, %_81
  store i1 %_82, i1* %_11
  %_83 = load i1, i1* %_11
  br i1 %_83, label %L9, label %L7
L7:
  %_84 = load i8*, i8** %v
  %_85 = call i64 @_B_checksum (i8* %_84)
  store i64 %_85, i64* %_20
  %_86 = load i8*, i8** %s
  %_87 = call i64 @_B_checksum (i8* %_86)
  store i64 %_87, i64* %_21
  %_88 = load i64, i64* %_20
  %_89 = load i64, i64* %_21
  %_90 = icmp eq i64 %_88, %_89
  store i1 %_90, i1* %_19
  %_91 = load i1, i1* %_19
  %_92 = zext i1 %_91 to i64
  %_93 = or i64 %_92, 72057594037927936
  %_94 = getelementptr i8, i8* null, i64 %_93
  call void @_Bio__println (i8* %_94)
  store i8* null, i8** %_22
  ret void
L8:
  %_95 = load i64, i64* %i.1
  %_96 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_95, i64 1)
  %_97 = extractvalue {i64, i1} %_96, 1
  br i1 %_97, label %L26, label %L25
L9:
  %_99 = load i64, i64* %i.1
  %_100 = load i8*, i8** %s
  %_101 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_100, i64 72057594037927935)
  %_102 = bitcast i8* %_101 to {i64, i64, [0 x i8*]*}*
  %_103 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_102, i64 0, i32 0
  %_104 = load i64, i64* %_103, align 8
  %_105 = icmp ult i64 %_99, %_104
  br i1 %_105, label %L27, label %L28
L10:
  %_143 = zext i1 0 to i64
  %_144 = or i64 %_143, 72057594037927936
  %_145 = getelementptr i8, i8* null, i64 %_144
  call void @_Bio__println (i8* %_145)
  store i8* null, i8** %_18
  br label %L11
L11:
  br label %L8
L12:
  %_146 = load i64, i64* %_23
  call void @_bal_panic (i64 %_146)
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
  %_61 = extractvalue {i64, i1} %_59, 0
  store i64 %_61, i64* %i
  br label %L2
L17:
  store i64 1, i64* %_23
  br label %L12
L18:
  %_71 = extractvalue {i64, i1} %_69, 0
  store i64 %_71, i64* %_4
  %_72 = load i64, i64* %_4
  %_73 = load i64, i64* %m
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %L20, label %L21
L19:
  store i64 3585, i64* %_23
  br label %L12
L20:
  store i64 3586, i64* %_23
  br label %L12
L21:
  %_75 = icmp eq i64 %_72, -9223372036854775808
  %_76 = icmp eq i64 %_73, -1
  %_77 = and i1 %_75, %_76
  br i1 %_77, label %L23, label %L22
L22:
  %_78 = srem i64 %_72, %_73
  store i64 %_78, i64* %_5
  br label %L24
L23:
  store i64 0, i64* %_5
  br label %L24
L24:
  %_79 = load i64, i64* %_5
  store i64 %_79, i64* %x
  br label %L4
L25:
  %_98 = extractvalue {i64, i1} %_96, 0
  store i64 %_98, i64* %i.1
  br label %L6
L26:
  store i64 1, i64* %_23
  br label %L12
L27:
  %_106 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_102, i64 0, i32 2
  %_107 = load [0 x i8*]*, [0 x i8*]** %_106, align 8
  %_108 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_107, i64 0, i64 %_99
  %_109 = load i8*, i8** %_108, align 8
  store i8* %_109, i8** %_13
  %_110 = load i8*, i8** %_13
  %_111 = ptrtoint i8* %_110 to i64
  %_112 = and i64 %_111, 9151314442816847872
  %_113 = icmp eq i64 %_112, 504403158265495552
  br i1 %_113, label %L29, label %L30
L28:
  store i64 4869, i64* %_23
  br label %L12
L29:
  %_114 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_110, i64 72057594037927935)
  %_115 = bitcast i8* %_114 to i64*
  %_116 = load i64, i64* %_115, align 8
  store i64 %_116, i64* %_14
  %_117 = load i64, i64* %i.1
  %_118 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_117, i64 1)
  %_119 = extractvalue {i64, i1} %_118, 1
  br i1 %_119, label %L32, label %L31
L30:
  store i64 4867, i64* %_23
  br label %L12
L31:
  %_120 = extractvalue {i64, i1} %_118, 0
  store i64 %_120, i64* %_15
  %_121 = load i64, i64* %_15
  %_122 = load i8*, i8** %s
  %_123 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_122, i64 72057594037927935)
  %_124 = bitcast i8* %_123 to {i64, i64, [0 x i8*]*}*
  %_125 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_124, i64 0, i32 0
  %_126 = load i64, i64* %_125, align 8
  %_127 = icmp ult i64 %_121, %_126
  br i1 %_127, label %L33, label %L34
L32:
  store i64 4865, i64* %_23
  br label %L12
L33:
  %_128 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_124, i64 0, i32 2
  %_129 = load [0 x i8*]*, [0 x i8*]** %_128, align 8
  %_130 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_129, i64 0, i64 %_121
  %_131 = load i8*, i8** %_130, align 8
  store i8* %_131, i8** %_16
  %_132 = load i8*, i8** %_16
  %_133 = ptrtoint i8* %_132 to i64
  %_134 = and i64 %_133, 9151314442816847872
  %_135 = icmp eq i64 %_134, 504403158265495552
  br i1 %_135, label %L35, label %L36
L34:
  store i64 4869, i64* %_23
  br label %L12
L35:
  %_136 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_132, i64 72057594037927935)
  %_137 = bitcast i8* %_136 to i64*
  %_138 = load i64, i64* %_137, align 8
  store i64 %_138, i64* %_17
  %_139 = load i64, i64* %_14
  %_140 = load i64, i64* %_17
  %_141 = icmp sgt i64 %_139, %_140
  store i1 %_141, i1* %_12
  %_142 = load i1, i1* %_12
  br i1 %_142, label %L10, label %L11
L36:
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
  %_18 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_17, i64 1)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L9, label %L8
L5:
  %_21 = load i64, i64* %i
  %_22 = load i8*, i8** %v
  %_23 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_22, i64 72057594037927935)
  %_24 = bitcast i8* %_23 to {i64, i64, [0 x i8*]*}*
  %_25 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_24, i64 0, i32 0
  %_26 = load i64, i64* %_25, align 8
  %_27 = icmp ult i64 %_21, %_26
  br i1 %_27, label %L10, label %L11
L6:
  %_43 = load i64, i64* %_6
  call void @_bal_panic (i64 %_43)
  unreachable
L7:
  call void @_bal_panic (i64 6660)
  unreachable
L8:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %i
  br label %L2
L9:
  store i64 1, i64* %_6
  br label %L6
L10:
  %_28 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_24, i64 0, i32 2
  %_29 = load [0 x i8*]*, [0 x i8*]** %_28, align 8
  %_30 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_29, i64 0, i64 %_21
  %_31 = load i8*, i8** %_30, align 8
  store i8* %_31, i8** %_3
  %_32 = load i8*, i8** %_3
  %_33 = ptrtoint i8* %_32 to i64
  %_34 = and i64 %_33, 9151314442816847872
  %_35 = icmp eq i64 %_34, 504403158265495552
  br i1 %_35, label %L12, label %L13
L11:
  store i64 7429, i64* %_6
  br label %L6
L12:
  %_36 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_32, i64 72057594037927935)
  %_37 = bitcast i8* %_36 to i64*
  %_38 = load i64, i64* %_37, align 8
  store i64 %_38, i64* %_4
  %_39 = load i64, i64* %c
  %_40 = load i64, i64* %_4
  %_41 = xor i64 %_39, %_40
  store i64 %_41, i64* %_5
  %_42 = load i64, i64* %_5
  store i64 %_42, i64* %c
  br label %L4
L13:
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
  %_60 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_59, i64 1)
  %_61 = extractvalue {i64, i1} %_60, 1
  br i1 %_61, label %L19, label %L18
L7:
  %_63 = load i64, i64* %i
  %_64 = load i8*, i8** %v
  %_65 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_64, i64 72057594037927935)
  %_66 = bitcast i8* %_65 to {i64, i64, [0 x i8*]*}*
  %_67 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_66, i64 0, i32 0
  %_68 = load i64, i64* %_67, align 8
  %_69 = icmp ult i64 %_63, %_68
  br i1 %_69, label %L20, label %L21
L8:
  %_86 = load i64, i64* %i.1
  %_87 = load i64, i64* %_11
  %_88 = icmp slt i64 %_86, %_87
  store i1 %_88, i1* %_12
  %_89 = load i1, i1* %_12
  br i1 %_89, label %L11, label %L9
L9:
  %_90 = load i8*, i8** %list1
  %_91 = call i8* @_B_sort (i8* %_90)
  store i8* %_91, i8** %_16
  %_92 = load i8*, i8** %list2
  %_93 = call i8* @_B_sort (i8* %_92)
  store i8* %_93, i8** %_17
  %_94 = load i8*, i8** %_16
  %_95 = load i8*, i8** %_17
  %_96 = call i8* @_B_merge (i8* %_94, i8* %_95)
  store i8* %_96, i8** %_18
  %_97 = load i8*, i8** %_18
  ret i8* %_97
L10:
  %_98 = load i64, i64* %i.1
  %_99 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_98, i64 1)
  %_100 = extractvalue {i64, i1} %_99, 1
  br i1 %_100, label %L25, label %L24
L11:
  %_102 = load i64, i64* %i.1
  %_103 = load i8*, i8** %v
  %_104 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_103, i64 72057594037927935)
  %_105 = bitcast i8* %_104 to {i64, i64, [0 x i8*]*}*
  %_106 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_105, i64 0, i32 0
  %_107 = load i64, i64* %_106, align 8
  %_108 = icmp ult i64 %_102, %_107
  br i1 %_108, label %L26, label %L27
L12:
  %_125 = load i64, i64* %_19
  call void @_bal_panic (i64 %_125)
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
  %_62 = extractvalue {i64, i1} %_60, 0
  store i64 %_62, i64* %i
  br label %L4
L19:
  store i64 1, i64* %_19
  br label %L12
L20:
  %_70 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_66, i64 0, i32 2
  %_71 = load [0 x i8*]*, [0 x i8*]** %_70, align 8
  %_72 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_71, i64 0, i64 %_63
  %_73 = load i8*, i8** %_72, align 8
  store i8* %_73, i8** %_7
  %_74 = load i8*, i8** %_7
  %_75 = ptrtoint i8* %_74 to i64
  %_76 = and i64 %_75, 9151314442816847872
  %_77 = icmp eq i64 %_76, 504403158265495552
  br i1 %_77, label %L22, label %L23
L21:
  store i64 10757, i64* %_19
  br label %L12
L22:
  %_78 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_74, i64 72057594037927935)
  %_79 = bitcast i8* %_78 to i64*
  %_80 = load i64, i64* %_79, align 8
  store i64 %_80, i64* %_8
  %_81 = load i8*, i8** %list1
  %_82 = load i64, i64* %_8
  %_83 = call i8* @_bal_alloc (i64 8)
  %_84 = bitcast i8* %_83 to i64*
  store i64 %_82, i64* %_84, align 8
  %_85 = getelementptr i8, i8* %_83, i64 504403158265495552
  call void @_Barray__push (i8* %_81, i8* %_85)
  store i8* null, i8** %_9
  br label %L6
L23:
  store i64 10755, i64* %_19
  br label %L12
L24:
  %_101 = extractvalue {i64, i1} %_99, 0
  store i64 %_101, i64* %i.1
  br label %L8
L25:
  store i64 1, i64* %_19
  br label %L12
L26:
  %_109 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_105, i64 0, i32 2
  %_110 = load [0 x i8*]*, [0 x i8*]** %_109, align 8
  %_111 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_110, i64 0, i64 %_102
  %_112 = load i8*, i8** %_111, align 8
  store i8* %_112, i8** %_13
  %_113 = load i8*, i8** %_13
  %_114 = ptrtoint i8* %_113 to i64
  %_115 = and i64 %_114, 9151314442816847872
  %_116 = icmp eq i64 %_115, 504403158265495552
  br i1 %_116, label %L28, label %L29
L27:
  store i64 11781, i64* %_19
  br label %L12
L28:
  %_117 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_113, i64 72057594037927935)
  %_118 = bitcast i8* %_117 to i64*
  %_119 = load i64, i64* %_118, align 8
  store i64 %_119, i64* %_14
  %_120 = load i8*, i8** %list2
  %_121 = load i64, i64* %_14
  %_122 = call i8* @_bal_alloc (i64 8)
  %_123 = bitcast i8* %_122 to i64*
  store i64 %_121, i64* %_123, align 8
  %_124 = getelementptr i8, i8* %_122, i64 504403158265495552
  call void @_Barray__push (i8* %_120, i8* %_124)
  store i8* null, i8** %_15
  br label %L10
L29:
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
