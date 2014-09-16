module Parsed
  class Packet < Struct.new(:packet)
    def self.create(exi, packet)
      parsed = new(packet)
      case exi
      when :send
        Parsed::Send::Packet.create(parsed.header, parsed.payload)
      when :receive
        Parsed::Receive::Packet.create(parsed.header, parsed.payload)
      else
        fail NotImplementedError
      end
    end

    def header
      tail = extended_header? ? 1 : 0
      packet[0..tail]
    end

    def payload
      head = extended_header? ? 2 : 1
      packet[head..-1]
    end

    def extended_header?
      packet.first / 2**31 == 1
    end
  end
end
