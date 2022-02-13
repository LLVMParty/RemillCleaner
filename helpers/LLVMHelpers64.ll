; ModuleID = 'LLVMHelpers.cpp'
source_filename = "LLVMHelpers.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.30.30709"

%struct.Memory = type opaque

@RAM = external dso_local global [0 x i8], align 1
@STACK = external dso_local local_unnamed_addr global [0 x i8], align 1
@GS = external dso_local local_unnamed_addr global [0 x i8], align 1
@CS = external dso_local local_unnamed_addr global [0 x i8], align 1
@CTX = external dso_local local_unnamed_addr global [0 x i8], align 1
@VREGS = external dso_local local_unnamed_addr global [0 x i8], align 1
@HTABLE = external dso_local local_unnamed_addr global [0 x i8], align 1
@BCODE = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_memory_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_memory_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_memory_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_memory_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_stack_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_stack_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_stack_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_stack_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_gs_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_gs_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_gs_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_gs_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_cs_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_cs_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_cs_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_cs_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_volatile_memory_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_volatile_memory_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_volatile_memory_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_volatile_memory_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_volatile_stack_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_volatile_stack_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_volatile_stack_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_volatile_stack_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_volatile_gs_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_volatile_gs_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_volatile_gs_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_volatile_gs_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_volatile_cs_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_volatile_cs_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_volatile_cs_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_volatile_cs_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_stack_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_stack_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_stack_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_stack_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_gs_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_gs_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_gs_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_gs_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_cs_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_cs_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_cs_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_cs_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_stack_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_stack_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_stack_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_stack_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @STACK, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_gs_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_gs_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_gs_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_gs_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @GS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_cs_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_cs_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_cs_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_volatile_cs_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload.i = load i8, i8* %arrayidx.i, align 1
  %xor6 = xor i8 %v.0.copyload.i, %v
  store i8 %xor6, i8* %arrayidx.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i16*
  %v.0.copyload.i = load i16, i16* %v.0.arrayidx.sroa_cast.i, align 1
  %xor6 = xor i16 %v.0.copyload.i, %v
  store i16 %xor6, i16* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i32*
  %v.0.copyload.i = load i32, i32* %v.0.arrayidx.sroa_cast.i, align 1
  %xor = xor i32 %v.0.copyload.i, %v
  store i32 %xor, i32* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i64*
  %v.0.copyload.i = load i64, i64* %v.0.arrayidx.sroa_cast.i, align 1
  %xor = xor i64 %v.0.copyload.i, %v
  store i64 %xor, i64* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload.i = load i8, i8* %arrayidx.i, align 1
  %add = add i8 %v.0.copyload.i, %v
  store i8 %add, i8* %arrayidx.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i16*
  %v.0.copyload.i = load i16, i16* %v.0.arrayidx.sroa_cast.i, align 1
  %add = add i16 %v.0.copyload.i, %v
  store i16 %add, i16* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i32*
  %v.0.copyload.i = load i32, i32* %v.0.arrayidx.sroa_cast.i, align 1
  %add = add i32 %v.0.copyload.i, %v
  store i32 %add, i32* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i64*
  %v.0.copyload.i = load i64, i64* %v.0.arrayidx.sroa_cast.i, align 1
  %add = add i64 %v.0.copyload.i, %v
  store i64 %add, i64* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload.i = load i8, i8* %arrayidx.i, align 1
  %and6 = and i8 %v.0.copyload.i, %v
  store i8 %and6, i8* %arrayidx.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i16*
  %v.0.copyload.i = load i16, i16* %v.0.arrayidx.sroa_cast.i, align 1
  %and6 = and i16 %v.0.copyload.i, %v
  store i16 %and6, i16* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i32*
  %v.0.copyload.i = load i32, i32* %v.0.arrayidx.sroa_cast.i, align 1
  %and = and i32 %v.0.copyload.i, %v
  store i32 %and, i32* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i64*
  %v.0.copyload.i = load i64, i64* %v.0.arrayidx.sroa_cast.i, align 1
  %and = and i64 %v.0.copyload.i, %v
  store i64 %and, i64* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload.i = load i8, i8* %arrayidx.i, align 1
  %or6 = or i8 %v.0.copyload.i, %v
  store i8 %or6, i8* %arrayidx.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i16*
  %v.0.copyload.i = load i16, i16* %v.0.arrayidx.sroa_cast.i, align 1
  %or6 = or i16 %v.0.copyload.i, %v
  store i16 %or6, i16* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i32*
  %v.0.copyload.i = load i32, i32* %v.0.arrayidx.sroa_cast.i, align 1
  %or = or i32 %v.0.copyload.i, %v
  store i32 %or, i32* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i64*
  %v.0.copyload.i = load i64, i64* %v.0.arrayidx.sroa_cast.i, align 1
  %or = or i64 %v.0.copyload.i, %v
  store i64 %or, i64* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_memory_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.copyload.i = load i8, i8* %arrayidx.i, align 1
  %sub = sub i8 %v.0.copyload.i, %v
  store i8 %sub, i8* %arrayidx.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_memory_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i16*
  %v.0.copyload.i = load i16, i16* %v.0.arrayidx.sroa_cast.i, align 1
  %sub = sub i16 %v.0.copyload.i, %v
  store i16 %sub, i16* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_memory_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i32*
  %v.0.copyload.i = load i32, i32* %v.0.arrayidx.sroa_cast.i, align 1
  %sub = sub i32 %v.0.copyload.i, %v
  store i32 %sub, i32* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_memory_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast.i = bitcast i8* %arrayidx.i to i64*
  %v.0.copyload.i = load i64, i64* %v.0.arrayidx.sroa_cast.i, align 1
  %sub = sub i64 %v.0.copyload.i, %v
  store i64 %sub, i64* %v.0.arrayidx.sroa_cast.i, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_context_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_context_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_context_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_context_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_context_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_context_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_context_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_context_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @CTX, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_vregs_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_vregs_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_vregs_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_vregs_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_vregs_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_vregs_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_vregs_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_vregs_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @VREGS, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_htable_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_htable_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_htable_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_htable_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_htable_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_htable_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_htable_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_htable_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @HTABLE, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8 @__remill_read_bcode_8(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.0.copyload = load i8, i8* %arrayidx, align 1
  ret i8 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16 @__remill_read_bcode_16(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  %v.0.copyload = load i16, i16* %v.0.arrayidx.sroa_cast, align 1
  ret i16 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @__remill_read_bcode_32(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  %v.0.copyload = load i32, i32* %v.0.arrayidx.sroa_cast, align 1
  ret i32 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @__remill_read_bcode_64(%struct.Memory* nocapture readnone %m, i64 %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  %v.0.copyload = load i64, i64* %v.0.arrayidx.sroa_cast, align 1
  ret i64 %v.0.copyload
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_bcode_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  store i8 %v, i8* %arrayidx, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_bcode_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i16*
  store i16 %v, i16* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_bcode_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i32*
  store i32 %v, i32* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Memory* @__remill_write_bcode_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @BCODE, i64 0, i64 %a
  %v.addr.0.arrayidx.sroa_cast = bitcast i8* %arrayidx to i64*
  store i64 %v, i64* %v.addr.0.arrayidx.sroa_cast, align 1
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_context_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i8 @__remill_read_context_8(%struct.Memory* undef, i64 %a)
  %xor6 = xor i8 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_8(%struct.Memory* %m, i64 %a, i8 %xor6)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_context_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i16 @__remill_read_context_16(%struct.Memory* undef, i64 %a)
  %xor6 = xor i16 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_16(%struct.Memory* %m, i64 %a, i16 %xor6)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_context_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @__remill_read_context_32(%struct.Memory* undef, i64 %a)
  %xor = xor i32 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_32(%struct.Memory* %m, i64 %a, i32 %xor)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_xor_context_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @__remill_read_context_64(%struct.Memory* undef, i64 %a)
  %xor = xor i64 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_64(%struct.Memory* %m, i64 %a, i64 %xor)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_context_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i8 @__remill_read_context_8(%struct.Memory* undef, i64 %a)
  %add = add i8 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_8(%struct.Memory* %m, i64 %a, i8 %add)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_context_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i16 @__remill_read_context_16(%struct.Memory* undef, i64 %a)
  %add = add i16 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_16(%struct.Memory* %m, i64 %a, i16 %add)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_context_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @__remill_read_context_32(%struct.Memory* undef, i64 %a)
  %add = add i32 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_32(%struct.Memory* %m, i64 %a, i32 %add)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_add_context_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @__remill_read_context_64(%struct.Memory* undef, i64 %a)
  %add = add i64 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_64(%struct.Memory* %m, i64 %a, i64 %add)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_context_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i8 @__remill_read_context_8(%struct.Memory* undef, i64 %a)
  %and6 = and i8 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_8(%struct.Memory* %m, i64 %a, i8 %and6)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_context_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i16 @__remill_read_context_16(%struct.Memory* undef, i64 %a)
  %and6 = and i16 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_16(%struct.Memory* %m, i64 %a, i16 %and6)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_context_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @__remill_read_context_32(%struct.Memory* undef, i64 %a)
  %and = and i32 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_32(%struct.Memory* %m, i64 %a, i32 %and)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_and_context_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @__remill_read_context_64(%struct.Memory* undef, i64 %a)
  %and = and i64 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_64(%struct.Memory* %m, i64 %a, i64 %and)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_context_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i8 @__remill_read_context_8(%struct.Memory* undef, i64 %a)
  %or6 = or i8 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_8(%struct.Memory* %m, i64 %a, i8 %or6)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_context_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i16 @__remill_read_context_16(%struct.Memory* undef, i64 %a)
  %or6 = or i16 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_16(%struct.Memory* %m, i64 %a, i16 %or6)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_context_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @__remill_read_context_32(%struct.Memory* undef, i64 %a)
  %or = or i32 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_32(%struct.Memory* %m, i64 %a, i32 %or)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_or_context_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @__remill_read_context_64(%struct.Memory* undef, i64 %a)
  %or = or i64 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_64(%struct.Memory* %m, i64 %a, i64 %or)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_context_8(%struct.Memory* readnone returned %m, i64 %a, i8 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i8 @__remill_read_context_8(%struct.Memory* undef, i64 %a)
  %sub = sub i8 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_8(%struct.Memory* %m, i64 %a, i8 %sub)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_context_16(%struct.Memory* readnone returned %m, i64 %a, i16 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i16 @__remill_read_context_16(%struct.Memory* undef, i64 %a)
  %sub = sub i16 %call, %v
  %call3 = tail call %struct.Memory* @__remill_write_context_16(%struct.Memory* %m, i64 %a, i16 %sub)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_context_32(%struct.Memory* readnone returned %m, i64 %a, i32 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @__remill_read_context_32(%struct.Memory* undef, i64 %a)
  %sub = sub i32 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_32(%struct.Memory* %m, i64 %a, i32 %sub)
  ret %struct.Memory* %m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Memory* @__remill_sub_context_64(%struct.Memory* readnone returned %m, i64 %a, i64 %v) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @__remill_read_context_64(%struct.Memory* undef, i64 %a)
  %sub = sub i64 %call, %v
  %call1 = tail call %struct.Memory* @__remill_write_context_64(%struct.Memory* %m, i64 %a, i64 %sub)
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nounwind uwtable
define dso_local %struct.Memory* @__remill_compare_exchange_memory_8(%struct.Memory* readnone returned %m, i64 %addr, i8* nocapture nonnull align 1 dereferenceable(1) %expected, i8 %desired) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %addr
  %0 = load volatile i8, i8* %arrayidx, align 1, !tbaa !5
  %1 = load i8, i8* %expected, align 1, !tbaa !5
  %cmp = icmp eq i8 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store volatile i8 %desired, i8* %arrayidx, align 1, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 %0, i8* %expected, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nounwind uwtable
define dso_local %struct.Memory* @__remill_compare_exchange_memory_16(%struct.Memory* readnone returned %m, i64 %addr, i16* nocapture nonnull align 2 dereferenceable(2) %expected, i16 %desired) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %addr
  %0 = bitcast i8* %arrayidx to i16*
  %1 = load volatile i16, i16* %0, align 2, !tbaa !8
  %2 = load i16, i16* %expected, align 2, !tbaa !8
  %cmp = icmp eq i16 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store volatile i16 %desired, i16* %0, align 2, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 %1, i16* %expected, align 2, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nounwind uwtable
define dso_local %struct.Memory* @__remill_compare_exchange_memory_32(%struct.Memory* readnone returned %m, i64 %addr, i32* nocapture nonnull align 4 dereferenceable(4) %expected, i32 %desired) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %addr
  %0 = bitcast i8* %arrayidx to i32*
  %1 = load volatile i32, i32* %0, align 4, !tbaa !10
  %2 = load i32, i32* %expected, align 4, !tbaa !10
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store volatile i32 %desired, i32* %0, align 4, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 %1, i32* %expected, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.Memory* %m
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nounwind uwtable
define dso_local %struct.Memory* @__remill_compare_exchange_memory_64(%struct.Memory* readnone returned %m, i64 %addr, i64* nocapture nonnull align 8 dereferenceable(8) %expected, i64 %desired) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @RAM, i64 0, i64 %addr
  %0 = bitcast i8* %arrayidx to i64*
  %1 = load volatile i64, i64* %0, align 8, !tbaa !12
  %2 = load i64, i64* %expected, align 8, !tbaa !12
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store volatile i64 %desired, i64* %0, align 8, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 %1, i64* %expected, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.Memory* %m
}

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline mustprogress nofree norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.linker.options = !{!0}
!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !6, i64 0}
