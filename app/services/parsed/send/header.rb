module Parsed
  module Send
    class Header < Struct.new(:values)
      def type
        {
          0 => :Setting,
          1 => :Message
        }[apply_mask]
      end

      def apply_mask
        (values.first >> 1) & 0x7F
      end
    end
  end
end
