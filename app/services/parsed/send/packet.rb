module Parsed
  module Send
    module Packet
      def self.create(header, payload)
        head = Header.new(header)
        Parsed::Send.const_get(head.type).new(payload) if head.type
      end
    end
  end
end
