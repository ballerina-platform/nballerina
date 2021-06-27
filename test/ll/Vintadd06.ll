@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L3, label %L1
L1:
  %_18 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 8, i64 5)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L5, label %L4
L2:
  %_70 = load i64, i64* %_14
  call void @_bal_panic (i64 %_70)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_0
  %_21 = load i64, i64* %_0
  %_22 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_21, i64 11)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L7, label %L6
L5:
  store i64 1025, i64* %_14
  br label %L2
L6:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_1
  %_25 = load i64, i64* %_1
  %_26 = call i8* @_bal_alloc (i64 8)
  %_27 = bitcast i8* %_26 to i64*
  store i64 %_25, i64* %_27, align 8
  %_28 = getelementptr i8, i8* %_26, i64 144115188075855872
  call void @_Bio__println (i8* %_28)
  store i8* null, i8** %_2
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 11)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L9, label %L8
L7:
  store i64 1025, i64* %_14
  br label %L2
L8:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_3
  %_32 = load i64, i64* %_3
  %_33 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_32, i64 5)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L11, label %L10
L9:
  store i64 1281, i64* %_14
  br label %L2
L10:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_4
  %_36 = load i64, i64* %_4
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 %_36, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 144115188075855872
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_5
  %_40 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_41 = extractvalue {i64, i1} %_40, 1
  br i1 %_41, label %L13, label %L12
L11:
  store i64 1281, i64* %_14
  br label %L2
L12:
  %_42 = extractvalue {i64, i1} %_40, 0
  store i64 %_42, i64* %_6
  %_43 = load i64, i64* %_6
  %_44 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_43, i64 5)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L15, label %L14
L13:
  store i64 1537, i64* %_14
  br label %L2
L14:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_7
  %_47 = load i64, i64* %_7
  %_48 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_47, i64 9)
  %_49 = extractvalue {i64, i1} %_48, 1
  br i1 %_49, label %L17, label %L16
L15:
  store i64 1537, i64* %_14
  br label %L2
L16:
  %_50 = extractvalue {i64, i1} %_48, 0
  store i64 %_50, i64* %_8
  %_51 = load i64, i64* %_8
  %_52 = call i8* @_bal_alloc (i64 8)
  %_53 = bitcast i8* %_52 to i64*
  store i64 %_51, i64* %_53, align 8
  %_54 = getelementptr i8, i8* %_52, i64 144115188075855872
  call void @_Bio__println (i8* %_54)
  store i8* null, i8** %_9
  %_55 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 3, i64 5)
  %_56 = extractvalue {i64, i1} %_55, 1
  br i1 %_56, label %L19, label %L18
L17:
  store i64 1537, i64* %_14
  br label %L2
L18:
  %_57 = extractvalue {i64, i1} %_55, 0
  store i64 %_57, i64* %_10
  %_58 = load i64, i64* %_10
  %_59 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_58, i64 9)
  %_60 = extractvalue {i64, i1} %_59, 1
  br i1 %_60, label %L21, label %L20
L19:
  store i64 1793, i64* %_14
  br label %L2
L20:
  %_61 = extractvalue {i64, i1} %_59, 0
  store i64 %_61, i64* %_11
  %_62 = load i64, i64* %_11
  %_63 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_62, i64 4)
  %_64 = extractvalue {i64, i1} %_63, 1
  br i1 %_64, label %L23, label %L22
L21:
  store i64 1793, i64* %_14
  br label %L2
L22:
  %_65 = extractvalue {i64, i1} %_63, 0
  store i64 %_65, i64* %_12
  %_66 = load i64, i64* %_12
  %_67 = call i8* @_bal_alloc (i64 8)
  %_68 = bitcast i8* %_67 to i64*
  store i64 %_66, i64* %_68, align 8
  %_69 = getelementptr i8, i8* %_67, i64 144115188075855872
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_13
  ret void
L23:
  store i64 1793, i64* %_14
  br label %L2
}
