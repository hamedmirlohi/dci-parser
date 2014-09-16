class FileParser
  attr_accessor :file, :description

  def initialize(file)
    self.file = file
    self.description = YAML.load_file Rails.root.join('app/services/parsed/description.yml')
  end

  def call
    time = nil
    current_packet = nil
    counter = 0
    sent = []
    received = []

    file.content.each_line do |line|
      if matched = /\A@\s*(\d+)/.match(line)
        time = matched[1]
        current_packet = nil
        counter = 0
        next
      end

      if /send/.match(line)
        current_packet = SentPacket.new time: time, parsed_file: file
        sent.push current_packet
        next
      end

      if /receive/.match(line)
        current_packet = ReceivedPacket.new time: time, parsed_file: file
        received.push current_packet
        next
      end

      if current_packet.present? && line.present?
        value = line.strip.to_i(16)
        current_packet.padding = 1 if counter == 0 && (value / 2**31 == 1)
        current_packet.payloads << Payload.new(value: value, index: counter)
        counter += 1
      end
    end

    { send: sent, receive: received }.each do |type, packets|
      packets.each do |packet|
        parsed = Parsed::Packet.create(type, packet.payloads.map(&:value))
        pairs = parsed.class.name.underscore.split('/').reduce(description) do |memo, e|
          memo[e]
        end.map do |e|
          [e, parsed.send(e)]
        end
        packet.assign_attributes(Hash[pairs])
        packet.save!
      end
    end
  end
end
