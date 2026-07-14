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
%"class.hls::directio<ap_uint<2>, 1>" = type { %"struct.ap_uint<2>" }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"class.hls::directio<ap_uint<4>, 1>" = type { %"struct.ap_uint<4>" }
%"class.hls::directio<ap_int<16>, 1>" = type { %"struct.ap_int<16>" }
%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::directio<ap_uint<1>, 1>" = type { %"struct.ap_uint<1>" }
%"class.hls::directio<ap_uint<3>, 1>" = type { %"struct.ap_uint<3>" }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }

; Function Attrs: noinline
define void @apatb_lfm_tdm_gen_ir(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %m_axis_tx, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull dereferenceable(2) %dbg_lfm_i, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull dereferenceable(2) %dbg_lfm_q, %"class.hls::directio<ap_uint<2>, 1>"* noalias nonnull dereferenceable(1) %dbg_tx_sel, %"class.hls::directio<ap_uint<4>, 1>"* noalias nonnull dereferenceable(1) %dbg_tx_active, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull dereferenceable(2) %dbg_chirp_count, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull dereferenceable(2) %dbg_sample_count, %"class.hls::directio<ap_uint<1>, 1>"* noalias nonnull dereferenceable(1) %dbg_chirp_start, %"class.hls::directio<ap_uint<1>, 1>"* noalias nonnull dereferenceable(1) %dbg_chirp_end, %"class.hls::directio<ap_uint<1>, 1>"* noalias nonnull dereferenceable(1) %dbg_enable, %"class.hls::directio<ap_uint<3>, 1>"* noalias nonnull dereferenceable(1) %dbg_state) local_unnamed_addr #0 {
entry:
  %m_axis_tx_copy.data = alloca i32, align 512
  %m_axis_tx_copy.keep = alloca i4, align 512
  %m_axis_tx_copy.strb = alloca i4, align 512
  %m_axis_tx_copy.last = alloca i1, align 512
  %dbg_lfm_i_copy = alloca i16, align 512
  %dbg_lfm_q_copy = alloca i16, align 512
  %dbg_tx_sel_copy = alloca i2, align 512
  %dbg_tx_active_copy = alloca i4, align 512
  %dbg_chirp_count_copy = alloca i16, align 512
  %dbg_sample_count_copy = alloca i16, align 512
  %dbg_chirp_start_copy = alloca i1, align 512
  %dbg_chirp_end_copy = alloca i1, align 512
  %dbg_enable_copy = alloca i1, align 512
  %dbg_state_copy = alloca i3, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %m_axis_tx, i32* nonnull align 512 %m_axis_tx_copy.data, i4* nonnull align 512 %m_axis_tx_copy.keep, i4* nonnull align 512 %m_axis_tx_copy.strb, i1* nonnull align 512 %m_axis_tx_copy.last, %"class.hls::directio<ap_int<16>, 1>"* nonnull %dbg_lfm_i, i16* nonnull align 512 %dbg_lfm_i_copy, %"class.hls::directio<ap_int<16>, 1>"* nonnull %dbg_lfm_q, i16* nonnull align 512 %dbg_lfm_q_copy, %"class.hls::directio<ap_uint<2>, 1>"* nonnull %dbg_tx_sel, i2* nonnull align 512 %dbg_tx_sel_copy, %"class.hls::directio<ap_uint<4>, 1>"* nonnull %dbg_tx_active, i4* nonnull align 512 %dbg_tx_active_copy, %"class.hls::directio<ap_int<16>, 1>"* nonnull %dbg_chirp_count, i16* nonnull align 512 %dbg_chirp_count_copy, %"class.hls::directio<ap_int<16>, 1>"* nonnull %dbg_sample_count, i16* nonnull align 512 %dbg_sample_count_copy, %"class.hls::directio<ap_uint<1>, 1>"* nonnull %dbg_chirp_start, i1* nonnull align 512 %dbg_chirp_start_copy, %"class.hls::directio<ap_uint<1>, 1>"* nonnull %dbg_chirp_end, i1* nonnull align 512 %dbg_chirp_end_copy, %"class.hls::directio<ap_uint<1>, 1>"* nonnull %dbg_enable, i1* nonnull align 512 %dbg_enable_copy, %"class.hls::directio<ap_uint<3>, 1>"* nonnull %dbg_state, i3* nonnull align 512 %dbg_state_copy)
  call void @apatb_lfm_tdm_gen_hw(i32* %m_axis_tx_copy.data, i4* %m_axis_tx_copy.keep, i4* %m_axis_tx_copy.strb, i1* %m_axis_tx_copy.last, i16* %dbg_lfm_i_copy, i16* %dbg_lfm_q_copy, i2* %dbg_tx_sel_copy, i4* %dbg_tx_active_copy, i16* %dbg_chirp_count_copy, i16* %dbg_sample_count_copy, i1* %dbg_chirp_start_copy, i1* %dbg_chirp_end_copy, i1* %dbg_enable_copy, i3* %dbg_state_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %m_axis_tx, i32* %m_axis_tx_copy.data, i4* %m_axis_tx_copy.keep, i4* %m_axis_tx_copy.strb, i1* %m_axis_tx_copy.last, %"class.hls::directio<ap_int<16>, 1>"* %dbg_lfm_i, i16* %dbg_lfm_i_copy, %"class.hls::directio<ap_int<16>, 1>"* %dbg_lfm_q, i16* %dbg_lfm_q_copy, %"class.hls::directio<ap_uint<2>, 1>"* %dbg_tx_sel, i2* %dbg_tx_sel_copy, %"class.hls::directio<ap_uint<4>, 1>"* %dbg_tx_active, i4* %dbg_tx_active_copy, %"class.hls::directio<ap_int<16>, 1>"* %dbg_chirp_count, i16* %dbg_chirp_count_copy, %"class.hls::directio<ap_int<16>, 1>"* %dbg_sample_count, i16* %dbg_sample_count_copy, %"class.hls::directio<ap_uint<1>, 1>"* %dbg_chirp_start, i1* %dbg_chirp_start_copy, %"class.hls::directio<ap_uint<1>, 1>"* %dbg_chirp_end, i1* %dbg_chirp_end_copy, %"class.hls::directio<ap_uint<1>, 1>"* %dbg_enable, i1* %dbg_enable_copy, %"class.hls::directio<ap_uint<3>, 1>"* %dbg_state, i3* %dbg_state_copy)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_uint<2>, 1>"* noalias, i2* noalias align 512, %"class.hls::directio<ap_uint<4>, 1>"* noalias, i4* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<3>, 1>"* noalias, i3* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio.51"(i16* align 512 %2, %"class.hls::directio<ap_int<16>, 1>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio.51"(i16* align 512 %4, %"class.hls::directio<ap_int<16>, 1>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<2>, 1>.hls::directio.72"(i2* align 512 %6, %"class.hls::directio<ap_uint<2>, 1>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<4>, 1>.hls::directio"(i4* align 512 %8, %"class.hls::directio<ap_uint<4>, 1>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio.51"(i16* align 512 %10, %"class.hls::directio<ap_int<16>, 1>"* %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio.51"(i16* align 512 %12, %"class.hls::directio<ap_int<16>, 1>"* %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio.21"(i1* align 512 %14, %"class.hls::directio<ap_uint<1>, 1>"* %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio.21"(i1* align 512 %16, %"class.hls::directio<ap_uint<1>, 1>"* %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio.21"(i1* align 512 %18, %"class.hls::directio<ap_uint<1>, 1>"* %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<3>, 1>.hls::directio"(i3* align 512 %20, %"class.hls::directio<ap_uint<3>, 1>"* %19)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
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

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<2>, 1>.hls::directio"(%"class.hls::directio<ap_uint<2>, 1>"* noalias %dst, i2* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_uint<2>, 1>"* %dst, null
  %1 = icmp eq i2* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<2>, 1>"(%"class.hls::directio<ap_uint<2>, 1>"* nonnull %dst, i2* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<2>, 1>"(%"class.hls::directio<ap_uint<2>, 1>"* noalias, i2* noalias align 512) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<2>, 1>"
  %3 = alloca i2
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i2* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i2* %3 to i8*
  %7 = bitcast i2* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = bitcast i2* %3 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i2
  %11 = call i2 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<2>, 1>s.i2"(i2 %10)
  %oldret3 = insertvalue %"struct.ssdm_int<2, false>" undef, i2 %11, 0
  %oldret2 = insertvalue %"struct.ap_int_base<2, false>" undef, %"struct.ssdm_int<2, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<2>" undef, %"struct.ap_int_base<2, false>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_uint<2>, 1>" undef, %"struct.ap_uint<2>" %oldret1, 0
  store %"class.hls::directio<ap_uint<2>, 1>" %oldret, %"class.hls::directio<ap_uint<2>, 1>"* %2
  %12 = bitcast %"class.hls::directio<ap_uint<2>, 1>"* %2 to i8*
  %13 = bitcast %"class.hls::directio<ap_uint<2>, 1>"* %0 to i8*
  call void @fpga_direct_store_1(i8* %12, i8* %13)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<4>, 1>.hls::directio"(i4* noalias align 512 %dst, %"class.hls::directio<ap_uint<4>, 1>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i4* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_uint<4>, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<4>, 1>"(i4* nonnull align 512 %dst, %"class.hls::directio<ap_uint<4>, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<4>, 1>"(i4* noalias align 512, %"class.hls::directio<ap_uint<4>, 1>"* noalias) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<4>, 1>"
  %3 = alloca i4
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_uint<4>, 1>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_uint<4>, 1>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_uint<4>, 1>"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_uint<4>, 1>", %"class.hls::directio<ap_uint<4>, 1>"* %2
  %9 = call i4 @"_llvm.fpga.pack.bits.i4.s_class.hls::directio<ap_uint<4>, 1>s"(%"class.hls::directio<ap_uint<4>, 1>" %8)
  store i4 %9, i4* %3
  %10 = bitcast i4* %3 to i8*
  %11 = bitcast i4* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<3>, 1>.hls::directio"(i3* noalias align 512 %dst, %"class.hls::directio<ap_uint<3>, 1>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i3* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_uint<3>, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<3>, 1>"(i3* nonnull align 512 %dst, %"class.hls::directio<ap_uint<3>, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<3>, 1>"(i3* noalias align 512, %"class.hls::directio<ap_uint<3>, 1>"* noalias) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<3>, 1>"
  %3 = alloca i3
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_uint<3>, 1>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_uint<3>, 1>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_uint<3>, 1>"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_uint<3>, 1>", %"class.hls::directio<ap_uint<3>, 1>"* %2
  %9 = call i3 @"_llvm.fpga.pack.bits.i3.s_class.hls::directio<ap_uint<3>, 1>s"(%"class.hls::directio<ap_uint<3>, 1>" %8)
  store i3 %9, i3* %3
  %10 = bitcast i3* %3 to i8*
  %11 = bitcast i3* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_uint<2>, 1>"* noalias, i2* noalias align 512, %"class.hls::directio<ap_uint<4>, 1>"* noalias, i4* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<3>, 1>"* noalias, i3* noalias align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.90"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %1, i16* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %3, i16* align 512 %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<2>, 1>.hls::directio"(%"class.hls::directio<ap_uint<2>, 1>"* %5, i2* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<4>, 1>.hls::directio.61"(%"class.hls::directio<ap_uint<4>, 1>"* %7, i4* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %9, i16* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %11, i16* align 512 %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* %13, i1* align 512 %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* %15, i1* align 512 %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* %17, i1* align 512 %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<3>, 1>.hls::directio.10"(%"class.hls::directio<ap_uint<3>, 1>"* %19, i3* align 512 %20)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<3>, 1>.hls::directio.10"(%"class.hls::directio<ap_uint<3>, 1>"* noalias %dst, i3* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_uint<3>, 1>"* %dst, null
  %1 = icmp eq i3* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<3>, 1>.13"(%"class.hls::directio<ap_uint<3>, 1>"* nonnull %dst, i3* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<3>, 1>.13"(%"class.hls::directio<ap_uint<3>, 1>"* noalias, i3* noalias align 512) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<3>, 1>"
  %3 = alloca i3
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i3* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i3* %3 to i8*
  %7 = bitcast i3* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = bitcast i3* %3 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i3
  %11 = call i3 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<3>, 1>s.i3"(i3 %10)
  %oldret3 = insertvalue %"struct.ssdm_int<3, false>" undef, i3 %11, 0
  %oldret2 = insertvalue %"struct.ap_int_base<3, false>" undef, %"struct.ssdm_int<3, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<3>" undef, %"struct.ap_int_base<3, false>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_uint<3>, 1>" undef, %"struct.ap_uint<3>" %oldret1, 0
  store %"class.hls::directio<ap_uint<3>, 1>" %oldret, %"class.hls::directio<ap_uint<3>, 1>"* %2
  %12 = bitcast %"class.hls::directio<ap_uint<3>, 1>"* %2 to i8*
  %13 = bitcast %"class.hls::directio<ap_uint<3>, 1>"* %0 to i8*
  call void @fpga_direct_store_1(i8* %12, i8* %13)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i3 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<3>, 1>s.i3"(i3 %A) #7 {
  ret i3 %A
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i3 @"_llvm.fpga.pack.bits.i3.s_class.hls::directio<ap_uint<3>, 1>s"(%"class.hls::directio<ap_uint<3>, 1>" %A) #7 {
  %A.0 = extractvalue %"class.hls::directio<ap_uint<3>, 1>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<3>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<3, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<3, false>" %A.0.0.0, 0
  ret i3 %A.0.0.0.0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio.21"(i1* noalias align 512 %dst, %"class.hls::directio<ap_uint<1>, 1>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_uint<1>, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1>, 1>.24"(i1* nonnull align 512 %dst, %"class.hls::directio<ap_uint<1>, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1>, 1>.24"(i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<1>, 1>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_uint<1>, 1>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_uint<1>, 1>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_uint<1>, 1>"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_uint<1>, 1>", %"class.hls::directio<ap_uint<1>, 1>"* %2
  %9 = call i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<ap_uint<1>, 1>s"(%"class.hls::directio<ap_uint<1>, 1>" %8)
  store i1 %9, i1* %3
  %10 = bitcast i1* %3 to i8*
  %11 = bitcast i1* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<ap_uint<1>, 1>s"(%"class.hls::directio<ap_uint<1>, 1>" %A) #7 {
  %A.0 = extractvalue %"class.hls::directio<ap_uint<1>, 1>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<1>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.0.0, 0
  ret i1 %A.0.0.0.0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* noalias %dst, i1* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_uint<1>, 1>"* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1>, 1>.32"(%"class.hls::directio<ap_uint<1>, 1>"* nonnull %dst, i1* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1>, 1>.32"(%"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<1>, 1>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %3 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = bitcast i1* %3 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %11 = call i1 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<1>, 1>s.i1"(i1 %10)
  %oldret3 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %11, 0
  %oldret2 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_uint<1>, 1>" undef, %"struct.ap_uint<1>" %oldret1, 0
  store %"class.hls::directio<ap_uint<1>, 1>" %oldret, %"class.hls::directio<ap_uint<1>, 1>"* %2
  %12 = bitcast %"class.hls::directio<ap_uint<1>, 1>"* %2 to i8*
  %13 = bitcast %"class.hls::directio<ap_uint<1>, 1>"* %0 to i8*
  call void @fpga_direct_store_1(i8* %12, i8* %13)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<1>, 1>s.i1"(i1 %A) #7 {
  ret i1 %A
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* noalias %dst, i16* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_int<16>, 1>"* %dst, null
  %1 = icmp eq i16* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_int<16>, 1>.46"(%"class.hls::directio<ap_int<16>, 1>"* nonnull %dst, i16* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_int<16>, 1>.46"(%"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_int<16>, 1>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_direct_valid_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %3 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_direct_load_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %3
  %9 = call i16 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_int<16>, 1>s.i16"(i16 %8)
  %oldret3 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %9, 0
  %oldret2 = insertvalue %"struct.ap_int_base<16, true>" undef, %"struct.ssdm_int<16, true>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_int<16>" undef, %"struct.ap_int_base<16, true>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_int<16>, 1>" undef, %"struct.ap_int<16>" %oldret1, 0
  store %"class.hls::directio<ap_int<16>, 1>" %oldret, %"class.hls::directio<ap_int<16>, 1>"* %2
  %10 = bitcast %"class.hls::directio<ap_int<16>, 1>"* %2 to i8*
  %11 = bitcast %"class.hls::directio<ap_int<16>, 1>"* %0 to i8*
  call void @fpga_direct_store_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i16 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_int<16>, 1>s.i16"(i16 %A) #7 {
  ret i16 %A
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio.51"(i16* noalias align 512 %dst, %"class.hls::directio<ap_int<16>, 1>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i16* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_int<16>, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_int<16>, 1>.54"(i16* nonnull align 512 %dst, %"class.hls::directio<ap_int<16>, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_int<16>, 1>.54"(i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_int<16>, 1>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_int<16>, 1>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_int<16>, 1>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_int<16>, 1>"* %1 to i8*
  call void @fpga_direct_load_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_int<16>, 1>", %"class.hls::directio<ap_int<16>, 1>"* %2
  %9 = call i16 @"_llvm.fpga.pack.bits.i16.s_class.hls::directio<ap_int<16>, 1>s"(%"class.hls::directio<ap_int<16>, 1>" %8)
  store i16 %9, i16* %3
  %10 = bitcast i16* %3 to i8*
  %11 = bitcast i16* %0 to i8*
  call void @fpga_direct_store_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i16 @"_llvm.fpga.pack.bits.i16.s_class.hls::directio<ap_int<16>, 1>s"(%"class.hls::directio<ap_int<16>, 1>" %A) #7 {
  %A.0 = extractvalue %"class.hls::directio<ap_int<16>, 1>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_int<16>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<16, true>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.0, 0
  ret i16 %A.0.0.0.0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<4>, 1>.hls::directio.61"(%"class.hls::directio<ap_uint<4>, 1>"* noalias %dst, i4* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_uint<4>, 1>"* %dst, null
  %1 = icmp eq i4* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<4>, 1>.64"(%"class.hls::directio<ap_uint<4>, 1>"* nonnull %dst, i4* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<4>, 1>.64"(%"class.hls::directio<ap_uint<4>, 1>"* noalias, i4* noalias align 512) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<4>, 1>"
  %3 = alloca i4
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i4* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i4* %3 to i8*
  %7 = bitcast i4* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = bitcast i4* %3 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i4
  %11 = call i4 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<4>, 1>s.i4"(i4 %10)
  %oldret3 = insertvalue %"struct.ssdm_int<4, false>" undef, i4 %11, 0
  %oldret2 = insertvalue %"struct.ap_int_base<4, false>" undef, %"struct.ssdm_int<4, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<4>" undef, %"struct.ap_int_base<4, false>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_uint<4>, 1>" undef, %"struct.ap_uint<4>" %oldret1, 0
  store %"class.hls::directio<ap_uint<4>, 1>" %oldret, %"class.hls::directio<ap_uint<4>, 1>"* %2
  %12 = bitcast %"class.hls::directio<ap_uint<4>, 1>"* %2 to i8*
  %13 = bitcast %"class.hls::directio<ap_uint<4>, 1>"* %0 to i8*
  call void @fpga_direct_store_1(i8* %12, i8* %13)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i4 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<4>, 1>s.i4"(i4 %A) #7 {
  ret i4 %A
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i4 @"_llvm.fpga.pack.bits.i4.s_class.hls::directio<ap_uint<4>, 1>s"(%"class.hls::directio<ap_uint<4>, 1>" %A) #7 {
  %A.0 = extractvalue %"class.hls::directio<ap_uint<4>, 1>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<4>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<4, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<4, false>" %A.0.0.0, 0
  ret i4 %A.0.0.0.0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<2>, 1>.hls::directio.72"(i2* noalias align 512 %dst, %"class.hls::directio<ap_uint<2>, 1>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i2* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_uint<2>, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<2>, 1>.75"(i2* nonnull align 512 %dst, %"class.hls::directio<ap_uint<2>, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<2>, 1>.75"(i2* noalias align 512, %"class.hls::directio<ap_uint<2>, 1>"* noalias) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<2>, 1>"
  %3 = alloca i2
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_uint<2>, 1>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_uint<2>, 1>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_uint<2>, 1>"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_uint<2>, 1>", %"class.hls::directio<ap_uint<2>, 1>"* %2
  %9 = call i2 @"_llvm.fpga.pack.bits.i2.s_class.hls::directio<ap_uint<2>, 1>s"(%"class.hls::directio<ap_uint<2>, 1>" %8)
  store i2 %9, i2* %3
  %10 = bitcast i2* %3 to i8*
  %11 = bitcast i2* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i2 @"_llvm.fpga.pack.bits.i2.s_class.hls::directio<ap_uint<2>, 1>s"(%"class.hls::directio<ap_uint<2>, 1>" %A) #7 {
  %A.0 = extractvalue %"class.hls::directio<ap_uint<2>, 1>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<2>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<2, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<2, false>" %A.0.0.0, 0
  ret i2 %A.0.0.0.0
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i2 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<2>, 1>s.i2"(i2 %A) #7 {
  ret i2 %A
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.90"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.93"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.93"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
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

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_lfm_tdm_gen_hw(i32*, i4*, i4*, i1*, i16*, i16*, i2*, i4*, i16*, i16*, i1*, i1*, i1*, i3*)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_uint<2>, 1>"* noalias, i2* noalias align 512, %"class.hls::directio<ap_uint<4>, 1>"* noalias, i4* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_int<16>, 1>"* noalias, i16* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<1>, 1>"* noalias, i1* noalias align 512, %"class.hls::directio<ap_uint<3>, 1>"* noalias, i3* noalias align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.90"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %1, i16* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %3, i16* align 512 %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<2>, 1>.hls::directio"(%"class.hls::directio<ap_uint<2>, 1>"* %5, i2* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<4>, 1>.hls::directio.61"(%"class.hls::directio<ap_uint<4>, 1>"* %7, i4* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %9, i16* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_int<16>, 1>.hls::directio"(%"class.hls::directio<ap_int<16>, 1>"* %11, i16* align 512 %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* %13, i1* align 512 %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* %15, i1* align 512 %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1>, 1>.hls::directio"(%"class.hls::directio<ap_uint<1>, 1>"* %17, i1* align 512 %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<3>, 1>.hls::directio.10"(%"class.hls::directio<ap_uint<3>, 1>"* %19, i3* align 512 %20)
  ret void
}

declare void @lfm_tdm_gen_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull, %"class.hls::directio<ap_uint<2>, 1>"* noalias nonnull, %"class.hls::directio<ap_uint<4>, 1>"* noalias nonnull, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull, %"class.hls::directio<ap_int<16>, 1>"* noalias nonnull, %"class.hls::directio<ap_uint<1>, 1>"* noalias nonnull, %"class.hls::directio<ap_uint<1>, 1>"* noalias nonnull, %"class.hls::directio<ap_uint<1>, 1>"* noalias nonnull, %"class.hls::directio<ap_uint<3>, 1>"* noalias nonnull)

define void @lfm_tdm_gen_hw_stub_wrapper(i32*, i4*, i4*, i1*, i16*, i16*, i2*, i4*, i16*, i16*, i1*, i1*, i1*, i3*) #8 {
entry:
  %14 = call i8* @malloc(i64 12)
  %15 = bitcast i8* %14 to %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"*
  %16 = call i8* @malloc(i64 2)
  %17 = bitcast i8* %16 to %"class.hls::directio<ap_int<16>, 1>"*
  %18 = call i8* @malloc(i64 2)
  %19 = bitcast i8* %18 to %"class.hls::directio<ap_int<16>, 1>"*
  %20 = call i8* @malloc(i64 1)
  %21 = bitcast i8* %20 to %"class.hls::directio<ap_uint<2>, 1>"*
  %22 = call i8* @malloc(i64 1)
  %23 = bitcast i8* %22 to %"class.hls::directio<ap_uint<4>, 1>"*
  %24 = call i8* @malloc(i64 2)
  %25 = bitcast i8* %24 to %"class.hls::directio<ap_int<16>, 1>"*
  %26 = call i8* @malloc(i64 2)
  %27 = bitcast i8* %26 to %"class.hls::directio<ap_int<16>, 1>"*
  %28 = call i8* @malloc(i64 1)
  %29 = bitcast i8* %28 to %"class.hls::directio<ap_uint<1>, 1>"*
  %30 = call i8* @malloc(i64 1)
  %31 = bitcast i8* %30 to %"class.hls::directio<ap_uint<1>, 1>"*
  %32 = call i8* @malloc(i64 1)
  %33 = bitcast i8* %32 to %"class.hls::directio<ap_uint<1>, 1>"*
  %34 = call i8* @malloc(i64 1)
  %35 = bitcast i8* %34 to %"class.hls::directio<ap_uint<3>, 1>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %15, i32* %0, i4* %1, i4* %2, i1* %3, %"class.hls::directio<ap_int<16>, 1>"* %17, i16* %4, %"class.hls::directio<ap_int<16>, 1>"* %19, i16* %5, %"class.hls::directio<ap_uint<2>, 1>"* %21, i2* %6, %"class.hls::directio<ap_uint<4>, 1>"* %23, i4* %7, %"class.hls::directio<ap_int<16>, 1>"* %25, i16* %8, %"class.hls::directio<ap_int<16>, 1>"* %27, i16* %9, %"class.hls::directio<ap_uint<1>, 1>"* %29, i1* %10, %"class.hls::directio<ap_uint<1>, 1>"* %31, i1* %11, %"class.hls::directio<ap_uint<1>, 1>"* %33, i1* %12, %"class.hls::directio<ap_uint<3>, 1>"* %35, i3* %13)
  call void @lfm_tdm_gen_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %15, %"class.hls::directio<ap_int<16>, 1>"* %17, %"class.hls::directio<ap_int<16>, 1>"* %19, %"class.hls::directio<ap_uint<2>, 1>"* %21, %"class.hls::directio<ap_uint<4>, 1>"* %23, %"class.hls::directio<ap_int<16>, 1>"* %25, %"class.hls::directio<ap_int<16>, 1>"* %27, %"class.hls::directio<ap_uint<1>, 1>"* %29, %"class.hls::directio<ap_uint<1>, 1>"* %31, %"class.hls::directio<ap_uint<1>, 1>"* %33, %"class.hls::directio<ap_uint<3>, 1>"* %35)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %15, i32* %0, i4* %1, i4* %2, i1* %3, %"class.hls::directio<ap_int<16>, 1>"* %17, i16* %4, %"class.hls::directio<ap_int<16>, 1>"* %19, i16* %5, %"class.hls::directio<ap_uint<2>, 1>"* %21, i2* %6, %"class.hls::directio<ap_uint<4>, 1>"* %23, i4* %7, %"class.hls::directio<ap_int<16>, 1>"* %25, i16* %8, %"class.hls::directio<ap_int<16>, 1>"* %27, i16* %9, %"class.hls::directio<ap_uint<1>, 1>"* %29, i1* %10, %"class.hls::directio<ap_uint<1>, 1>"* %31, i1* %11, %"class.hls::directio<ap_uint<1>, 1>"* %33, i1* %12, %"class.hls::directio<ap_uint<3>, 1>"* %35, i3* %13)
  call void @free(i8* %14)
  call void @free(i8* %16)
  call void @free(i8* %18)
  call void @free(i8* %20)
  call void @free(i8* %22)
  call void @free(i8* %24)
  call void @free(i8* %26)
  call void @free(i8* %28)
  call void @free(i8* %30)
  call void @free(i8* %32)
  call void @free(i8* %34)
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

declare i1 @fpga_direct_valid_2(i8*)

declare void @fpga_direct_store_2(i8*, i8*)

declare void @fpga_direct_load_2(i8*, i8*)

declare i1 @fpga_direct_valid_1(i8*)

declare void @fpga_direct_store_1(i8*, i8*)

declare void @fpga_direct_load_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="directiocpy_hls" }
attributes #6 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { alwaysinline nounwind readnone willreturn }
attributes #8 = { "fpga.wrapper.func"="stub" }

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
