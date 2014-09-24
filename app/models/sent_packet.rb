class SentPacket < Packet
  def setting?
  	parsed.is_a? Parsed::Send::Setting
  end

  def message?
    parsed.is_a? Parsed::Send::Message
  end

  def exi
    :send
  end
end
