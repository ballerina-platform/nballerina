@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_10 = alloca i1
  %_11 = alloca i64
  %_12 = alloca i8*
  %_13 = alloca i1
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i1
  %_17 = alloca i1
  %_18 = alloca i8*
  %_19 = alloca i1
  %_20 = alloca i1
  %_21 = alloca i8*
  %_22 = alloca i64
  %_23 = alloca i8
  %_24 = load i8*, i8** @_bal_stack_guard
  %_25 = icmp ult i8* %_23, %_24
  br i1 %_25, label %L3, label %L1
L1:
  %_26 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -2, i64 5)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L5, label %L4
L2:
  %_59 = load i64, i64* %_22
  call void @_bal_panic (i64 %_59)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_1
  %_29 = load i64, i64* %_1
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 %_29, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 504403158265495552
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_2
  %_33 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 -2)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L7, label %L6
L5:
  store i64 1025, i64* %_22
  br label %L2
L6:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_4
  %_36 = load i64, i64* %_4
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 %_36, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 504403158265495552
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_5
  %_40 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -2, i64 3)
  %_41 = extractvalue {i64, i1} %_40, 1
  br i1 %_41, label %L9, label %L8
L7:
  store i64 1281, i64* %_22
  br label %L2
L8:
  %_42 = extractvalue {i64, i1} %_40, 0
  store i64 %_42, i64* %_7
  %_43 = load i64, i64* %_7
  %_44 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 %_43)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L11, label %L10
L9:
  store i64 1537, i64* %_22
  br label %L2
L10:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_8
  %_47 = load i64, i64* %_8
  %_48 = call i8* @_bal_alloc (i64 8)
  %_49 = bitcast i8* %_48 to i64*
  store i64 %_47, i64* %_49, align 8
  %_50 = getelementptr i8, i8* %_48, i64 504403158265495552
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_9
  %_51 = icmp slt i64 -5, 2
  store i1 %_51, i1* %_10
  %_52 = load i1, i1* %_10
  call void @_B_printBoolean (i1 %_52)
  store i8* null, i8** %_12
  %_53 = icmp sge i64 2, -5
  store i1 %_53, i1* %_13
  %_54 = load i1, i1* %_13
  call void @_B_printBoolean (i1 %_54)
  store i8* null, i8** %_15
  %_55 = icmp uge i1 1, 0
  store i1 %_55, i1* %_16
  %_56 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_56)
  store i8* null, i8** %_18
  %_57 = icmp ule i1 0, 1
  store i1 %_57, i1* %_19
  %_58 = load i1, i1* %_19
  call void @_B_printBoolean (i1 %_58)
  store i8* null, i8** %_21
  ret void
L11:
  store i64 1537, i64* %_22
  br label %L2
}
define internal void @_B_printBoolean (i1 %_0) {
  %x = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %x
  %_6 = load i1, i1* %x
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 1, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 0, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 504403158265495552
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3588)
  unreachable
}
