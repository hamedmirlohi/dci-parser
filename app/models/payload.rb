class Payload < ActiveRecord::Base
  belongs_to :packet, inverse_of: :payloads
end
