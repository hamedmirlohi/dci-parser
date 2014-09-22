module Parsed
  module Receive
    class Status < Struct.new(:payload)
      def arb_req_reg
        payload.at(0) & 0xFFFF
      end

      def arb_grant_reg
        payload.at(0) >> 16
      end

      def fuse_trap_enable
        (payload.at(3) >> 15) & 0x1
      end

      def cltap
        (payload.at(3) >> 14) & 0x1
      end

      def S0Ix
        (payload.at(3) >> 13) & 0x1
      end

      def handshake
        (payload.at(3) >> 12) & 0x1
      end

      def host_port
        (payload.at(3) >> 8) & 0x7
      end

      def protocol_E
        (payload.at(3) >> 3) & 0x1
      end

      def discard_bssb
        (payload.at(3) >> 2) & 0x1
      end

      def discard_IOSF
        (payload.at(3) >> 1) & 0x1
      end

      def discard_bridge
        payload.at(3) & 0x1
      end

      def latch_bridge
        payload.at(3) >> 16
      end

      def prdy
        payload.at(4) & 0x1
      end

      def preq
        (payload.at(4) >> 1) & 0x1
      end

      def tap_ready
        (payload.at(4) >> 2) & 0x1
      end

      def cpu_pwr_good
        (payload.at(4) >> 3) & 0x1
      end

      def core_pwrgood
        (payload.at(4) >> 4) & 0x1
      end

      def low_pow_state
        (payload.at(4) >> 5) & 0x7
      end

      def system_reset
        (payload.at(4) >> 16) & 0x7
      end

      def latch_sys_state
        payload.at(5)
      end

      def prep_type
        (payload.at(6) >> 8) & 0x7F
      end

      def boot_type
        payload.at(6) & 0xFF
      end

      def dbc_out
        (payload.at(6) >> 24) & 0xFF
      end

      def dbc_in
        (payload.at(6) >> 16) & 0xFF
      end

      def exi_stat
        payload.at(7) & 0xFFFF
      end

      def handler_id
        payload.at(7) >> 16
      end

      def jtag_muxsel
        payload.at(8) & 0xF
      end

      def enable_jtag
        (payload.at(8) >> 4) & 0x1
      end

      def disable_jtag
        (payload.at(8) >> 5) & 0x1
      end

      def free_run_clk
        (payload.at(8) >> 8) & 0x1
      end

      def flush
        (payload.at(8) >> 9) & 0x1
      end

      def force_wb_t_16
        (payload.at(8) >> 11) & 0x1
      end

      def force_st_t_16
        (payload.at(8) >> 12) & 0x1
      end

      def force_wb_16
        (payload.at(8) >> 14) & 0x1
      end

      def force_st_16
        (payload.at(8) >> 15) & 0x1
      end

      def duty_cycle
        (payload.at(8) >> 17) & 0x3
      end

      def div_1_2_3_4
        (payload.at(8) >> 19) & 0x3
      end

      def ten_n_first
        (payload.at(8) >> 21) & 0x3
      end

      def tdo_recovery
        (payload.at(8) >> 23) & 0x3
      end

      def jtag_chain
        (payload.at(8) >> 28) & 0xF
      end

      def clk_src_18
        payload.at(9) & 0x1
      end

      def scan_trig_0
        (payload.at(9) >> 16) & 0xF
      end

      def scan_trig_1
        (payload.at(9) >> 20) & 0xF
      end

      def scan_trig_2
        (payload.at(9) >> 24) & 0xF
      end

      def scan_trig_3
        (payload.at(9) >> 28) & 0xF
      end

      def deAssert_trst
        (payload.at(10) >> 16) & 0x1
      end

      def assert_preq
        (payload.at(10) >> 17) & 0x1
      end

      def reset_button_21
        (payload.at(10) >> 18) & 0x1
      end

      def power_button_21
        (payload.at(10) >> 19) & 0x1
      end

      def prdy_forwarding
        (payload.at(10) >> 20) & 0x3
      end

      def reset_break_21
        (payload.at(10) >> 24) & 0x3
      end

      def PWRBRK1_21
        (payload.at(10) >> 26) & 0x3
      end

      def PWRBRK2_21
        (payload.at(10) >> 28) & 0x3
      end

      def PWRBRK3_21
        (payload.at(10) >> 30) & 0x3
      end

      def plat_tap_power
        (payload.at(11) >> 1) & 0x1
      end

      def cpu_tap_pow
        (payload.at(11) >> 2) & 0x1
      end

      def SI0x_22
        (payload.at(11) >> 3) & 0x1
      end

      def m_state_22
        (payload.at(11) >> 4) & 0x1
      end

      def platfrom_reset
        (payload.at(11) >> 8) & 0x1
      end

      def cpu_warm_rst_22
        (payload.at(11) >> 9) & 0x1
      end

      def nc_warm_rst_22
        (payload.at(11) >> 10) & 0x1
      end

      def soc_warm_rst_22
        (payload.at(11) >> 11) & 0x1
      end

      def jtag_event_22
        (payload.at(11) >> 12) & 0x1
      end

      def exi_bridge_22
        (payload.at(11) >> 13) & 0x1
      end

      def timeout_22
        (payload.at(11) >> 14) & 0x1
      end

      def prdy_22
        (payload.at(11) >> 15) & 0x1
      end

      def pkt_cmpl_23
        (payload.at(11) >> 16) & 0x1
      end

      def plat_tap_row
        (payload.at(11) >> 17) & 0x1
      end

      def cpu_tap_row
        (payload.at(11) >> 18) & 0x1
      end

      def SI0x_23
        (payload.at(11) >> 19) & 0x1
      end

      def m_state_23
        (payload.at(11) >> 20) & 0x1
      end

      def small_core_rst
        (payload.at(11) >> 21) & 0x1
      end

      def platform_reset
        (payload.at(11) >> 24) & 0x1
      end

      def cpu_warm_rst_23
        (payload.at(11) >> 25) & 0x1
      end

      def nc_warm_rst_23
        (payload.at(11) >> 26) & 0x1
      end

      def soc_warm_23
        (payload.at(11) >> 27) & 0x1
      end

      def jtag_evnt_23
        (payload.at(11) >> 28) & 0x1
      end

      def exi_bridge_23
        (payload.at(11) >> 29) & 0x1
      end

      def timeout_23
        (payload.at(11) >> 30) & 0x1
      end

      def prdy_23
        (payload.at(11) >> 31) & 0x1
      end

    end
  end
end
