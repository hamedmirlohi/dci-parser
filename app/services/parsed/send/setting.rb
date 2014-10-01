module Parsed
  module Send
    class Setting < Struct.new(:payload)
      CLASSIFICATION = {
        null:           0x0000,
        arb_req:        0x0001,
        access_vec0:    0x0006,
        access_vec1:    0x0007,
        access_vec2:    0x0008,
        access_vec3:    0x0009,
        pmc_hand_ack:   0x0010,
        pmc_hand_en:    0x0010,
        outband_pad:    0x0010,
        outband_pack:   0x0010,
        transport:      0x000e,
        jtag_muxsel:    0x0100,
        enable_jtag_s:  0x0100,
        disable_jtag_s: 0x0100,
        free_run_clk:   0x0100,
        flush_wb:       0x0100,
        force_wb_to:    0x0100,
        force_st_to:    0x0100,
        force_wb:       0x0100,
        force_st:       0x0100,
        jtag_clk_src:   0x0101,  
        jtag_duty:      0x0101,
        jtag_second:    0x0101,
        jtag_first:     0x0101,
        jtag_tdo_rec:   0x0101,
        jtag_jtag_chain:0x0101,
        jtag_to_clk_src:0x0102,
        jtag_to_sec_pre:0x0102,
        jtag_to_fir_pre:0x0102,
        scan_trig0:     0x0103,
        scan_trig1:     0x0103,
        scan_trig2:     0x0103,
        scan_trig3:     0x0103,
        jtag_trst:      0x0105,
        jtag_preq:      0x0105,
        jtag_reset:     0x0105,
        jtag_power:     0x0105,
        jtag_prdy:      0x0105,
        jtag_rst_break: 0x0105,
        jtag_pwrbrk1:   0x0105,
        jtag_pwrbrk2:   0x0105,
        jtag_pwrbrk3:   0x0105,
        tag_pkt_comp:   0x0106,
        jtag_tap_pwr:   0x0106,
        jtag_cpu_tap:   0x0106,
        jtag_S0Ix:      0x0106,
        jtag_mState:    0x0106,
        jtag_small_core:0x0106,
        jtag_plat_rst:  0x0106,
        jtag_cpu_warm:  0x0106,
        jtag_nc_warm:   0x0106,
        jtag_soc_warm:  0x0106,
        jtag_handler:   0x0106,
        jtag_exi_bridge:0x0106,
        jtag_timeout:   0x0106,
        jtag_prdy:      0x0106,
      }

      #SETTING ADDR 0X0

      def null
        data_value(:null)
      end

      def arb_req
        data_value(:arb_req)
      end

      def access_vec0
        data_value(:access_vec0)
      end

      def access_vec1
        data_value(:access_vec1)
      end

      def access_vec2
        data_value(:access_vec2)
      end

      def access_vec3
        data_value(:access_vec3)
      end

      def pmc_hand_ack
        data_value(:pmc_hand_ack) { |v| v & 0x1}
      end

      def pmc_hand_en
        data_value(:pmc_hand_en) { |v| v  >> 2 & 0x1}
      end

      def outband_pad
        data_value(:outband_pad) { |v| v  >> 4 & 0x1}
      end

      def outband_pack
        data_value(:outband_pack) { |v| v  >> 5 & 0x1}
      end

      def transport
        data_value(:transport)
      end


      #SETTING ADDR 0X1


      def jtag_muxsel
        data_value(:jtag_muxsel) { |v| v & 0xf}
      end

      def enable_jtag_s
        data_value(:enable_jtag_s) { |v| v  >> 4 & 0x1}
      end

      def disable_jtag_s
        data_value(:disable_jtag_s) { |v| v  >> 5 & 0x1}
      end

      def free_run_clk
        data_value(:free_run_clk) { |v| v  >> 8 & 0x1}
      end

      def flush_wb
        data_value(:flush_wb) { |v| v  >> 9 & 0x1}
      end

      def force_wb_to
        data_value(:force_wb_to) { |v| v  >> 11 & 0x1}
      end

      def force_st_to
        data_value(:force_st_to) { |v| v  >> 12 & 0x1}
      end

      def force_wb
        data_value(:force_wb) { |v| v  >> 14 & 0x1}
      end

      def force_st
        data_value(:force_st) { |v| v  >> 15 & 0x1}
      end

      def jtag_clk_src
        data_value(:jtag_clk_src) { |v| v & 0x1}
      end

      def jtag_duty
        data_value(:jtag_duty) { |v| v  >> 1 & 0x3}
      end

      def jtag_second
        data_value(:jtag_second) { |v| v  >> 3 & 0x3}
      end

      def jtag_first
        data_value(:jtag_first) { |v| v  >> 5 & 0x3}
      end

      def jtag_tdo_rec
        data_value(:jtag_tdo_rec) { |v| v  >> 8 & 0x3}
      end

      def jtag_jtag_chain
        data_value(:jtag_jtag_chain) { |v| v  >> 12 & 0x3}
      end
    


      def jtag_to_clk_src
        data_value(:jtag_to_clk_src) { |v| v & 0x1}
      end

      def jtag_to_sec_pre
        data_value(:jtag_to_sec_pre) { |v| v  >> 3 & 0x3}
      end

      def jtag_to_fir_pre
        data_value(:jtag_to_fir_pre) { |v| v  >> 5 & 0x7}
      end

      def scan_trig0
        data_value(:scan_trig0) { |v| v & 0xf}
      end


      def scan_trig1
        data_value(:scan_trig1) { |v| v  >> 4 & 0xf}
      end

      def scan_trig2
        data_value(:scan_trig2) { |v| v  >> 8 & 0xf}
      end

      def scan_trig3
        data_value(:scan_trig3) { |v| v  >> 12 & 0xf}
      end

      def jtag_trst
        data_value(:jtag_trst) { |v| v & 0x1}
      end

      def jtag_preq
        data_value(:jtag_preq) { |v| v  >> 1 & 0x1}
      end

      def jtag_reset
        data_value(:jtag_reset) { |v| v  >> 2 & 0x1}
      end

      def jtag_power
        data_value(:jtag_power) { |v| v  >> 3 & 0x1}
      end

      def jtag_prdy
        data_value(:jtag_prdy) { |v| v  >> 4 & 0x3}
      end

      def jtag_rst_break
        data_value(:jtag_rst_break) { |v| v  >> 8 & 0x3}
      end

      def jtag_pwrbrk1
        data_value(:jtag_pwrbrk1) { |v| v  >> 10 & 0x3}
      end

      def jtag_pwrbrk2
        data_value(:jtag_pwrbrk2) { |v| v  >> 12 & 0x3}
      end

      def jtag_pwrbrk3
        data_value(:jtag_pwrbrk3) { |v| v  >> 14 & 0x3}
      end

     def jtag_pkt_comp
        data_value(:jtag_pkt_comp) { |v| v & 0x1}
      end

      def jtag_tap_pwr
        data_value(:jtag_tap_pwr) { |v| v  >> 1 & 0x1}
      end

      def jtag_cpu_tap
        data_value(:jtag_cpu_tap) { |v| v  >> 2 & 0x1}
      end

      def jtag_S0Ix
        data_value(:jtag_S0Ix) { |v| v  >> 3 & 0x1}
      end


      def jtag_mState
        data_value(:jtag_mState) { |v| v  >> 4 & 0x1}
      end

      def jtag_small_core
        data_value(:jtag_small_core) { |v| v  >> 5 & 0x1}
      end

      def jtag_plat_rst
        data_value(:jtag_plat_rst) { |v| v  >> 8 & 0x1}
      end

      def jtag_cpu_warm
        data_value(:jtag_cpu_warm) { |v| v  >> 9 & 0x1}
      end

      def jtag_nc_warm
        data_value(:jtag_nc_warm) { |v| v  >> 10 & 0x1}
      end

      def jtag_soc_warm
        data_value(:jtag_soc_warm) { |v| v  >> 11 & 0x1}
      end

      def jtag_handler
        data_value(:jtag_handler) { |v| v  >> 12 & 0x1}
      end

      def jtag_exi_bridge
        data_value(:jtag_exi_bridge) { |v| v  >> 13 & 0x1}
      end


      def jtag_timeout
        data_value(:jtag_timeout) { |v| v  >> 14 & 0x1}
      end

      def jtag_prdy
        data_value(:jtag_prdy) { |v| v  >> 15 & 0x1}
      end

      private

      def extract_from_payload(type)
        match = CLASSIFICATION[type]
        return unless match

        line = payload.find do |p|
          (p & 0xFFFF) == match
        end
        return unless line

        line >> 16
      end

      def data_value(type)
        value = extract_from_payload(type)
        return unless value

        if block_given?
          yield value
        else
          value
        end
      end
    end
  end
end
