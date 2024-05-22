; ModuleID = 'output.ll'
source_filename = "test_mul_by_2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [10 x i8] c"Results: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define noundef i32 @_Z15test_mul_by_twoi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define noundef i32 @_Z19test_mul_by_two_varii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %0, 1
  %4 = mul i32 %3, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define noundef i32 @_Z11test_no_muli(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 2
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define noundef i32 @_Z19test_edge_case_zeroi(i32 noundef %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define noundef i32 @_Z17test_large_numberi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, 2000000
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define noundef i32 @_Z13test_negativei(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul nsw i32 %0, -2
  ret i32 %2
}

; Function Attrs: mustprogress norecurse ssp uwtable(sync)
define noundef i32 @main() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__1::locale", align 8
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str, i64 noundef 9)
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 20)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1, i64 noundef 2)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 60)
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.1, i64 noundef 2)
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 12)
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.1, i64 noundef 2)
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.1, i64 noundef 2)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 20000000)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.1, i64 noundef 2)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef -20)
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr i8, ptr %14, i64 -24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  call void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(136) %17)
  %18 = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %19 unwind label %24

19:                                               ; preds = %0
  %20 = load ptr, ptr %18, align 8, !tbaa !5
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef signext i8 %22(ptr noundef nonnull align 8 dereferenceable(25) %18, i8 noundef signext 10)
          to label %27 unwind label %24

24:                                               ; preds = %19, %0
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  resume { ptr, i32 } %25

27:                                               ; preds = %19
  %28 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext %23)
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret i32 20000072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::locale", align 8
  %5 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %6 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %7 unwind label %55

7:                                                ; preds = %3
  %8 = load i8, ptr %5, align 8, !tbaa !8, !range !13, !noundef !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = getelementptr inbounds %"class.std::__1::ios_base", ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %"class.std::__1::ios_base", ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %14, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %14)
          to label %23 unwind label %59

23:                                               ; preds = %22
  %24 = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %25 unwind label %30

25:                                               ; preds = %23
  %26 = load ptr, ptr %24, align 8, !tbaa !5
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef signext i8 %28(ptr noundef nonnull align 8 dereferenceable(25) %24, i8 noundef signext 32)
          to label %33 unwind label %30

30:                                               ; preds = %25, %23
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %63

33:                                               ; preds = %25
  %34 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %35 = sext i8 %29 to i32
  store i32 %35, ptr %19, align 8, !tbaa !20
  br label %36

36:                                               ; preds = %33, %10
  %37 = load i32, ptr %19, align 8, !tbaa !20
  %38 = trunc i32 %37 to i8
  %39 = and i32 %18, 176
  %40 = icmp eq i32 %39, 32
  %41 = getelementptr inbounds i8, ptr %1, i64 %2
  %42 = select i1 %40, ptr %41, ptr %1
  %43 = ptrtoint ptr %16 to i64
  %44 = invoke i64 @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %43, ptr noundef %1, ptr noundef %42, ptr noundef %41, ptr noundef nonnull align 8 dereferenceable(136) %14, i8 noundef signext %38)
          to label %45 unwind label %59

45:                                               ; preds = %36
  %46 = icmp eq i64 %44, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = load ptr, ptr %0, align 8, !tbaa !5
  %49 = getelementptr i8, ptr %48, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = getelementptr inbounds %"class.std::__1::ios_base", ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !22
  %54 = or i32 %53, 5
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %51, i32 noundef %54)
          to label %61 unwind label %57

55:                                               ; preds = %3
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %66

57:                                               ; preds = %47
  %58 = landingpad { ptr, i32 }
          catch ptr null
  br label %63

59:                                               ; preds = %36, %22
  %60 = landingpad { ptr, i32 }
          catch ptr null
  br label %63

61:                                               ; preds = %47, %45, %7
  %62 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %75

63:                                               ; preds = %59, %57, %30
  %64 = phi { ptr, i32 } [ %58, %57 ], [ %60, %59 ], [ %31, %30 ]
  %65 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi { ptr, i32 } [ %64, %63 ], [ %56, %55 ]
  %68 = extractvalue { ptr, i32 } %67, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %69 = call ptr @__cxa_begin_catch(ptr %68) #12
  %70 = load ptr, ptr %0, align 8, !tbaa !5
  %71 = getelementptr i8, ptr %70, i64 -24
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136) %73)
          to label %74 unwind label %76

74:                                               ; preds = %66
  call void @__cxa_end_catch()
  br label %75

75:                                               ; preds = %74, %61
  ret ptr %0

76:                                               ; preds = %66
  %77 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %78 unwind label %79

78:                                               ; preds = %76
  resume { ptr, i32 } %77

79:                                               ; preds = %76
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #13
  unreachable
}

declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i8 noundef signext %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = inttoptr i64 %0 to ptr
  %9 = icmp eq i64 %0, 0
  br i1 %9, label %88, label %10

