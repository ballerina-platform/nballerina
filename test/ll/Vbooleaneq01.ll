declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i8*
  %b = alloca i1
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i8*
  %_15 = icmp eq i1 1, 1
  store i1 %_15, i1* %_0
  %_16 = load i1, i1* %_0
  br i1 %_16, label %L1, label %L2
L1:
  call void @_Bio__println (i64 4)
  store i8* null, i8** %_1
  br label %L3
L2:
  call void @_Bio__println (i64 5)
  store i8* null, i8** %_2
  br label %L3
L3:
  %_17 = icmp eq i1 0, 0
  store i1 %_17, i1* %_3
  %_18 = load i1, i1* %_3
  br i1 %_18, label %L4, label %L5
L4:
  call void @_Bio__println (i64 6)
  store i8* null, i8** %_4
  br label %L6
L5:
  call void @_Bio__println (i64 7)
  store i8* null, i8** %_5
  br label %L6
L6:
  %_19 = icmp ne i1 1, 1
  store i1 %_19, i1* %_6
  %_20 = load i1, i1* %_6
  br i1 %_20, label %L7, label %L8
L7:
  call void @_Bio__println (i64 8)
  store i8* null, i8** %_7
  br label %L9
L8:
  call void @_Bio__println (i64 9)
  store i8* null, i8** %_8
  br label %L9
L9:
  store i1 1, i1* %b
  %_21 = load i1, i1* %b
  %_22 = icmp eq i1 %_21, 1
  store i1 %_22, i1* %_9
  %_23 = load i1, i1* %_9
  br i1 %_23, label %L10, label %L11
L10:
  call void @_Bio__println (i64 10)
  store i8* null, i8** %_10
  br label %L12
L11:
  call void @_Bio__println (i64 11)
  store i8* null, i8** %_11
  br label %L12
L12:
  store i1 0, i1* %b
  %_24 = load i1, i1* %b
  %_25 = icmp eq i1 1, %_24
  store i1 %_25, i1* %_12
  %_26 = load i1, i1* %_12
  br i1 %_26, label %L13, label %L14
L13:
  call void @_Bio__println (i64 12)
  store i8* null, i8** %_13
  br label %L15
L14:
  call void @_Bio__println (i64 13)
  store i8* null, i8** %_14
  br label %L15
L15:
  ret void
}
