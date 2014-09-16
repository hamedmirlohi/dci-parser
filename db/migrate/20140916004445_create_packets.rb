class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
      t.references :parsed_file, index: true
      t.integer :index
      t.integer :payload, limit: 8
      t.string :type
      t.datetime :time

      t.timestamps
    end
  end
end
