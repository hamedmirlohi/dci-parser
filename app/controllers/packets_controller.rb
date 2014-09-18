class PacketsController < ApplicationController
  def index
    @packets = Packet.all
    type = { send: 'SentPacket', receive: 'ReceivedPacket' }.with_indifferent_access[params[:exi]]
    @packets = @packets.where(type: type) if type

    @packets = PacketDescription.values.select { |value| params[value].present? }.reduce(@packets) do |memo, value|
      memo.where(value => params[value].to_i(16))
    end
  end
end
