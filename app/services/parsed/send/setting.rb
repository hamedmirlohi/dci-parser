module Parsed
  module Send
    class Setting < Struct.new(:payload)
      def null_set_off0
        payload.at(0) & 0xFFFF
      end

      def arb_req_set_off1
        payload.at(0) >> 16
      end

      def access_control_set_off6
        payload.at(3)
      end

      def access_control_set_off7
      end

      def access_control_set_off8
        payload.at(4)
      end

      def access_control_set_off9
      end

      def pmc_handshake_ack_set_off10
        payload.at(5) & 0x1
      end

      def pmc_handshake_en_set_off10
        (payload.at(5) >> 2) & 0x1
      end

      def outband_padding_set_off10
        (payload.at(5) >> 4) & 0x1
      end

      def outband_packing_set_off10
        (payload.at(5) >> 5) & 0x1
      end
    end
  end
end
