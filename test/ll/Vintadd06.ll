declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
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
  %_55 = load i64, i64* %_14
  call void @_bal_panic (i64 %_55)
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
  call void @_Bio__println (i64 %_22)
  store i8* null, i8** %_2
  %_23 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 11)
  %_24 = extractvalue {i64, i1} %_23, 1
  br i1 %_24, label %L7, label %L6
L5:
  store i64 1, i64* %_14
  br label %L1
L6:
  %_25 = extractvalue {i64, i1} %_23, 0
  store i64 %_25, i64* %_3
  %_26 = load i64, i64* %_3
  %_27 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_26, i64 5)
  %_28 = extractvalue {i64, i1} %_27, 1
  br i1 %_28, label %L9, label %L8
L7:
  store i64 1, i64* %_14
  br label %L1
L8:
  %_29 = extractvalue {i64, i1} %_27, 0
  store i64 %_29, i64* %_4
  %_30 = load i64, i64* %_4
  call void @_Bio__println (i64 %_30)
  store i8* null, i8** %_5
  %_31 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_32 = extractvalue {i64, i1} %_31, 1
  br i1 %_32, label %L11, label %L10
L9:
  store i64 1, i64* %_14
  br label %L1
L10:
  %_33 = extractvalue {i64, i1} %_31, 0
  store i64 %_33, i64* %_6
  %_34 = load i64, i64* %_6
  %_35 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_34, i64 5)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L13, label %L12
L11:
  store i64 1, i64* %_14
  br label %L1
L12:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_7
  %_38 = load i64, i64* %_7
  %_39 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_38, i64 9)
  %_40 = extractvalue {i64, i1} %_39, 1
  br i1 %_40, label %L15, label %L14
L13:
  store i64 1, i64* %_14
  br label %L1
L14:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_8
  %_42 = load i64, i64* %_8
  call void @_Bio__println (i64 %_42)
  store i8* null, i8** %_9
  %_43 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 3, i64 5)
  %_44 = extractvalue {i64, i1} %_43, 1
  br i1 %_44, label %L17, label %L16
L15:
  store i64 1, i64* %_14
  br label %L1
L16:
  %_45 = extractvalue {i64, i1} %_43, 0
  store i64 %_45, i64* %_10
  %_46 = load i64, i64* %_10
  %_47 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_46, i64 9)
  %_48 = extractvalue {i64, i1} %_47, 1
  br i1 %_48, label %L19, label %L18
L17:
  store i64 1, i64* %_14
  br label %L1
L18:
  %_49 = extractvalue {i64, i1} %_47, 0
  store i64 %_49, i64* %_11
  %_50 = load i64, i64* %_11
  %_51 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_50, i64 4)
  %_52 = extractvalue {i64, i1} %_51, 1
  br i1 %_52, label %L21, label %L20
L19:
  store i64 1, i64* %_14
  br label %L1
L20:
  %_53 = extractvalue {i64, i1} %_51, 0
  store i64 %_53, i64* %_12
  %_54 = load i64, i64* %_12
  call void @_Bio__println (i64 %_54)
  store i8* null, i8** %_13
  ret void
L21:
  store i64 1, i64* %_14
  br label %L1
}
