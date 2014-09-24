class PacketsController < ApplicationController
  def index
    @packets = Packet.includes(:payloads)
    type = { send: 'SentPacket', receive: 'ReceivedPacket' }.with_indifferent_access[params[:exi]]
    @packets = @packets.where(type: type) if type

    @packets = PacketDescription.values.select { |value| params[value].present? }.reduce(@packets) do |memo, value|
      memo.where(value => params[value].to_i(16))
    end

    grouping = Array.wrap(params[:display]).map { |e| "\"packets\".\"#{e}\"" }.join(',')

    @breakdown = @packets.select("#{grouping}, count(id) as total").group(grouping).order('count(id) desc') if grouping.present?
  end
end