10:                                               ; preds = %6
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds %"class.std::__1::ios_base", ptr %4, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !23
  %16 = icmp sgt i64 %15, %13
  %17 = sub nsw i64 %15, %13
  %18 = select i1 %16, i64 %17, i64 0
  %19 = ptrtoint ptr %2 to i64
  %20 = sub i64 %19, %12
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  %23 = load ptr, ptr %8, align 8, !tbaa !5
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i64 %25(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %1, i64 noundef %20)
  %27 = icmp eq i64 %26, %20
  br i1 %27, label %28, label %88

28:                                               ; preds = %22, %10
  %29 = icmp sgt i64 %18, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %31 = icmp ugt i64 %18, 9223372036854775799
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  unreachable

33:                                               ; preds = %30
  %34 = icmp ult i64 %18, 23
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = trunc i64 %18 to i8
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %7, i64 0, i32 2
  store i8 %36, ptr %37, align 1
  br label %49

38:                                               ; preds = %33
  %39 = and i64 %18, 9223372036854775800
  %40 = add nuw i64 %39, 8
  %41 = or i64 %18, 7
  %42 = icmp eq i64 %41, 23
  %43 = select i1 %42, i64 %40, i64 %41
  %44 = add i64 %43, 1
  %45 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %44) #15
  store ptr %45, ptr %7, align 8, !tbaa !24
  %46 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %7, i64 0, i32 2
  %47 = or i64 %44, -9223372036854775808
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %7, i64 0, i32 1
  store i64 %18, ptr %48, align 8, !tbaa !24
  br label %49

49:                                               ; preds = %38, %35
  %50 = phi ptr [ %7, %35 ], [ %45, %38 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %50, i8 %5, i64 %18, i1 false), !tbaa !24
  %51 = getelementptr inbounds i8, ptr %50, i64 %18
  store i8 0, ptr %51, align 1, !tbaa !24
  %52 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %7, i64 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = icmp slt i8 %53, 0
  %55 = load ptr, ptr %7, align 8
  %56 = select i1 %54, ptr %55, ptr %7
  %57 = load ptr, ptr %8, align 8, !tbaa !5
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef i64 %59(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %56, i64 noundef %18)
          to label %61 unwind label %69

61:                                               ; preds = %49
  %62 = icmp eq i64 %60, %18
  %63 = select i1 %62, ptr %8, ptr null
  %64 = load i8, ptr %52, align 1
  %65 = icmp slt i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr %7, align 8, !tbaa !24
  call void @_ZdlPv(ptr noundef %67) #16
  br label %68

68:                                               ; preds = %66, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br i1 %62, label %76, label %88

69:                                               ; preds = %49
  %70 = landingpad { ptr, i32 }
          cleanup
  %71 = load i8, ptr %52, align 1
  %72 = icmp slt i8 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load ptr, ptr %7, align 8, !tbaa !24
  call void @_ZdlPv(ptr noundef %74) #16
  br label %75

75:                                               ; preds = %73, %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  resume { ptr, i32 } %70

76:                                               ; preds = %68, %28
  %77 = phi ptr [ %63, %68 ], [ %8, %28 ]
  %78 = sub i64 %11, %19
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load ptr, ptr %77, align 8, !tbaa !5
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef i64 %83(ptr noundef nonnull align 8 dereferenceable(64) %77, ptr noundef %2, i64 noundef %78)
  %85 = icmp eq i64 %84, %78
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %76
  store i64 0, ptr %14, align 8, !tbaa !23
  %87 = ptrtoint ptr %77 to i64
  br label %88

88:                                               ; preds = %86, %80, %68, %22, %6
  %89 = phi i64 [ 0, %6 ], [ %87, %86 ], [ 0, %68 ], [ 0, %22 ], [ 0, %80 ]
  ret i64 %89
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noreturn ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.2) #14
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  %3 = invoke noundef ptr @_ZNSt12length_errorC1B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #14
  unreachable

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC1B8ne180100EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 align 2 {
  %3 = tail call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !5
  ret ptr %0
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress norecurse ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { mustprogress ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #6 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #7 = { mustprogress noreturn ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #8 = { inlinehint mustprogress noreturn ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 18.1.5"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !10, i64 0, !12, i64 8}
!10 = !{!"bool", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"any pointer", !11, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!16, !12, i64 40}
!16 = !{!"_ZTSNSt3__18ios_baseE", !17, i64 8, !18, i64 16, !18, i64 24, !17, i64 32, !17, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !18, i64 72, !18, i64 80, !12, i64 88, !18, i64 96, !18, i64 104, !12, i64 112, !18, i64 120, !18, i64 128}
!17 = !{!"int", !11, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!16, !17, i64 8}
!20 = !{!21, !17, i64 144}
!21 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !16, i64 0, !12, i64 136, !17, i64 144}
!22 = !{!16, !17, i64 32}
!23 = !{!16, !18, i64 24}
!24 = !{!11, !11, i64 0}
