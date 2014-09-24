class Packet < ActiveRecord::Base
  belongs_to :parsed_file
  has_many :payloads, inverse_of: :packet, dependent: :destroy

  validates :time, presence: true

  %i(status? setting? writeback? message?).each do |name|
    define_method(name) do
      false
    end
  end

  def parsed
    @parsed ||= Parsed::Packet.create(exi, payloads.map(&:value))
  end
end
