declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8*
  %_15 = alloca i64
  %_16 = alloca i8*
  %_17 = alloca i64
  %_18 = alloca i8*
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i8*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i8*
  %_40 = alloca i64
  %_41 = alloca i8*
  %_42 = alloca i64
  %_43 = alloca i8*
  %_44 = alloca i64
  %_45 = alloca i8*
  %_46 = alloca i64
  %_47 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 9223372036854775806)
  %_48 = extractvalue {i64, i1} %_47, 1
  br i1 %_48, label %L3, label %L2
L1:
  %_123 = load i64, i64* %_46
  call void @_bal_panic (i64 %_123)
  unreachable
L2:
  %_49 = extractvalue {i64, i1} %_47, 0
  store i64 %_49, i64* %_0
  %_50 = load i64, i64* %_0
  call void @_Bio__println (i64 %_50)
  store i8* null, i8** %_1
  %_51 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_52 = extractvalue {i64, i1} %_51, 1
  br i1 %_52, label %L5, label %L4
L3:
  store i64 1, i64* %_46
  br label %L1
L4:
  %_53 = extractvalue {i64, i1} %_51, 0
  store i64 %_53, i64* %_2
  %_54 = load i64, i64* %_2
  call void @_Bio__println (i64 %_54)
  store i8* null, i8** %_3
  %_55 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_56 = extractvalue {i64, i1} %_55, 1
  br i1 %_56, label %L7, label %L6
L5:
  store i64 1, i64* %_46
  br label %L1
L6:
  %_57 = extractvalue {i64, i1} %_55, 0
  store i64 %_57, i64* %_4
  %_58 = load i64, i64* %_4
  call void @_Bio__println (i64 %_58)
  store i8* null, i8** %_5
  %_59 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_60 = extractvalue {i64, i1} %_59, 1
  br i1 %_60, label %L9, label %L8
L7:
  store i64 1, i64* %_46
  br label %L1
L8:
  %_61 = extractvalue {i64, i1} %_59, 0
  store i64 %_61, i64* %_6
  %_62 = load i64, i64* %_6
  call void @_Bio__println (i64 %_62)
  store i8* null, i8** %_7
  %_63 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 1)
  %_64 = extractvalue {i64, i1} %_63, 1
  br i1 %_64, label %L11, label %L10
L9:
  store i64 1, i64* %_46
  br label %L1
L10:
  %_65 = extractvalue {i64, i1} %_63, 0
  store i64 %_65, i64* %_8
  %_66 = load i64, i64* %_8
  call void @_Bio__println (i64 %_66)
  store i8* null, i8** %_9
  %_67 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_68 = extractvalue {i64, i1} %_67, 1
  br i1 %_68, label %L13, label %L12
L11:
  store i64 1, i64* %_46
  br label %L1
L12:
  %_69 = extractvalue {i64, i1} %_67, 0
  store i64 %_69, i64* %_10
  %_70 = load i64, i64* %_10
  call void @_Bio__println (i64 %_70)
  store i8* null, i8** %_11
  %_71 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -1, i64 1)
  %_72 = extractvalue {i64, i1} %_71, 1
  br i1 %_72, label %L15, label %L14
L13:
  store i64 1, i64* %_46
  br label %L1
L14:
  %_73 = extractvalue {i64, i1} %_71, 0
  store i64 %_73, i64* %_13
  %_74 = load i64, i64* %_13
  call void @_Bio__println (i64 %_74)
  store i8* null, i8** %_14
  %_75 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_76 = extractvalue {i64, i1} %_75, 1
  br i1 %_76, label %L17, label %L16
L15:
  store i64 1, i64* %_46
  br label %L1
L16:
  %_77 = extractvalue {i64, i1} %_75, 0
  store i64 %_77, i64* %_15
  %_78 = load i64, i64* %_15
  call void @_Bio__println (i64 %_78)
  store i8* null, i8** %_16
  %_79 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 0)
  %_80 = extractvalue {i64, i1} %_79, 1
  br i1 %_80, label %L19, label %L18
L17:
  store i64 1, i64* %_46
  br label %L1
L18:
  %_81 = extractvalue {i64, i1} %_79, 0
  store i64 %_81, i64* %_17
  %_82 = load i64, i64* %_17
  call void @_Bio__println (i64 %_82)
  store i8* null, i8** %_18
  %_83 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_84 = extractvalue {i64, i1} %_83, 1
  br i1 %_84, label %L21, label %L20
