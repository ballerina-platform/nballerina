source_filename = "taggedptr.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare i8* @llvm.ptrmask.p0i8.i64(i8*, i64) readnone speculatable

define dso_local i8* @pack(i8* readnone %0, i64 %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, i8* %0, i64 %1
  ret i8* %3
}

define dso_local i8* @unpackPtr(i8* %0) local_unnamed_addr #0 {
  %2 = call i8* @llvm.ptrmask.p0i8.i64(i8* %0, i64 72057594037927935)
  ret i8* %2
}

define dso_local i64 @unpackTag(i8* %0) local_unnamed_addr #0 {
  %2 = ptrtoint i8* %0 to i64
  %3 = and i64 %2, -72057594037927936
  ret i64 %3
}

define dso_local i64 @taggedLoadInt(i8* %0) local_unnamed_addr #0 {
  %2 = call i8* @llvm.ptrmask.p0i8.i64(i8* %0, i64 72057594037927935)
  %3 = bitcast i8* %2 to i64*
  %4 = load i64, i64* %3
  ret i64 %4
}

define dso_local i64 @extractInt(i8* %0) local_unnamed_addr #0 {
  %2 = ptrtoint i8* %0 to i64
  %3 = trunc i64 %2 to i48
  %4 = sext i48 %3 to i64
  ret i64 %4
}



attributes #0 = { norecurse nounwind readnone uwtable  "disable-tail-calls"="false" "frame-pointer"="none" }
