@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_14 = alloca i8
  %_15 = load i8*, i8** @_bal_stack_guard
  %_16 = icmp ult i8* %_14, %_15
  br i1 %_16, label %L3, label %L1
L1:
  store i64 1, i64* %x
  %_17 = load i64, i64* %x
  %_18 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_17, i64 3)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L5, label %L4
L2:
  %_63 = load i64, i64* %_13
  call void @_bal_panic (i64 %_63)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_0
  %_21 = load i64, i64* %_0
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 %_21, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 144115188075855872
  store i8* %_24, i8** %v
  %_25 = load i8*, i8** %v
  call void @_Bio__println (i8* %_25)
  store i8* null, i8** %_1
  %_26 = load i64, i64* %x
  %_27 = icmp eq i64 %_26, 1
  store i1 %_27, i1* %_2
  %_28 = load i1, i1* %_2
  %_29 = zext i1 %_28 to i64
  %_30 = or i64 %_29, 72057594037927936
  %_31 = getelementptr i8, i8* null, i64 %_30
  store i8* %_31, i8** %v
  %_32 = load i8*, i8** %v
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_3
  %_33 = load i64, i64* %x
  %_34 = icmp sgt i64 %_33, 2
  store i1 %_34, i1* %_4
  %_35 = load i1, i1* %_4
  %_36 = zext i1 %_35 to i64
  %_37 = or i64 %_36, 72057594037927936
  %_38 = getelementptr i8, i8* null, i64 %_37
  store i8* %_38, i8** %v
  %_39 = load i8*, i8** %v
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_5
  %_40 = load i64, i64* %x
  %_41 = icmp sgt i64 %_40, 2
  store i1 %_41, i1* %_6
  %_42 = load i1, i1* %_6
  %_43 = xor i1 1, %_42
  store i1 %_43, i1* %_7
  %_44 = load i1, i1* %_7
  %_45 = zext i1 %_44 to i64
  %_46 = or i64 %_45, 72057594037927936
  %_47 = getelementptr i8, i8* null, i64 %_46
  store i8* %_47, i8** %v
  %_48 = load i8*, i8** %v
  call void @_Bio__println (i8* %_48)
  store i8* null, i8** %_8
  %_49 = load i64, i64* %x
  %_50 = icmp sge i64 %_49, 1
  store i1 %_50, i1* %_9
  %_51 = load i1, i1* %_9
  %_52 = zext i1 %_51 to i64
  %_53 = or i64 %_52, 72057594037927936
  %_54 = getelementptr i8, i8* null, i64 %_53
  call void @_Bio__println (i8* %_54)
  store i8* null, i8** %_10
  %_55 = load i64, i64* %x
  %_56 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_55, i64 2)
  %_57 = extractvalue {i64, i1} %_56, 1
  br i1 %_57, label %L7, label %L6
L5:
  store i64 1, i64* %_13
  br label %L2
L6:
  %_58 = extractvalue {i64, i1} %_56, 0
  store i64 %_58, i64* %_11
  %_59 = load i64, i64* %_11
  %_60 = call i8* @_bal_alloc (i64 8)
  %_61 = bitcast i8* %_60 to i64*
  store i64 %_59, i64* %_61, align 8
  %_62 = getelementptr i8, i8* %_60, i64 144115188075855872
  call void @_Bio__println (i8* %_62)
  store i8* null, i8** %_12
  ret void
L7:
  store i64 1, i64* %_13
  br label %L2
}
