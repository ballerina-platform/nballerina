@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %b = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %x = alloca i64
  %_6 = alloca i1
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L14, label %L1
L1:
  %_15 = icmp eq i64 17, 17
  store i1 %_15, i1* %_0
  %_16 = load i1, i1* %_0
  store i1 %_16, i1* %b
  %_17 = load i1, i1* %b
  br i1 %_17, label %L2, label %L3
L2:
  %_18 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_19 = bitcast i8 addrspace (1)* %_18 to i64 addrspace (1)*
  store i64 17, i64 addrspace (1)* %_19, align 8
  %_20 = getelementptr i8, i8 addrspace (1)* %_18, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_20)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_22, align 8
  %_23 = getelementptr i8, i8 addrspace (1)* %_21, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  %_24 = icmp ne i64 21, 21
  store i1 %_24, i1* %_3
  %_25 = load i1, i1* %_3
  store i1 %_25, i1* %b
  %_26 = load i1, i1* %b
  br i1 %_26, label %L5, label %L6
L5:
  %_27 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_28 = bitcast i8 addrspace (1)* %_27 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_28, align 8
  %_29 = getelementptr i8, i8 addrspace (1)* %_27, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_29)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  br label %L7
L6:
  %_30 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_31 = bitcast i8 addrspace (1)* %_30 to i64 addrspace (1)*
  store i64 21, i64 addrspace (1)* %_31, align 8
  %_32 = getelementptr i8, i8 addrspace (1)* %_30, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L7
L7:
  store i64 42, i64* %x
  %_33 = load i64, i64* %x
  %_34 = icmp eq i64 %_33, 42
  store i1 %_34, i1* %_6
  %_35 = load i1, i1* %_6
  br i1 %_35, label %L8, label %L9
L8:
  %_36 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_37 = bitcast i8 addrspace (1)* %_36 to i64 addrspace (1)*
  store i64 42, i64 addrspace (1)* %_37, align 8
  %_38 = getelementptr i8, i8 addrspace (1)* %_36, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_38)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  br label %L10
L9:
  %_39 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_40 = bitcast i8 addrspace (1)* %_39 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_40, align 8
  %_41 = getelementptr i8, i8 addrspace (1)* %_39, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_41)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  br label %L10
L10:
  %_42 = load i64, i64* %x
  %_43 = icmp ne i64 42, %_42
  store i1 %_43, i1* %_9
  %_44 = load i1, i1* %_9
  br i1 %_44, label %L11, label %L12
L11:
  %_45 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_46 = bitcast i8 addrspace (1)* %_45 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_46, align 8
  %_47 = getelementptr i8, i8 addrspace (1)* %_45, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_47)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  br label %L13
L12:
  %_48 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_49 = bitcast i8 addrspace (1)* %_48 to i64 addrspace (1)*
  store i64 42, i64 addrspace (1)* %_49, align 8
  %_50 = getelementptr i8, i8 addrspace (1)* %_48, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  br label %L13
L13:
  ret void
L14:
  call void @_bal_panic (i64 772)
  unreachable
}
