class PacketsController < ApplicationController
  def index
    @packets = Packet.all
    @packets = @packets.where('payload & 7 = ?', params[:cpu].to_i).where(index: 3) if params[:cpu].present?
    @packets = @packets.where(type: 'SentPacket') if params[:sent].present?
    @packets = @packets.where(type: 'ReceivedPacket') if params[:received].present?
  end
end
