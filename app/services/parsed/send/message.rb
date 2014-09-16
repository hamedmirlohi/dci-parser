module Parsed
  module Send
    class Message < Struct.new(:payload)
      def tms_state
        payload.at(0) & 0x1
      end

      def tdi_state
        (payload.at(0) >> 1) & 0x1
      end

      def tdo_state
        (payload.at(0) >> 2) & 0x1
      end

      def trigger_state
        (payload.at(0) >> 3) & 0x1
      end
    end
  end
end
