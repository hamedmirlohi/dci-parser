module Parsed
  module Receive
    module Packet
      def self.create(header, payload)
        head = Header.new(header)
        Parsed::Receive.const_get(head.type).new(payload) if head.type
      end
    end
  end
end
