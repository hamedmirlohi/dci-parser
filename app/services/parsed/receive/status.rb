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
        payload.at(3) >> 15
      end
      
      def cltap
        payload.at(3) >> 15
      end

      def S0Ix
        payload.at(3) >> 15
      end

      def handshake
        payload.at(3) >> 15
      end

      def host_port
        payload.at(3) >> 15
      end

      def protocol_E
        payload.at(3) >> 15
      end

      def discard_bssb
        payload.at(3) >> 15
      end

      def discard_IOSF
        payload.at(3) >> 15
      end

      def discard_bridge
        payload.at(3) >> 15
      end

      def latch_bridge
        payload.at(3) >> 15
      end

      def prdy
        payload.at(3) >> 15
      end

      def preq
        payload.at(3) >> 15
      end

      def tap_ready
        payload.at(3) >> 15
      end

      def cpu_pwr_good
        payload.at(3) >> 15
      end

      def core_pwrgood
        payload.at(3) >> 15
      end

      def low_pow_state
        payload.at(3) >> 15
      end

      def system_reset
        payload.at(3) >> 15
      end

      def latch_sys_state
        payload.at(3) >> 15
      end

      def prep_type
        payload.at(3) >> 15
      end

      def boot_type
        payload.at(3) >> 15
      end

      def dbc_out
        payload.at(3) >> 15
      end

      def dbc_in
        payload.at(3) >> 15
      end

      def exi_stat
        payload.at(3) >> 15
      end

      def handler_id
        payload.at(3) >> 15
      end

      def jtag_muxsel
        payload.at(3) >> 15
      end

      def enable_jtag
        payload.at(3) >> 15
      end

      def disable_jtag
        payload.at(3) >> 15
      end

      def free_run_clk
        payload.at(3) >> 15
      end

      def flush
        payload.at(3) >> 15
      end

      def force_wb_t_16
        payload.at(3) >> 15
      end

      def force_st_t_16
        payload.at(3) >> 15
      end

      def force_wb_16
        payload.at(3) >> 15
      end

      def force_st_16
        payload.at(3) >> 15
      end

      def duty_cycle
        payload.at(3) >> 15
      end

      def div_1_2_3_4
        payload.at(3) >> 15
      end

      def ten_n_first
        payload.at(3) >> 15
      end

      def tdo_recovery
        payload.at(3) >> 15
      end

      def jtag_chain
        payload.at(3) >> 15
      end

      def clk_src_18
        payload.at(3) >> 15
      end

      def scan_trig_0
        payload.at(3) >> 15
      end

      def scan_trig_1
        payload.at(3) >> 15
      end

      def scan_trig_2
        payload.at(3) >> 15
      end

      def scan_trig_3
        payload.at(3) >> 15
      end

      def deAssert_trst
        payload.at(3) >> 15
      end

      def assert_preq
        payload.at(3) >> 15
      end

      def reset_button_21
        payload.at(3) >> 15
      end

      def power_button_21
        payload.at(3) >> 15
      end

      def prdy_forwarding
        payload.at(3) >> 15
      end

      def reset_break_21
        payload.at(3) >> 15
      end

      def PWRBRK1_21
        payload.at(3) >> 15
      end

      def PWRBRK2_21
        payload.at(3) >> 15
      end

      def PWRBRK3_21
        payload.at(3) >> 15
      end

      def plat_tap_power
        payload.at(3) >> 15
      end

      def cpu_tap_pow
        payload.at(3) >> 15
      end

      def SI0x_22
        payload.at(3) >> 15
      end

      def m_state_22
        payload.at(3) >> 15
      end

      def platfrom_reset
        payload.at(3) >> 15
      end

      def cpu_warm_rst_22
        payload.at(3) >> 15
      end

      def nc_warm_rst_22
        payload.at(3) >> 15
      end

      def soc_warm_rst_22
        payload.at(3) >> 15
      end

      def jtag_event_22
        payload.at(3) >> 15
      end

      def exi_bridge_22
        payload.at(3) >> 15
      end

      def timeout_22
        payload.at(3) >> 15
      end

      def prdy_22
        payload.at(3) >> 15
      end

      def pkt_cmpl_23
        payload.at(3) >> 15
      end

      def plat_tap_row
        payload.at(3) >> 15
      end

      def cpu_tap_row
        payload.at(3) >> 15
      end

      def SI0x_23
        payload.at(3) >> 15
      end

      def m_state_23
        payload.at(3) >> 15
      end

      def small_core_rst
        payload.at(3) >> 15
      end

      def platform_reset
        payload.at(3) >> 15
      end

      def cpu_warm_rst_23
        payload.at(3) >> 15
      end

      def nc_warm_rst_23
        payload.at(3) >> 15
      end

      def soc_warm_23
        payload.at(3) >> 15
      end

      def jtag_evnt_23
        payload.at(3) >> 15
      end

      def exi_bridge_23
        payload.at(3) >> 15
      end

      def timeout_23
        payload.at(3) >> 15
      end

      def prdy_23
        payload.at(3) >> 15
      end

    end
  end
end
