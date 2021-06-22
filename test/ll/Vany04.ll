declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %x = alloca i64
  %_0 = alloca i64
  %v = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i1
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i8*
  %_13 = alloca i64
  store i64 1, i64* %x
  %_14 = load i64, i64* %x
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_14, i64 3)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L3, label %L2
L1:
  %_60 = load i64, i64* %_13
  call void @_bal_panic (i64 %_60)
  unreachable
L2:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_0
  %_18 = load i64, i64* %_0
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 %_18, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 144115188075855872
  store i8* %_21, i8** %v
  %_22 = load i8*, i8** %v
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_1
  %_23 = load i64, i64* %x
  %_24 = icmp eq i64 %_23, 1
  store i1 %_24, i1* %_2
  %_25 = load i1, i1* %_2
  %_26 = zext i1 %_25 to i64
  %_27 = or i64 %_26, 72057594037927936
  %_28 = getelementptr i8, i8* null, i64 %_27
  store i8* %_28, i8** %v
  %_29 = load i8*, i8** %v
  call void @_Bio__println (i8* %_29)
  store i8* null, i8** %_3
  %_30 = load i64, i64* %x
  %_31 = icmp sgt i64 %_30, 2
  store i1 %_31, i1* %_4
  %_32 = load i1, i1* %_4
  %_33 = zext i1 %_32 to i64
  %_34 = or i64 %_33, 72057594037927936
  %_35 = getelementptr i8, i8* null, i64 %_34
  store i8* %_35, i8** %v
  %_36 = load i8*, i8** %v
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_5
  %_37 = load i64, i64* %x
  %_38 = icmp sgt i64 %_37, 2
  store i1 %_38, i1* %_6
  %_39 = load i1, i1* %_6
  %_40 = xor i1 1, %_39
  store i1 %_40, i1* %_7
  %_41 = load i1, i1* %_7
  %_42 = zext i1 %_41 to i64
  %_43 = or i64 %_42, 72057594037927936
  %_44 = getelementptr i8, i8* null, i64 %_43
  store i8* %_44, i8** %v
  %_45 = load i8*, i8** %v
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_8
  %_46 = load i64, i64* %x
  %_47 = icmp sge i64 %_46, 1
  store i1 %_47, i1* %_9
  %_48 = load i1, i1* %_9
  %_49 = zext i1 %_48 to i64
  %_50 = or i64 %_49, 72057594037927936
  %_51 = getelementptr i8, i8* null, i64 %_50
  call void @_Bio__println (i8* %_51)
  store i8* null, i8** %_10
  %_52 = load i64, i64* %x
  %_53 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_52, i64 2)
  %_54 = extractvalue {i64, i1} %_53, 1
  br i1 %_54, label %L5, label %L4
L3:
  store i64 1, i64* %_13
  br label %L1
L4:
  %_55 = extractvalue {i64, i1} %_53, 0
  store i64 %_55, i64* %_11
  %_56 = load i64, i64* %_11
  %_57 = call i8* @_bal_alloc (i64 8)
  %_58 = bitcast i8* %_57 to i64*
  store i64 %_56, i64* %_58, align 8
  %_59 = getelementptr i8, i8* %_57, i64 144115188075855872
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_12
  ret void
L5:
  store i64 1, i64* %_13
  br label %L1
}
