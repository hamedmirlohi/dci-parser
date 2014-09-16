class ParsedFile < ActiveRecord::Base
  has_many :packets, dependent: :destroy

  after_save :populate_packet_data, if: proc { content_changed? }

  def populate_packet_data
    ActiveRecord::Base.transaction do
      packets.destroy_all
      FileParser.new(self).call
    end
  end

  def content=(file)
    filename = file.original_filename
    self.name = filename if name.blank?
    directory = 'public/data'
    path = File.join(directory, filename)
    data = file.read
    File.open(path, 'wb') { |f| f.write(data) }
    super(data)
  end
end
