class PacketDescription
  HASH = YAML.load_file(Rails.root.join('app/services/parsed/description.yml')).freeze

  def self.lookup(exi, type)
    HASH['parsed'].fetch(exi.to_s, {})[type.to_s]
  end

  def self.values(key: 'parsed', hash: HASH, memo: [])
    if hash[key].is_a? Hash
      hash[key].keys.map { |k| values(key: k, hash: hash[key], memo: memo) }.compact.reduce(:+)
    else
      memo + Array.wrap(hash[key])
    end
  end
end
