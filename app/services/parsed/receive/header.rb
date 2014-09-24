module Parsed
  module Receive
    class Header < Struct.new(:values)
      def type
        {
          0 => :Status,
          1 => :Writeback,
          0x30 => :Trace
        }.fetch(apply_mask, :Null)
      end

      def apply_mask
        (values.first >> 1) & 0x7F
      end
    end
  end
end
