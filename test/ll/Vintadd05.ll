@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L3, label %L1
L1:
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 0)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L5, label %L4
L2:
  %_55 = load i64, i64* %_11
  call void @_bal_panic (i64 %_55)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_0
  %_18 = load i64, i64* %_0
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 %_18, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 504403158265495552
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_1
  %_22 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L7, label %L6
L5:
  store i64 769, i64* %_11
  br label %L2
L6:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_2
  %_25 = load i64, i64* %_2
  %_26 = call i8* @_bal_alloc (i64 8)
  %_27 = bitcast i8* %_26 to i64*
  store i64 %_25, i64* %_27, align 8
  %_28 = getelementptr i8, i8* %_26, i64 504403158265495552
  call void @_Bio__println (i8* %_28)
  store i8* null, i8** %_3
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L9, label %L8
L7:
  store i64 1025, i64* %_11
  br label %L2
L8:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_4
  %_32 = load i64, i64* %_4
  %_33 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_32, i64 0)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L11, label %L10
L9:
  store i64 1281, i64* %_11
  br label %L2
L10:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_5
  %_36 = load i64, i64* %_5
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 %_36, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 504403158265495552
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_6
  %_40 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_41 = extractvalue {i64, i1} %_40, 1
  br i1 %_41, label %L13, label %L12
L11:
  store i64 1281, i64* %_11
  br label %L2
L12:
  %_42 = extractvalue {i64, i1} %_40, 0
  store i64 %_42, i64* %_7
  %_43 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_44 = extractvalue {i64, i1} %_43, 1
  br i1 %_44, label %L15, label %L14
L13:
  store i64 1537, i64* %_11
  br label %L2
L14:
  %_45 = extractvalue {i64, i1} %_43, 0
  store i64 %_45, i64* %_8
  %_46 = load i64, i64* %_7
  %_47 = load i64, i64* %_8
  %_48 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_46, i64 %_47)
  %_49 = extractvalue {i64, i1} %_48, 1
  br i1 %_49, label %L17, label %L16
L15:
  store i64 1537, i64* %_11
  br label %L2
L16:
  %_50 = extractvalue {i64, i1} %_48, 0
  store i64 %_50, i64* %_9
  %_51 = load i64, i64* %_9
  %_52 = call i8* @_bal_alloc (i64 8)
  %_53 = bitcast i8* %_52 to i64*
  store i64 %_51, i64* %_53, align 8
  %_54 = getelementptr i8, i8* %_52, i64 504403158265495552
  call void @_Bio__println (i8* %_54)
  store i8* null, i8** %_10
  ret void
L17:
  store i64 1537, i64* %_11
  br label %L2
}
