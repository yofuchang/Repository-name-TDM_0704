; ModuleID = 'C:/TDM_0704/TDM_0704/lfm_tdm_gen/lfm_tdm_gen/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<32>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_uint<32>, 0, 0, 0, '8', false>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }

; Function Attrs: noinline willreturn
define void @apatb_lfm_tdm_gen_ir(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %m_axis_tx, %"struct.ap_int<16>"* noalias nocapture nonnull dereferenceable(2) %dbg_lfm_i, %"struct.ap_int<16>"* noalias nocapture nonnull dereferenceable(2) %dbg_lfm_q, %"struct.ap_uint<2>"* noalias nocapture nonnull dereferenceable(1) %dbg_tx_sel, %"struct.ap_int<16>"* noalias nocapture nonnull dereferenceable(2) %dbg_chirp_count, %"struct.ap_int<16>"* noalias nocapture nonnull dereferenceable(2) %dbg_sample_count, %"struct.ap_uint<1>"* noalias nocapture nonnull dereferenceable(1) %dbg_chirp_start, %"struct.ap_uint<1>"* noalias nocapture nonnull dereferenceable(1) %dbg_chirp_end, %"struct.ap_uint<1>"* noalias nocapture nonnull dereferenceable(1) %dbg_enable, %"struct.ap_uint<3>"* noalias nocapture nonnull dereferenceable(1) %dbg_state) local_unnamed_addr #0 {
entry:
  %m_axis_tx_copy.data = alloca i32, align 512
  %m_axis_tx_copy.keep = alloca i4, align 512
  %m_axis_tx_copy.strb = alloca i4, align 512
  %m_axis_tx_copy.last = alloca i1, align 512
  %dbg_lfm_i_copy = alloca i16, align 512
  %dbg_lfm_q_copy = alloca i16, align 512
  %dbg_tx_sel_copy = alloca i2, align 512
  %dbg_chirp_count_copy = alloca i16, align 512
  %dbg_sample_count_copy = alloca i16, align 512
  %dbg_chirp_start_copy = alloca i1, align 512
  %dbg_chirp_end_copy = alloca i1, align 512
  %dbg_enable_copy = alloca i1, align 512
  %dbg_state_copy = alloca i3, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %m_axis_tx, i32* nonnull align 512 %m_axis_tx_copy.data, i4* nonnull align 512 %m_axis_tx_copy.keep, i4* nonnull align 512 %m_axis_tx_copy.strb, i1* nonnull align 512 %m_axis_tx_copy.last, %"struct.ap_int<16>"* nonnull %dbg_lfm_i, i16* nonnull align 512 %dbg_lfm_i_copy, %"struct.ap_int<16>"* nonnull %dbg_lfm_q, i16* nonnull align 512 %dbg_lfm_q_copy, %"struct.ap_uint<2>"* nonnull %dbg_tx_sel, i2* nonnull align 512 %dbg_tx_sel_copy, %"struct.ap_int<16>"* nonnull %dbg_chirp_count, i16* nonnull align 512 %dbg_chirp_count_copy, %"struct.ap_int<16>"* nonnull %dbg_sample_count, i16* nonnull align 512 %dbg_sample_count_copy, %"struct.ap_uint<1>"* nonnull %dbg_chirp_start, i1* nonnull align 512 %dbg_chirp_start_copy, %"struct.ap_uint<1>"* nonnull %dbg_chirp_end, i1* nonnull align 512 %dbg_chirp_end_copy, %"struct.ap_uint<1>"* nonnull %dbg_enable, i1* nonnull align 512 %dbg_enable_copy, %"struct.ap_uint<3>"* nonnull %dbg_state, i3* nonnull align 512 %dbg_state_copy)
  call void @apatb_lfm_tdm_gen_hw(i32* %m_axis_tx_copy.data, i4* %m_axis_tx_copy.keep, i4* %m_axis_tx_copy.strb, i1* %m_axis_tx_copy.last, i16* %dbg_lfm_i_copy, i16* %dbg_lfm_q_copy, i2* %dbg_tx_sel_copy, i16* %dbg_chirp_count_copy, i16* %dbg_sample_count_copy, i1* %dbg_chirp_start_copy, i1* %dbg_chirp_end_copy, i1* %dbg_enable_copy, i3* %dbg_state_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %m_axis_tx, i32* %m_axis_tx_copy.data, i4* %m_axis_tx_copy.keep, i4* %m_axis_tx_copy.strb, i1* %m_axis_tx_copy.last, %"struct.ap_int<16>"* %dbg_lfm_i, i16* %dbg_lfm_i_copy, %"struct.ap_int<16>"* %dbg_lfm_q, i16* %dbg_lfm_q_copy, %"struct.ap_uint<2>"* %dbg_tx_sel, i2* %dbg_tx_sel_copy, %"struct.ap_int<16>"* %dbg_chirp_count, i16* %dbg_chirp_count_copy, %"struct.ap_int<16>"* %dbg_sample_count, i16* %dbg_sample_count_copy, %"struct.ap_uint<1>"* %dbg_chirp_start, i1* %dbg_chirp_start_copy, %"struct.ap_uint<1>"* %dbg_chirp_end, i1* %dbg_chirp_end_copy, %"struct.ap_uint<1>"* %dbg_enable, i1* %dbg_enable_copy, %"struct.ap_uint<3>"* %dbg_state, i3* %dbg_state_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="0", i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"struct.ap_int<16>"* noalias readonly "unpacked"="2", i16* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_int<16>"* noalias readonly "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_uint<2>"* noalias readonly "unpacked"="6", i2* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_int<16>"* noalias readonly "unpacked"="8", i16* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_int<16>"* noalias readonly "unpacked"="10", i16* noalias nocapture align 512 "unpacked"="11.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="12", i1* noalias nocapture align 512 "unpacked"="13.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="14", i1* noalias nocapture align 512 "unpacked"="15.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="16", i1* noalias nocapture align 512 "unpacked"="17.0", %"struct.ap_uint<3>"* noalias readonly "unpacked"="18", i3* noalias nocapture align 512 "unpacked"="19.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.53"(i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %2, %"struct.ap_int<16>"* %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %4, %"struct.ap_int<16>"* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(i2* align 512 %6, %"struct.ap_uint<2>"* %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %8, %"struct.ap_int<16>"* %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %10, %"struct.ap_int<16>"* %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.11"(i1* align 512 %12, %"struct.ap_uint<1>"* %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.11"(i1* align 512 %14, %"struct.ap_uint<1>"* %13)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.11"(i1* align 512 %16, %"struct.ap_uint<1>"* %15)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<3>"(i3* align 512 %18, %"struct.ap_uint<3>"* %17)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = alloca i32
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %1 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %1
  %11 = bitcast i4* %3 to i8*
  %12 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i4* %3 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i4
  %16 = bitcast i4* %2 to i8*
  %17 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %2 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = bitcast i1* %4 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %4 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" undef, i32 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %5
  %26 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(i2* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<2>"* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_uint<2>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i2* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i2
  store i2 %3, i2* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<3>"(i3* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<3>"* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_uint<3>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<3>", %"struct.ap_uint<3>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i3* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i3
  store i3 %3, i3* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="0", i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"struct.ap_int<16>"* noalias "unpacked"="2", i16* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_int<16>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<2>"* noalias "unpacked"="6", i2* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_int<16>"* noalias "unpacked"="8", i16* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_int<16>"* noalias "unpacked"="10", i16* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_uint<1>"* noalias "unpacked"="12", i1* noalias nocapture readonly align 512 "unpacked"="13.0", %"struct.ap_uint<1>"* noalias "unpacked"="14", i1* noalias nocapture readonly align 512 "unpacked"="15.0", %"struct.ap_uint<1>"* noalias "unpacked"="16", i1* noalias nocapture readonly align 512 "unpacked"="17.0", %"struct.ap_uint<3>"* noalias "unpacked"="18", i3* noalias nocapture readonly align 512 "unpacked"="19.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %1, i16* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %3, i16* align 512 %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>.39"(%"struct.ap_uint<2>"* %5, i2* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %7, i16* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %9, i16* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %11, i1* align 512 %12)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %13, i1* align 512 %14)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %15, i1* align 512 %16)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<3>.4"(%"struct.ap_uint<3>"* %17, i3* align 512 %18)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<3>.4"(%"struct.ap_uint<3>"* noalias "unpacked"="0" %dst, i3* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_uint<3>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<3>", %"struct.ap_uint<3>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i3* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i3
  store i3 %3, i3* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.11"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<1>"* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_uint<1>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* noalias "unpacked"="0" %dst, i1* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_uint<1>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_int<16>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<16>", %"struct.ap_int<16>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<16>"* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_int<16>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<16>", %"struct.ap_int<16>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>.39"(%"struct.ap_uint<2>"* noalias "unpacked"="0" %dst, i2* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"struct.ap_uint<2>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i2* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i2
  store i2 %3, i2* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.53"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.56"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.56"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_12(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i32 %.fca.0.0.0.0.0.extract, i32* %2
  %11 = bitcast i32* %2 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %11, i8* %12)
  store i4 %.fca.0.1.0.0.0.extract, i4* %4
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  store i4 %.fca.0.2.0.0.0.extract, i4* %3
  %15 = bitcast i4* %3 to i8*
  %16 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %17 = bitcast i1* %5 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_lfm_tdm_gen_hw(i32*, i4*, i4*, i1*, i16*, i16*, i2*, i16*, i16*, i1*, i1*, i1*, i3*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="0", i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"struct.ap_int<16>"* noalias "unpacked"="2", i16* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_int<16>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<2>"* noalias "unpacked"="6", i2* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_int<16>"* noalias "unpacked"="8", i16* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_int<16>"* noalias "unpacked"="10", i16* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_uint<1>"* noalias "unpacked"="12", i1* noalias nocapture readonly align 512 "unpacked"="13.0", %"struct.ap_uint<1>"* noalias "unpacked"="14", i1* noalias nocapture readonly align 512 "unpacked"="15.0", %"struct.ap_uint<1>"* noalias "unpacked"="16", i1* noalias nocapture readonly align 512 "unpacked"="17.0", %"struct.ap_uint<3>"* noalias "unpacked"="18", i3* noalias nocapture readonly align 512 "unpacked"="19.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %1, i16* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %3, i16* align 512 %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>.39"(%"struct.ap_uint<2>"* %5, i2* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %7, i16* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.27"(%"struct.ap_int<16>"* %9, i16* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %11, i1* align 512 %12)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %13, i1* align 512 %14)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %15, i1* align 512 %16)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<3>.4"(%"struct.ap_uint<3>"* %17, i3* align 512 %18)
  ret void
}

declare void @lfm_tdm_gen_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"struct.ap_int<16>"* noalias nocapture nonnull, %"struct.ap_int<16>"* noalias nocapture nonnull, %"struct.ap_uint<2>"* noalias nocapture nonnull, %"struct.ap_int<16>"* noalias nocapture nonnull, %"struct.ap_int<16>"* noalias nocapture nonnull, %"struct.ap_uint<1>"* noalias nocapture nonnull, %"struct.ap_uint<1>"* noalias nocapture nonnull, %"struct.ap_uint<1>"* noalias nocapture nonnull, %"struct.ap_uint<3>"* noalias nocapture nonnull)

define void @lfm_tdm_gen_hw_stub_wrapper(i32*, i4*, i4*, i1*, i16*, i16*, i2*, i16*, i16*, i1*, i1*, i1*, i3*) #6 {
entry:
  %13 = call i8* @malloc(i64 12)
  %14 = bitcast i8* %13 to %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"*
  %15 = call i8* @malloc(i64 2)
  %16 = bitcast i8* %15 to %"struct.ap_int<16>"*
  %17 = call i8* @malloc(i64 2)
  %18 = bitcast i8* %17 to %"struct.ap_int<16>"*
  %19 = call i8* @malloc(i64 1)
  %20 = bitcast i8* %19 to %"struct.ap_uint<2>"*
  %21 = call i8* @malloc(i64 2)
  %22 = bitcast i8* %21 to %"struct.ap_int<16>"*
  %23 = call i8* @malloc(i64 2)
  %24 = bitcast i8* %23 to %"struct.ap_int<16>"*
  %25 = call i8* @malloc(i64 1)
  %26 = bitcast i8* %25 to %"struct.ap_uint<1>"*
  %27 = call i8* @malloc(i64 1)
  %28 = bitcast i8* %27 to %"struct.ap_uint<1>"*
  %29 = call i8* @malloc(i64 1)
  %30 = bitcast i8* %29 to %"struct.ap_uint<1>"*
  %31 = call i8* @malloc(i64 1)
  %32 = bitcast i8* %31 to %"struct.ap_uint<3>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %14, i32* %0, i4* %1, i4* %2, i1* %3, %"struct.ap_int<16>"* %16, i16* %4, %"struct.ap_int<16>"* %18, i16* %5, %"struct.ap_uint<2>"* %20, i2* %6, %"struct.ap_int<16>"* %22, i16* %7, %"struct.ap_int<16>"* %24, i16* %8, %"struct.ap_uint<1>"* %26, i1* %9, %"struct.ap_uint<1>"* %28, i1* %10, %"struct.ap_uint<1>"* %30, i1* %11, %"struct.ap_uint<3>"* %32, i3* %12)
  call void @lfm_tdm_gen_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %14, %"struct.ap_int<16>"* %16, %"struct.ap_int<16>"* %18, %"struct.ap_uint<2>"* %20, %"struct.ap_int<16>"* %22, %"struct.ap_int<16>"* %24, %"struct.ap_uint<1>"* %26, %"struct.ap_uint<1>"* %28, %"struct.ap_uint<1>"* %30, %"struct.ap_uint<3>"* %32)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %14, i32* %0, i4* %1, i4* %2, i1* %3, %"struct.ap_int<16>"* %16, i16* %4, %"struct.ap_int<16>"* %18, i16* %5, %"struct.ap_uint<2>"* %20, i2* %6, %"struct.ap_int<16>"* %22, i16* %7, %"struct.ap_int<16>"* %24, i16* %8, %"struct.ap_uint<1>"* %26, i1* %9, %"struct.ap_uint<1>"* %28, i1* %10, %"struct.ap_uint<1>"* %30, i1* %11, %"struct.ap_uint<3>"* %32, i3* %12)
  call void @free(i8* %13)
  call void @free(i8* %15)
  call void @free(i8* %17)
  call void @free(i8* %19)
  call void @free(i8* %21)
  call void @free(i8* %23)
  call void @free(i8* %25)
  call void @free(i8* %27)
  call void @free(i8* %29)
  call void @free(i8* %31)
  ret void
}

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
