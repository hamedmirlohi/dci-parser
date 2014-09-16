class PacketsController < ApplicationController
  def index
    @packets = Packet.all
    @packets = @packets.where(type: 'SentPacket') if params[:sent].present?
    @packets = @packets.where(type: 'ReceivedPacket') if params[:received].present?
    @packets = @packets.where(null_set_off0: params[:null_set_off0]) if params[:null_set_off0].present?
  end
end
