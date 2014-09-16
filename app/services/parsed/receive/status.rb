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
    end
  end
end
