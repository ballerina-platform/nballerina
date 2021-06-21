declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
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
  %_29 = alloca i64
  %_30 = alloca i8*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8*
  %_41 = alloca i64
  %_42 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_43 = extractvalue {i64, i1} %_42, 1
  br i1 %_43, label %L3, label %L2
L1:
  %_102 = load i64, i64* %_41
  call void @_bal_panic (i64 %_102)
  unreachable
L2:
  %_44 = extractvalue {i64, i1} %_42, 0
  store i64 %_44, i64* %_0
  %_45 = load i64, i64* %_0
  call void @_Bio__println (i64 %_45)
  store i8* null, i8** %_1
  %_46 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_47 = extractvalue {i64, i1} %_46, 1
  br i1 %_47, label %L5, label %L4
L3:
  store i64 1, i64* %_41
  br label %L1
L4:
  %_48 = extractvalue {i64, i1} %_46, 0
  store i64 %_48, i64* %_2
  %_49 = load i64, i64* %_2
  call void @_Bio__println (i64 %_49)
  store i8* null, i8** %_3
  %_50 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 -1)
  %_51 = extractvalue {i64, i1} %_50, 1
  br i1 %_51, label %L7, label %L6
L5:
  store i64 1, i64* %_41
  br label %L1
L6:
  %_52 = extractvalue {i64, i1} %_50, 0
  store i64 %_52, i64* %_5
  %_53 = load i64, i64* %_5
  call void @_Bio__println (i64 %_53)
  store i8* null, i8** %_6
  %_54 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 1)
  %_55 = extractvalue {i64, i1} %_54, 1
  br i1 %_55, label %L9, label %L8
L7:
  store i64 1, i64* %_41
  br label %L1
L8:
  %_56 = extractvalue {i64, i1} %_54, 0
  store i64 %_56, i64* %_7
  %_57 = load i64, i64* %_7
  call void @_Bio__println (i64 %_57)
  store i8* null, i8** %_8
  %_58 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 0)
  %_59 = extractvalue {i64, i1} %_58, 1
  br i1 %_59, label %L11, label %L10
L9:
  store i64 1, i64* %_41
  br label %L1
L10:
  %_60 = extractvalue {i64, i1} %_58, 0
  store i64 %_60, i64* %_9
  %_61 = load i64, i64* %_9
  call void @_Bio__println (i64 %_61)
  store i8* null, i8** %_10
  %_62 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 -1)
  %_63 = extractvalue {i64, i1} %_62, 1
  br i1 %_63, label %L13, label %L12
L11:
  store i64 1, i64* %_41
  br label %L1
L12:
  %_64 = extractvalue {i64, i1} %_62, 0
  store i64 %_64, i64* %_12
  %_65 = load i64, i64* %_12
  call void @_Bio__println (i64 %_65)
  store i8* null, i8** %_13
  %_66 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 1)
  %_67 = extractvalue {i64, i1} %_66, 1
  br i1 %_67, label %L15, label %L14
L13:
  store i64 1, i64* %_41
  br label %L1
L14:
  %_68 = extractvalue {i64, i1} %_66, 0
  store i64 %_68, i64* %_14
  %_69 = load i64, i64* %_14
  call void @_Bio__println (i64 %_69)
  store i8* null, i8** %_15
  %_70 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 0)
  %_71 = extractvalue {i64, i1} %_70, 1
  br i1 %_71, label %L17, label %L16
L15:
  store i64 1, i64* %_41
  br label %L1
L16:
  %_72 = extractvalue {i64, i1} %_70, 0
  store i64 %_72, i64* %_16
  %_73 = load i64, i64* %_16
  call void @_Bio__println (i64 %_73)
  store i8* null, i8** %_17
  %_74 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 -1)
  %_75 = extractvalue {i64, i1} %_74, 1
  br i1 %_75, label %L19, label %L18
L17:
  store i64 1, i64* %_41
  br label %L1
L18:
  %_76 = extractvalue {i64, i1} %_74, 0
  store i64 %_76, i64* %_19
  %_77 = load i64, i64* %_19
  call void @_Bio__println (i64 %_77)
  store i8* null, i8** %_20
  %_78 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 1)
  %_79 = extractvalue {i64, i1} %_78, 1
  br i1 %_79, label %L21, label %L20
L19:
  store i64 1, i64* %_41
  br label %L1
L20:
  %_80 = extractvalue {i64, i1} %_78, 0
  store i64 %_80, i64* %_22
  %_81 = load i64, i64* %_22
  call void @_Bio__println (i64 %_81)
  store i8* null, i8** %_23
  %_82 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 0)
  %_83 = extractvalue {i64, i1} %_82, 1
  br i1 %_83, label %L23, label %L22
L21:
  store i64 1, i64* %_41
  br label %L1
L22:
  %_84 = extractvalue {i64, i1} %_82, 0
  store i64 %_84, i64* %_25
  %_85 = load i64, i64* %_25
  call void @_Bio__println (i64 %_85)
  store i8* null, i8** %_26
  %_86 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 -1)
  %_87 = extractvalue {i64, i1} %_86, 1
  br i1 %_87, label %L25, label %L24
L23:
  store i64 1, i64* %_41
  br label %L1
L24:
  %_88 = extractvalue {i64, i1} %_86, 0
  store i64 %_88, i64* %_29
  %_89 = load i64, i64* %_29
  call void @_Bio__println (i64 %_89)
  store i8* null, i8** %_30
  %_90 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 1)
  %_91 = extractvalue {i64, i1} %_90, 1
  br i1 %_91, label %L27, label %L26
L25:
  store i64 1, i64* %_41
  br label %L1
L26:
  %_92 = extractvalue {i64, i1} %_90, 0
  store i64 %_92, i64* %_32
  %_93 = load i64, i64* %_32
  call void @_Bio__println (i64 %_93)
  store i8* null, i8** %_33
  %_94 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 0)
  %_95 = extractvalue {i64, i1} %_94, 1
  br i1 %_95, label %L29, label %L28
L27:
  store i64 1, i64* %_41
  br label %L1
L28:
  %_96 = extractvalue {i64, i1} %_94, 0
  store i64 %_96, i64* %_35
  %_97 = load i64, i64* %_35
  call void @_Bio__println (i64 %_97)
  store i8* null, i8** %_36
  %_98 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 -1)
  %_99 = extractvalue {i64, i1} %_98, 1
  br i1 %_99, label %L31, label %L30
L29:
  store i64 1, i64* %_41
  br label %L1
L30:
  %_100 = extractvalue {i64, i1} %_98, 0
  store i64 %_100, i64* %_39
  %_101 = load i64, i64* %_39
  call void @_Bio__println (i64 %_101)
  store i8* null, i8** %_40
  ret void
L31:
  store i64 1, i64* %_41
  br label %L1
}
