declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_23 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -2, i64 5)
  %_24 = extractvalue {i64, i1} %_23, 1
  br i1 %_24, label %L3, label %L2
L1:
  %_56 = load i64, i64* %_22
  call void @_bal_panic (i64 %_56)
  unreachable
L2:
  %_25 = extractvalue {i64, i1} %_23, 0
  store i64 %_25, i64* %_1
  %_26 = load i64, i64* %_1
  %_27 = call i8* @_bal_alloc (i64 8)
  %_28 = bitcast i8* %_27 to i64*
  store i64 %_26, i64* %_28, align 8
  %_29 = getelementptr i8, i8* %_27, i64 144115188075855872
  call void @_Bio__println (i8* %_29)
  store i8* null, i8** %_2
  %_30 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 -2)
  %_31 = extractvalue {i64, i1} %_30, 1
  br i1 %_31, label %L5, label %L4
L3:
  store i64 1, i64* %_22
  br label %L1
L4:
  %_32 = extractvalue {i64, i1} %_30, 0
  store i64 %_32, i64* %_4
  %_33 = load i64, i64* %_4
  %_34 = call i8* @_bal_alloc (i64 8)
  %_35 = bitcast i8* %_34 to i64*
  store i64 %_33, i64* %_35, align 8
  %_36 = getelementptr i8, i8* %_34, i64 144115188075855872
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_5
  %_37 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -2, i64 3)
  %_38 = extractvalue {i64, i1} %_37, 1
  br i1 %_38, label %L7, label %L6
L5:
  store i64 1, i64* %_22
  br label %L1
L6:
  %_39 = extractvalue {i64, i1} %_37, 0
  store i64 %_39, i64* %_7
  %_40 = load i64, i64* %_7
  %_41 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 %_40)
  %_42 = extractvalue {i64, i1} %_41, 1
  br i1 %_42, label %L9, label %L8
L7:
  store i64 1, i64* %_22
  br label %L1
L8:
  %_43 = extractvalue {i64, i1} %_41, 0
  store i64 %_43, i64* %_8
  %_44 = load i64, i64* %_8
  %_45 = call i8* @_bal_alloc (i64 8)
  %_46 = bitcast i8* %_45 to i64*
  store i64 %_44, i64* %_46, align 8
  %_47 = getelementptr i8, i8* %_45, i64 144115188075855872
  call void @_Bio__println (i8* %_47)
  store i8* null, i8** %_9
  %_48 = icmp slt i64 -5, 2
  store i1 %_48, i1* %_10
  %_49 = load i1, i1* %_10
  call void @_B_printBoolean (i1 %_49)
  store i8* null, i8** %_12
  %_50 = icmp sge i64 2, -5
  store i1 %_50, i1* %_13
  %_51 = load i1, i1* %_13
  call void @_B_printBoolean (i1 %_51)
  store i8* null, i8** %_15
  %_52 = icmp uge i1 1, 0
  store i1 %_52, i1* %_16
  %_53 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_53)
  store i8* null, i8** %_18
  %_54 = icmp ule i1 0, 1
  store i1 %_54, i1* %_19
  %_55 = load i1, i1* %_19
  call void @_B_printBoolean (i1 %_55)
  store i8* null, i8** %_21
  ret void
L9:
  store i64 1, i64* %_22
  br label %L1
}
define internal void @_B_printBoolean (i1 %_0) {
  %x = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 %_0, i1* %x
  %_3 = load i1, i1* %x
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 1, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_1
  br label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 0, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
