declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i64, align 8
  %_9 = alloca i64, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i64, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i64, align 8
  %_17 = alloca i64, align 8
  %_18 = alloca i64, align 8
  %_19 = alloca i1, align 8
  %_20 = alloca i64, align 8
  %_21 = call i64 @_B_foo ()
  store i64 %_21, i64* %_0, align 8
  %_22 = call i64 @_B_bar ()
  store i64 %_22, i64* %_1, align 8
  %_23 = load i64, i64* %_0, align 8
  %_24 = load i64, i64* %_1, align 8
  %_25 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_23, i64 %_24)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L3, label %L2
L1:
  %_65 = load i64, i64* %_20, align 8
  call void @_bal_panic (i64 %_65)
  unreachable
L2:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_2, align 8
  %_28 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_28)
  store i1 0, i1* %_3, align 8
  %_29 = call i64 @_B_foo ()
  store i64 %_29, i64* %_4, align 8
  %_30 = call i64 @_B_bar ()
  store i64 %_30, i64* %_5, align 8
  %_31 = load i64, i64* %_4, align 8
  %_32 = load i64, i64* %_5, align 8
  %_33 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_31, i64 %_32)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L5, label %L4
L3:
  store i64 1, i64* %_20, align 8
  br label %L1
L4:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_6, align 8
  %_36 = load i64, i64* %_6, align 8
  call void @_Bio__println (i64 %_36)
  store i1 0, i1* %_7, align 8
  %_37 = call i64 @_B_foo ()
  store i64 %_37, i64* %_8, align 8
  %_38 = call i64 @_B_bar ()
  store i64 %_38, i64* %_9, align 8
  %_39 = load i64, i64* %_8, align 8
  %_40 = load i64, i64* %_9, align 8
  %_41 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_39, i64 %_40)
  %_42 = extractvalue {i64, i1} %_41, 1
  br i1 %_42, label %L7, label %L6
L5:
  store i64 1, i64* %_20, align 8
  br label %L1
L6:
  %_43 = extractvalue {i64, i1} %_41, 0
  store i64 %_43, i64* %_10, align 8
  %_44 = load i64, i64* %_10, align 8
  call void @_Bio__println (i64 %_44)
  store i1 0, i1* %_11, align 8
  %_45 = call i64 @_B_foo ()
  store i64 %_45, i64* %_12, align 8
  %_46 = call i64 @_B_bar ()
  store i64 %_46, i64* %_13, align 8
  %_47 = load i64, i64* %_12, align 8
  %_48 = load i64, i64* %_13, align 8
  %_49 = icmp eq i64 %_48, 0
  br i1 %_49, label %L8, label %L9
L7:
  store i64 1, i64* %_20, align 8
  br label %L1
L8:
  store i64 2, i64* %_20, align 8
  br label %L1
L9:
  %_50 = icmp eq i64 %_47, -9223372036854775808
  %_51 = icmp eq i64 %_48, -1
  %_52 = and i1 %_50, %_51
  br i1 %_52, label %L11, label %L10
L10:
  %_53 = sdiv i64 %_47, %_48
  store i64 %_53, i64* %_14, align 8
  %_54 = load i64, i64* %_14, align 8
  call void @_Bio__println (i64 %_54)
  store i1 0, i1* %_15, align 8
  %_55 = call i64 @_B_foo ()
  store i64 %_55, i64* %_16, align 8
  %_56 = call i64 @_B_bar ()
  store i64 %_56, i64* %_17, align 8
  %_57 = load i64, i64* %_16, align 8
  %_58 = load i64, i64* %_17, align 8
  %_59 = icmp eq i64 %_58, 0
  br i1 %_59, label %L12, label %L13
L11:
  store i64 1, i64* %_20, align 8
  br label %L1
L12:
  store i64 2, i64* %_20, align 8
  br label %L1
L13:
  %_60 = icmp eq i64 %_57, -9223372036854775808
  %_61 = icmp eq i64 %_58, -1
  %_62 = and i1 %_60, %_61
  br i1 %_62, label %L15, label %L14
L14:
  %_63 = srem i64 %_57, %_58
  store i64 %_63, i64* %_18, align 8
  br label %L16
L15:
  store i64 0, i64* %_18, align 8
  br label %L16
L16:
  %_64 = load i64, i64* %_18, align 8
  call void @_Bio__println (i64 %_64)
  store i1 0, i1* %_19, align 8
  ret void
}
define internal i64 @_B_foo () {
  ret i64 105
}
define internal i64 @_B_bar () {
  ret i64 2
}
