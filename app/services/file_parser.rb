class FileParser < Struct.new(:file)
  def call
    time = nil
    current_packet_type = nil
    counter = 0

    file.content.each_line do |line|
      if matched = /\A@\s*(\d+)/.match(line)
        time = matched[1]
        current_packet_type = nil
        counter = 0
        next
      end

      if /send/.match(line)
        current_packet_type = SentPacket
        next
      end

      if /receive/.match(line)
        current_packet_type = ReceivedPacket
        next
      end

      if current_packet_type.present? && line.present?
        current_packet_type.create! time: time, payload: line.strip.to_i(16), index: counter, parsed_file: file
        counter += 1
      end
    end
  end
end
