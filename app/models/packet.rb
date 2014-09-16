class Packet < ActiveRecord::Base
  belongs_to :parsed_file

  validates :payload, :index, :time, presence: true
end
