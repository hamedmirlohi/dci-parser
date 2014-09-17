class PacketsController < ApplicationController
  def index
    @packets = Packet.all
    @packets = @packets.where(type: 'SentPacket') if params[:sent].present?
    @packets = @packets.where(type: 'ReceivedPacket') if params[:received].present?
    @packets = @packets.where(null_set_off0: params[:null_set_off0]) if params[:null_set_off0].present?
	@packets = @packets.where(arb_req_set_off1: params[:arb_req_set_off1]) if params[:arb_req_set_off1].present?
    @packets = @packets.where(access_control_set_off6: params[:access_control_set_off6]) if params[:access_control_set_off6].present?
    @packets = @packets.where(access_control_set_off7: params[:access_control_set_off7]) if params[:access_control_set_off7].present?
    @packets = @packets.where(access_control_set_off8: params[:access_control_set_off8]) if params[:access_control_set_off8].present?
    @packets = @packets.where(access_control_set_off9: params[:access_control_set_off9]) if params[:access_control_set_off9].present?
    @packets = @packets.where(pmc_handshake_ack_set_off10: params[:pmc_handshake_ack_set_off10]) if params[:pmc_handshake_ack_set_off10].present?
    @packets = @packets.where(pmc_handshake_en_set_off10: params[:pmc_handshake_en_set_off10]) if params[:pmc_handshake_en_set_off10].present?
    @packets = @packets.where(outband_padding_set_off10: params[:outband_padding_set_off10]) if params[:outband_padding_set_off10].present?
    @packets = @packets.where(outband_packing_set_off10: params[:outband_packing_set_off10]) if params[:outband_packing_set_off10].present?

  end
end
