class ReceivedPacket < Packet
  def exi
    :receive
  end

  def writeback?
    parsed.is_a? Parsed::Receive::Writeback
  end

  def status?
  	parsed.is_a? Parsed::Receive::Status
  end
end
