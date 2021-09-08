@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"map<any>\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 11, i16 11, [12 x i8] c"map<string>\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"map<int?>\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 15, [20 x i8] c"map<int|string>\00\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i1 @_bal_mapping_has_type(i8 addrspace(1)*, i64) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %im = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %im.1 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %19, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %im
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  %14 = call i1 @_bal_mapping_has_type(i8 addrspace(1)* %13, i64 1024)
  store i1 %14, i1* %3
  %15 = load i1, i1* %3
  br i1 %15, label %16, label %18
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  store i8 addrspace(1)* %17, i8 addrspace(1)** %im.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %18
18:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
