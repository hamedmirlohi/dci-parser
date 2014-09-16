class Packet < ActiveRecord::Base
  belongs_to :parsed_file
  has_many :payloads, inverse_of: :packet, dependent: :destroy

  validates :time, presence: true
end