L19:
  store i64 1, i64* %_46
  br label %L1
L20:
  %_85 = extractvalue {i64, i1} %_83, 0
  store i64 %_85, i64* %_19
  %_86 = load i64, i64* %_19
  call void @_Bio__println (i64 %_86)
  store i8* null, i8** %_20
  %_87 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -1, i64 0)
  %_88 = extractvalue {i64, i1} %_87, 1
  br i1 %_88, label %L23, label %L22
L21:
  store i64 1, i64* %_46
  br label %L1
L22:
  %_89 = extractvalue {i64, i1} %_87, 0
  store i64 %_89, i64* %_22
  %_90 = load i64, i64* %_22
  call void @_Bio__println (i64 %_90)
  store i8* null, i8** %_23
  %_91 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775806, i64 0)
  %_92 = extractvalue {i64, i1} %_91, 1
  br i1 %_92, label %L25, label %L24
L23:
  store i64 1, i64* %_46
  br label %L1
L24:
  %_93 = extractvalue {i64, i1} %_91, 0
  store i64 %_93, i64* %_25
  %_94 = load i64, i64* %_25
  call void @_Bio__println (i64 %_94)
  store i8* null, i8** %_26
  %_95 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 -1)
  %_96 = extractvalue {i64, i1} %_95, 1
  br i1 %_96, label %L27, label %L26
L25:
  store i64 1, i64* %_46
  br label %L1
L26:
  %_97 = extractvalue {i64, i1} %_95, 0
  store i64 %_97, i64* %_28
  %_98 = load i64, i64* %_28
  call void @_Bio__println (i64 %_98)
  store i8* null, i8** %_29
  %_99 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 -1)
  %_100 = extractvalue {i64, i1} %_99, 1
  br i1 %_100, label %L29, label %L28
L27:
  store i64 1, i64* %_46
  br label %L1
L28:
  %_101 = extractvalue {i64, i1} %_99, 0
  store i64 %_101, i64* %_31
  %_102 = load i64, i64* %_31
  call void @_Bio__println (i64 %_102)
  store i8* null, i8** %_32
  %_103 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 -1)
  %_104 = extractvalue {i64, i1} %_103, 1
  br i1 %_104, label %L31, label %L30
L29:
  store i64 1, i64* %_46
  br label %L1
L30:
  %_105 = extractvalue {i64, i1} %_103, 0
  store i64 %_105, i64* %_34
  %_106 = load i64, i64* %_34
  call void @_Bio__println (i64 %_106)
  store i8* null, i8** %_35
  %_107 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -1, i64 -1)
  %_108 = extractvalue {i64, i1} %_107, 1
  br i1 %_108, label %L33, label %L32
L31:
  store i64 1, i64* %_46
  br label %L1
L32:
  %_109 = extractvalue {i64, i1} %_107, 0
  store i64 %_109, i64* %_38
  %_110 = load i64, i64* %_38
  call void @_Bio__println (i64 %_110)
  store i8* null, i8** %_39
  %_111 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 9223372036854775806)
  %_112 = extractvalue {i64, i1} %_111, 1
  br i1 %_112, label %L35, label %L34
L33:
  store i64 1, i64* %_46
  br label %L1
L34:
  %_113 = extractvalue {i64, i1} %_111, 0
  store i64 %_113, i64* %_40
  %_114 = load i64, i64* %_40
  call void @_Bio__println (i64 %_114)
  store i8* null, i8** %_41
  %_115 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_116 = extractvalue {i64, i1} %_115, 1
  br i1 %_116, label %L37, label %L36
L35:
  store i64 1, i64* %_46
  br label %L1
L36:
  %_117 = extractvalue {i64, i1} %_115, 0
  store i64 %_117, i64* %_42
  %_118 = load i64, i64* %_42
  call void @_Bio__println (i64 %_118)
  store i8* null, i8** %_43
  %_119 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_120 = extractvalue {i64, i1} %_119, 1
  br i1 %_120, label %L39, label %L38
L37:
  store i64 1, i64* %_46
  br label %L1
L38:
  %_121 = extractvalue {i64, i1} %_119, 0
  store i64 %_121, i64* %_44
  %_122 = load i64, i64* %_44
  call void @_Bio__println (i64 %_122)
  store i8* null, i8** %_45
  ret void
L39:
  store i64 1, i64* %_46
  br label %L1
}
