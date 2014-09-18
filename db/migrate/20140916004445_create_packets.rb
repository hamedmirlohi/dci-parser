class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
      t.references :parsed_file, index: true
      t.string :type
      t.integer :time
      t.boolean :extended_header, null: false, default: false

      [%w(send setting), %w(send message), %w(receive status)].each do |exi, type|
        PacketDescription.lookup(exi, type).each do |column|
          t.integer column, limit: 8
        end
      end

      t.timestamps
    end
  end
end
