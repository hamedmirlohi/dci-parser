module Parsed
  module Send
    class Setting < Struct.new(:payload)
      def null
        payload.at(0) & 0xFFFF
      end

      def arb_req
        payload.at(0) >> 16
      end

      def access_control_6
        payload.at(3)
      end

      def access_control_7
      end

      def access_control_8
        payload.at(4)
      end

      def access_control_9
      end

      def pmc_handshake_ack
        payload.at(5) & 0x1
      end

      def pmc_handshake_en
        (payload.at(5) >> 2) & 0x1
      end

      def outband_padding
        (payload.at(5) >> 4) & 0x1
      end

      def outband_packing
        (payload.at(5) >> 5) & 0x1
      end
    end
  end
end
