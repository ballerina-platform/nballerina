declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i64, align 8
  %_9 = alloca i64, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i64, align 8
  %_12 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 0)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L3, label %L2
L1:
  %_28 = load i64, i64* %_11, align 8
  call void @_bal_panic (i64 %_28)
  unreachable
L2:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_0, align 8
  %_15 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_15)
  store i1 0, i1* %_1, align 8
  %_16 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L5, label %L4
L3:
  store i64 1, i64* %_11, align 8
  br label %L1
L4:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_2, align 8
  %_19 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_19)
  store i1 0, i1* %_3, align 8
  %_20 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -1, i64 0)
  %_21 = extractvalue {i64, i1} %_20, 1
  br i1 %_21, label %L7, label %L6
L5:
  store i64 1, i64* %_11, align 8
  br label %L1
L6:
  %_22 = extractvalue {i64, i1} %_20, 0
  store i64 %_22, i64* %_5, align 8
  %_23 = load i64, i64* %_5, align 8
  call void @_Bio__println (i64 %_23)
  store i1 0, i1* %_6, align 8
  %_24 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -1, i64 -9223372036854775806)
  %_25 = extractvalue {i64, i1} %_24, 1
  br i1 %_25, label %L9, label %L8
L7:
  store i64 1, i64* %_11, align 8
  br label %L1
L8:
  %_26 = extractvalue {i64, i1} %_24, 0
  store i64 %_26, i64* %_9, align 8
  %_27 = load i64, i64* %_9, align 8
  call void @_Bio__println (i64 %_27)
  store i1 0, i1* %_10, align 8
  ret void
L9:
  store i64 1, i64* %_11, align 8
  br label %L1
}
