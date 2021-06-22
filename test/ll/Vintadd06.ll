declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 8, i64 5)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L3, label %L2
L1:
  %_67 = load i64, i64* %_14
  call void @_bal_panic (i64 %_67)
  unreachable
L2:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_0
  %_18 = load i64, i64* %_0
  %_19 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_18, i64 11)
  %_20 = extractvalue {i64, i1} %_19, 1
  br i1 %_20, label %L5, label %L4
L3:
  store i64 1, i64* %_14
  br label %L1
L4:
  %_21 = extractvalue {i64, i1} %_19, 0
  store i64 %_21, i64* %_1
  %_22 = load i64, i64* %_1
  %_23 = call i8* @_bal_alloc (i64 8)
  %_24 = bitcast i8* %_23 to i64*
  store i64 %_22, i64* %_24, align 8
  %_25 = getelementptr i8, i8* %_23, i64 144115188075855872
  call void @_Bio__println (i8* %_25)
  store i8* null, i8** %_2
  %_26 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 11)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L7, label %L6
L5:
  store i64 1, i64* %_14
  br label %L1
L6:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_3
  %_29 = load i64, i64* %_3
  %_30 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_29, i64 5)
  %_31 = extractvalue {i64, i1} %_30, 1
  br i1 %_31, label %L9, label %L8
L7:
  store i64 1, i64* %_14
  br label %L1
L8:
  %_32 = extractvalue {i64, i1} %_30, 0
  store i64 %_32, i64* %_4
  %_33 = load i64, i64* %_4
  %_34 = call i8* @_bal_alloc (i64 8)
  %_35 = bitcast i8* %_34 to i64*
  store i64 %_33, i64* %_35, align 8
  %_36 = getelementptr i8, i8* %_34, i64 144115188075855872
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_5
  %_37 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_38 = extractvalue {i64, i1} %_37, 1
  br i1 %_38, label %L11, label %L10
L9:
  store i64 1, i64* %_14
  br label %L1
L10:
  %_39 = extractvalue {i64, i1} %_37, 0
  store i64 %_39, i64* %_6
  %_40 = load i64, i64* %_6
  %_41 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_40, i64 5)
  %_42 = extractvalue {i64, i1} %_41, 1
  br i1 %_42, label %L13, label %L12
L11:
  store i64 1, i64* %_14
  br label %L1
L12:
  %_43 = extractvalue {i64, i1} %_41, 0
  store i64 %_43, i64* %_7
  %_44 = load i64, i64* %_7
  %_45 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_44, i64 9)
  %_46 = extractvalue {i64, i1} %_45, 1
  br i1 %_46, label %L15, label %L14
L13:
  store i64 1, i64* %_14
  br label %L1
L14:
  %_47 = extractvalue {i64, i1} %_45, 0
  store i64 %_47, i64* %_8
  %_48 = load i64, i64* %_8
  %_49 = call i8* @_bal_alloc (i64 8)
  %_50 = bitcast i8* %_49 to i64*
  store i64 %_48, i64* %_50, align 8
  %_51 = getelementptr i8, i8* %_49, i64 144115188075855872
  call void @_Bio__println (i8* %_51)
  store i8* null, i8** %_9
  %_52 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 3, i64 5)
  %_53 = extractvalue {i64, i1} %_52, 1
  br i1 %_53, label %L17, label %L16
L15:
  store i64 1, i64* %_14
  br label %L1
L16:
  %_54 = extractvalue {i64, i1} %_52, 0
  store i64 %_54, i64* %_10
  %_55 = load i64, i64* %_10
  %_56 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_55, i64 9)
  %_57 = extractvalue {i64, i1} %_56, 1
  br i1 %_57, label %L19, label %L18
L17:
  store i64 1, i64* %_14
  br label %L1
L18:
  %_58 = extractvalue {i64, i1} %_56, 0
  store i64 %_58, i64* %_11
  %_59 = load i64, i64* %_11
  %_60 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_59, i64 4)
  %_61 = extractvalue {i64, i1} %_60, 1
  br i1 %_61, label %L21, label %L20
L19:
  store i64 1, i64* %_14
  br label %L1
L20:
  %_62 = extractvalue {i64, i1} %_60, 0
  store i64 %_62, i64* %_12
  %_63 = load i64, i64* %_12
  %_64 = call i8* @_bal_alloc (i64 8)
  %_65 = bitcast i8* %_64 to i64*
  store i64 %_63, i64* %_65, align 8
  %_66 = getelementptr i8, i8* %_64, i64 144115188075855872
  call void @_Bio__println (i8* %_66)
  store i8* null, i8** %_13
  ret void
L21:
  store i64 1, i64* %_14
  br label %L1
}
