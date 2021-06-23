declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i64
  %n = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = call i8* @_B_ifElse (i1 1, i1 1, i64 17)
  store i8* %_4, i8** %_0
  %_5 = load i8*, i8** %_0
  %_6 = ptrtoint i8* %_5 to i64
  %_7 = and i64 %_6, 9151314442816847872
  %_8 = icmp eq i64 %_7, 144115188075855872
  br i1 %_8, label %L2, label %L3
L1:
  %_17 = load i64, i64* %_3
  call void @_bal_panic (i64 %_17)
  unreachable
L2:
  %_9 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_5, i64 72057594037927935)
  %_10 = bitcast i8* %_9 to i64*
  %_11 = load i64, i64* %_10, align 8
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  store i64 %_12, i64* %n
  %_13 = load i64, i64* %n
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 %_13, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 144115188075855872
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_2
  ret void
L3:
  store i64 3, i64* %_3
  br label %L1
}
define internal i8* @_B_ifElse (i1 %_0, i1 %_1, i64 %_2) {
  %t = alloca i1
  %b = alloca i1
  %n = alloca i64
  store i1 %_0, i1* %t
  store i1 %_1, i1* %b
  store i64 %_2, i64* %n
  %_3 = load i1, i1* %t
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = load i1, i1* %b
  %_5 = zext i1 %_4 to i64
  %_6 = or i64 %_5, 72057594037927936
  %_7 = getelementptr i8, i8* null, i64 %_6
  ret i8* %_7
L2:
  %_8 = load i64, i64* %n
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 %_8, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 144115188075855872
  ret i8* %_11
}
