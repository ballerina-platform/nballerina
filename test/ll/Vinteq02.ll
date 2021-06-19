declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %x = alloca i64, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i1, align 8
  %_12 = icmp eq i64 17, 17
  store i1 %_12, i1* %_0, align 8
  %_13 = load i1, i1* %_0, align 8
  br i1 %_13, label %L1, label %L2
L1:
  call void @_Bio__println (i64 17)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  %_14 = icmp ne i64 21, 21
  store i1 %_14, i1* %_3, align 8
  %_15 = load i1, i1* %_3, align 8
  br i1 %_15, label %L4, label %L5
L4:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_4, align 8
  br label %L6
L5:
  call void @_Bio__println (i64 21)
  store i1 0, i1* %_5, align 8
  br label %L6
L6:
  store i64 42, i64* %x, align 8
  %_16 = load i64, i64* %x, align 8
  %_17 = icmp eq i64 %_16, 42
  store i1 %_17, i1* %_6, align 8
  %_18 = load i1, i1* %_6, align 8
  br i1 %_18, label %L7, label %L8
L7:
  call void @_Bio__println (i64 42)
  store i1 0, i1* %_7, align 8
  br label %L9
L8:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_8, align 8
  br label %L9
L9:
  %_19 = load i64, i64* %x, align 8
  %_20 = icmp ne i64 42, %_19
  store i1 %_20, i1* %_9, align 8
  %_21 = load i1, i1* %_9, align 8
  br i1 %_21, label %L10, label %L11
L10:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_10, align 8
  br label %L12
L11:
  call void @_Bio__println (i64 42)
  store i1 0, i1* %_11, align 8
  br label %L12
L12:
  ret void
}
